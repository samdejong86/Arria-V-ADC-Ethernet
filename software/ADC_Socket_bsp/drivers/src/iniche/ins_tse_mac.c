/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2009 Altera Corporation, San Jose, California, USA.           *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
*                                                                             *
******************************************************************************/
#ifdef ALT_INICHE

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <io.h>
#include <os_cpu.h>
#include "ipport.h"

#ifdef UCOS_II  
#include <ucos_ii.h>
#endif

#include "in_utils.h"
#include "netbuf.h"
#include "net.h"
#include "q.h"
#include "ether.h"
#include "system.h"
#include "alt_types.h"

#include "altera_avalon_timer_regs.h"
#include "altera_avalon_sgdma_descriptor.h"
#include "altera_avalon_tse.h"

#include "sys/alt_irq.h"
#include "sys/alt_cache.h"

#include "altera_eth_tse_regs.h"
#include "iniche/altera_eth_tse_iniche.h"
#include "iniche/ins_tse_mac.h"

#include "socket.h"

/* Task includes */
#include "ipport.h"
#include "tcpapp.h"

#ifndef ALT_INICHE
#include "osport.h"
#endif

#ifdef ALT_INICHE
#include <errno.h>
#include "alt_iniche_dev.h"
#endif

ins_tse_info tse[MAXNETS];
extern alt_tse_system_info tse_mac_device[MAXNETS];

alt_u8 number_of_tse_mac = 0;
alt_tse_iniche_dev_driver_data tse_iniche_dev_driver_data[MAXNETS];
extern alt_u8 max_mac_system;

#ifdef ALT_INICHE


/* @Function Description: TSE MAC Driver Open/Initialization routine
 * @API TYPE: Public
 * @Param p_dec     pointer to TSE device instance
 * @Return ENP_HARDWARE on error, otherwise return SUCCESS
 */

error_t altera_eth_tse_init(
    alt_iniche_dev              *p_dev)
{
    int i;
    
    alt_tse_iniche_dev_driver_data *p_driver_data = 0;
    alt_tse_system_info *psys_info = 0;

    #ifdef PRINTIF
        dprintf("altera_eth_tse_init %d\n", p_dev->if_num);
    #endif

    /* Get the pointer to the alt_tse_iniche_dev_driver_data structure from the global array */
    for(i = 0; i < number_of_tse_mac; i++) {
        if(tse_iniche_dev_driver_data[i].p_dev == p_dev) {
            p_driver_data = &tse_iniche_dev_driver_data[i];
        }
    }
    /* If pointer could not found */
    if(p_driver_data == 0) {
        return ENP_HARDWARE;
    }
    
    /* Get the pointer to the alt_tse_system_info structure from the global array */
    for(i = 0; i < max_mac_system; i++) {
        if(tse_mac_device[i].tse_mac_base == p_driver_data->hw_mac_base_addr) {
            psys_info = &tse_mac_device[i];
        }
    }
    /* If pointer could not found */
    if(psys_info == 0) {
        return ENP_HARDWARE;
    }
    
    prep_tse_mac(p_dev->if_num, psys_info + p_driver_data->hw_channel_number);
    
    return SUCCESS;
}
#endif /* ALT_INICHE */



/* @Function Description: TSE MAC Driver Open/Registration routine
 * @API TYPE: Internal
 * @Param index     index of the NET structure associated with TSE instance
 * @Param psys_info pointer to the TSE hardware info structure
 * @Return next index of NET
 */
int prep_tse_mac(int index, alt_tse_system_info *psys_info)
{
    NET ifp;
    dprintf("prep_tse_mac %d\n", index);
    {
        tse[index].sem = 0; /*Tx IDLE*/
        tse[index].tse = (void *)psys_info;

        ifp = nets[index];
        ifp->n_mib->ifAdminStatus = ALTERA_TSE_ADMIN_STATUS_DOWN; /* status = down */
        ifp->n_mib->ifOperStatus =  ALTERA_TSE_ADMIN_STATUS_DOWN;   
        ifp->n_mib->ifLastChange =  cticks * (100/TPS);
        ifp->n_mib->ifPhysAddress = (u_char*)tse[index].mac_addr;
        ifp->n_mib->ifDescr =       "Altera TSE MAC ethernet";
        ifp->n_lnh =                ETHHDR_SIZE; /* ethernet header size. was:14 */
        ifp->n_hal =                ALTERA_TSE_HAL_ADDR_LEN;  /* hardware address length */
        ifp->n_mib->ifType =        ETHERNET;   /* device type */
        ifp->n_mtu =                ALTERA_TSE_MAX_MTU_SIZE;  /* max frame size */
    
        /* install our hardware driver routines */
        ifp->n_init =       tse_mac_init;
        ifp->pkt_send =     NULL;
        ifp->raw_send =     tse_mac_raw_send;
        ifp->n_close =      tse_mac_close;
        ifp->n_stats =      (void(*)(void *, int))tse_mac_stats; 
    
    #ifdef IP_V6
        ifp->n_flags |= (NF_NBPROT | NF_IPV6);
    #else
        ifp->n_flags |= NF_NBPROT;
    #endif
    
        nets[index]->n_mib->ifPhysAddress = (u_char*)tse[index].mac_addr;   /* ptr to MAC address */
    
    #ifdef ALT_INICHE
        /* get the MAC address. */
        get_mac_addr(ifp, (unsigned char *)tse[index].mac_addr);
    #endif /* ALT_INICHE */
    
        /* set cross-pointers between iface and tse structs */
        tse[index].index = index;
        tse[index].netp = ifp;
        ifp->n_local = (void*)(&tse[index]);
    
        index++;
   }
 
   return index;
}



/* @Function Description: TSE MAC Initialization routine. This function opens the
 *                        device handle, configure the callback function and interrupts ,
 *                        for SGDMA TX and SGDMA RX block associated with the TSE MAC,
 *                        Initialize the MAC Registers for the RX FIFO and TX FIFO
 *                        threshold watermarks, initialize the tse device structure,
 *                        set the MAC address of the device and enable the MAC   
 * 
 * @API TYPE: Internal
 * @Param iface index of the NET structure associated with TSE instance
 * @Return 0 if ok, else -1 if error
 */
int tse_mac_init(int iface)
{
   int dat;
   int speed, duplex, result, x;
   int status = SUCCESS;
   
   alt_sgdma_dev *sgdma_tx_dev;
   alt_sgdma_dev *sgdma_rx_dev;
   alt_tse_system_info* tse_hw = (alt_tse_system_info *) tse[iface].tse;
   
   dprintf("[tse_mac_init]\n");
#ifdef PRINTIF
    dprintf("tse_mac_init %d\n", iface);
#endif    

    if (tse_hw->ext_desc_mem == 1) {
        tse[iface].desc = (alt_sgdma_descriptor *) tse_hw->desc_mem_base;
    }
    else {
        unsigned char *temp_desc = (unsigned char *)alt_uncached_malloc((4+ALTERA_TSE_SGDMA_RX_DESC_CHAIN_SIZE)*(sizeof(alt_sgdma_descriptor)));
    
        while ((((alt_u32)temp_desc) % ALTERA_AVALON_SGDMA_DESCRIPTOR_SIZE) != 0)
        {
            temp_desc++;
        }
        tse[iface].desc = (alt_sgdma_descriptor *) temp_desc;
    }

   
   /* Get the Rx and Tx SGDMA addresses */
   sgdma_tx_dev = alt_avalon_sgdma_open(tse_hw->tse_sgdma_tx);
   
   if(!sgdma_tx_dev) {
      dprintf("[altera_eth_tse_init] Error opening TX SGDMA\n");
      return ENP_RESOURCE;
   }
  
   sgdma_rx_dev = alt_avalon_sgdma_open(tse_hw->tse_sgdma_rx);
   if(!sgdma_rx_dev) {
      dprintf("[altera_eth_tse_init] Error opening RX SGDMA\n");
      return ENP_RESOURCE;
   }

   /* Initialize mtip_mac_trans_info structure with values from <system.h>*/
   tse_mac_initTransInfo2(&tse[iface].mi, (int)tse_hw->tse_mac_base,
                                   (unsigned int)sgdma_tx_dev,            
                                   (unsigned int)sgdma_rx_dev,
                                   0);

   /* Reset RX-side SGDMA */
   IOWR_ALTERA_AVALON_SGDMA_CONTROL(tse[iface].mi.rx_sgdma->base,
     ALTERA_AVALON_SGDMA_CONTROL_SOFTWARERESET_MSK);
   IOWR_ALTERA_AVALON_SGDMA_CONTROL(tse[iface].mi.rx_sgdma->base, 0x0);
   
   tse[iface].interruptNR = tse_hw->tse_sgdma_rx_irq;

   /* reset the PHY if necessary */   
   result = getPHYSpeed(tse[iface].mi.base);
   speed = (result >> 1) & 0x07;
   duplex = result & 0x01;
    
   /* reset the mac */ 
   IOWR_ALTERA_TSEMAC_CMD_CONFIG(tse[iface].mi.base,
                             mmac_cc_SW_RESET_mask | 
                             mmac_cc_TX_ENA_mask | 
                             mmac_cc_RX_ENA_mask);
  
   x=0;
   while(IORD_ALTERA_TSEMAC_CMD_CONFIG(tse[iface].mi.base) & 
         ALTERA_TSEMAC_CMD_SW_RESET_MSK) {
     if( x++ > 10000 ) {
       break;
     }
   }
   if(x >= 10000) {
     dprintf("TSEMAC SW reset bit never cleared!\n");
   }

   dat = IORD_ALTERA_TSEMAC_CMD_CONFIG(tse[iface].mi.base);
   if( (dat & 0x03) != 0 ) {
     dprintf("WARN: RX/TX not disabled after reset... missing PHY clock? CMD_CONFIG=0x%08x\n", dat);
   } 
   else {
     dprintf("OK, x=%d, CMD_CONFIG=0x%08x\n", x, dat);
   }
  
    /* Hack code to determine the Channel number <- Someone please fix this ugly code in the future */
    extern alt_u8 mac_group_count;
    extern alt_tse_mac_group *pmac_groups[TSE_MAX_MAC_IN_SYSTEM];
      
    if(tse_hw->use_shared_fifo == 1) {
      int channel_loop = 0;
      int mac_loop = 0;
         
      for (channel_loop = 0; channel_loop < mac_group_count; channel_loop ++) {
        for (mac_loop = 0; mac_loop < pmac_groups[channel_loop]->channel; mac_loop ++) {
          if (pmac_groups[channel_loop]->pmac_info[mac_loop]->psys_info == tse_hw) {
            tse[iface].channel = mac_loop;
          }
        }
      }
    }
    /* End of Hack code */
  
  if(tse_hw->use_shared_fifo == 1) {
      IOWR_ALTERA_MULTI_CHAN_FIFO_SEC_FULL_THRESHOLD(tse_hw->tse_shared_fifo_rx_ctrl_base,tse_hw->tse_shared_fifo_rx_depth);
      IOWR_ALTERA_MULTI_CHAN_FIFO_ALMOST_FULL_THRESHOLD(tse_hw->tse_shared_fifo_rx_ctrl_base,((tse_hw->tse_shared_fifo_rx_depth) - 140));
  }
  else {
      /* Initialize MAC registers */
      IOWR_ALTERA_TSEMAC_FRM_LENGTH(tse[iface].mi.base, ALTERA_TSE_MAC_MAX_FRAME_LENGTH); 
      IOWR_ALTERA_TSEMAC_RX_ALMOST_EMPTY(tse[iface].mi.base, 8);
      IOWR_ALTERA_TSEMAC_RX_ALMOST_FULL(tse[iface].mi.base, 8);
      IOWR_ALTERA_TSEMAC_TX_ALMOST_EMPTY(tse[iface].mi.base, 8);
      IOWR_ALTERA_TSEMAC_TX_ALMOST_FULL(tse[iface].mi.base,  3);
      IOWR_ALTERA_TSEMAC_TX_SECTION_EMPTY(tse[iface].mi.base, tse_hw->tse_tx_depth - 16); //1024/4;  
      IOWR_ALTERA_TSEMAC_TX_SECTION_FULL(tse[iface].mi.base,  0); //32/4; // start transmit when there are 48 bytes
      IOWR_ALTERA_TSEMAC_RX_SECTION_EMPTY(tse[iface].mi.base, tse_hw->tse_rx_depth - 16); //4000/4);
      IOWR_ALTERA_TSEMAC_RX_SECTION_FULL(tse[iface].mi.base,  0);
  }
  
  /* Enable TX shift 16 for removing two bytes from the start of all transmitted frames */ 
  if((ETHHDR_BIAS !=0) && (ETHHDR_BIAS !=2)) {
    dprintf("[tse_mac_init] Error: Unsupported Ethernet Header Bias Value, %d\n",ETHHDR_BIAS);
    return ENP_PARAM;
  }
 
  if(ETHHDR_BIAS == 0) {
    alt_32 temp_reg;
    
    temp_reg = IORD_ALTERA_TSEMAC_TX_CMD_STAT(tse[iface].mi.base) & (~ALTERA_TSEMAC_TX_CMD_STAT_TXSHIFT16_MSK);
    IOWR_ALTERA_TSEMAC_TX_CMD_STAT(tse[iface].mi.base,temp_reg);
 
      /* 
       * check if the MAC supports the 16-bit shift option allowing us
       * to send BIASed frames without copying. Used by the send function later. 
       */
      if(IORD_ALTERA_TSEMAC_TX_CMD_STAT(tse[iface].mi.base) & 
         ALTERA_TSEMAC_TX_CMD_STAT_TXSHIFT16_MSK) {
         tse[iface].txShift16OK = 1;
         dprintf("[tse_mac_init] Error: Incompactible %d value with TX_CMD_STAT register return TxShift16 value. \n",ETHHDR_BIAS);
        return ENP_LOGIC;
      } else {
        tse[iface].txShift16OK = 0;
      }
   
    /*Enable RX shift 16 for allignment of all received frames on 16-bit start address */   
    temp_reg = IORD_ALTERA_TSEMAC_RX_CMD_STAT(tse[iface].mi.base) & (~ALTERA_TSEMAC_RX_CMD_STAT_RXSHIFT16_MSK);
    IOWR_ALTERA_TSEMAC_RX_CMD_STAT(tse[iface].mi.base,temp_reg);
   
    /* check if the MAC supports the 16-bit shift option at the RX CMD STATUS Register  */ 
    if(IORD_ALTERA_TSEMAC_RX_CMD_STAT(tse[iface].mi.base) & ALTERA_TSEMAC_RX_CMD_STAT_RXSHIFT16_MSK)
    {
      tse[iface].rxShift16OK = 1;
      dprintf("[tse_mac_init] Error: Incompactible %d value with RX_CMD_STAT register return RxShift16 value. \n",ETHHDR_BIAS);
      return ENP_LOGIC;
    } 
    else {
      tse[iface].rxShift16OK = 0;
    }
  } /* if(ETHHDR_BIAS == 0) */
 
  if(ETHHDR_BIAS == 2) {
    IOWR_ALTERA_TSEMAC_TX_CMD_STAT(tse[iface].mi.base,ALTERA_TSEMAC_TX_CMD_STAT_TXSHIFT16_MSK);
 
    /*
     * check if the MAC supports the 16-bit shift option allowing us
     * to send BIASed frames without copying. Used by the send function later.
     */
    if(IORD_ALTERA_TSEMAC_TX_CMD_STAT(tse[iface].mi.base) &
      ALTERA_TSEMAC_TX_CMD_STAT_TXSHIFT16_MSK) {
      tse[iface].txShift16OK = 1;
    } 
    else {
      tse[iface].txShift16OK = 0;
      dprintf("[tse_mac_init] Error: Incompatible %d value with TX_CMD_STAT register return TxShift16 value. \n",ETHHDR_BIAS);
      return ENP_LOGIC;
    }
  
    /* Enable RX shift 16 for alignment of all received frames on 16-bit start address */
    IOWR_ALTERA_TSEMAC_RX_CMD_STAT(tse[iface].mi.base,ALTERA_TSEMAC_RX_CMD_STAT_RXSHIFT16_MSK);
 
    /* check if the MAC supports the 16-bit shift option at the RX CMD STATUS Register  */ 
    if(IORD_ALTERA_TSEMAC_RX_CMD_STAT(tse[iface].mi.base) & ALTERA_TSEMAC_RX_CMD_STAT_RXSHIFT16_MSK)
    {
      tse[iface].rxShift16OK = 1;
    } 
    else {
      tse[iface].rxShift16OK = 0;
      dprintf("[tse_mac_init] Error: Incompatible %d value with RX_CMD_STAT register return RxShift16 value. \n",ETHHDR_BIAS);
      return ENP_LOGIC;
    }
  } /* if(ETHHDR_BIAS == 2) */
  
  /* enable MAC */
  dat = ALTERA_TSEMAC_CMD_TX_ENA_MSK       |
        ALTERA_TSEMAC_CMD_RX_ENA_MSK       |
        mmac_cc_RX_ERR_DISCARD_mask        |
#if ENABLE_PHY_LOOPBACK
        ALTERA_TSEMAC_CMD_PROMIS_EN_MSK    |     // promiscuous mode
        ALTERA_TSEMAC_CMD_LOOPBACK_MSK     |     // promiscuous mode
#endif
        ALTERA_TSEMAC_CMD_TX_ADDR_INS_MSK  |
        ALTERA_TSEMAC_CMD_RX_ERR_DISC_MSK;  /* automatically discard frames with CRC errors */
    
  
  /* 1000 Mbps */
  if(speed == 0x01) {
    dat |= ALTERA_TSEMAC_CMD_ETH_SPEED_MSK;
	dat &= ~ALTERA_TSEMAC_CMD_ENA_10_MSK;
  }
  /* 100 Mbps */
  else if(speed == 0x02) {
    dat &= ~ALTERA_TSEMAC_CMD_ETH_SPEED_MSK;
	dat &= ~ALTERA_TSEMAC_CMD_ENA_10_MSK;
  }
  /* 10 Mbps */
  else if(speed == 0x04) {
    dat &= ~ALTERA_TSEMAC_CMD_ETH_SPEED_MSK;
	dat |= ALTERA_TSEMAC_CMD_ENA_10_MSK;
  }
  /* default to 100 Mbps if returned invalid speed */
  else {
    dat &= ~ALTERA_TSEMAC_CMD_ETH_SPEED_MSK;
	dat &= ~ALTERA_TSEMAC_CMD_ENA_10_MSK;
  }
  
  /* Half Duplex */
  if(duplex == TSE_PHY_DUPLEX_HALF) {
    dat |= ALTERA_TSEMAC_CMD_HD_ENA_MSK;
  }
  /* Full Duplex */
  else {
    dat &= ~ALTERA_TSEMAC_CMD_HD_ENA_MSK;
  }
          
  IOWR_ALTERA_TSEMAC_CMD_CONFIG(tse[iface].mi.base, dat);
  dprintf("\nMAC post-initialization: CMD_CONFIG=0x%08x\n", 
  IORD_ALTERA_TSEMAC_CMD_CONFIG(tse[iface].mi.base));
  
                          
#ifdef ALT_INICHE
   /* Set the MAC address */  
   IOWR_ALTERA_TSEMAC_MAC_0(tse[iface].mi.base,
                           ((int)((unsigned char) tse[iface].mac_addr[0]) | 
                            (int)((unsigned char) tse[iface].mac_addr[1] <<  8) |
                            (int)((unsigned char) tse[iface].mac_addr[2] << 16) | 
                            (int)((unsigned char) tse[iface].mac_addr[3] << 24)));
  
   IOWR_ALTERA_TSEMAC_MAC_1(tse[iface].mi.base, 
                           (((int)((unsigned char) tse[iface].mac_addr[4]) | 
                             (int)((unsigned char) tse[iface].mac_addr[5] <<  8)) & 0xFFFF));
   
#else /* not ALT_INICHE */

   /* Set the MAC address */  
   IOWR_ALTERA_TSEMAC_MAC_0(tse[iface].mi.base,
                           ((int)(0x00)       | 
                            (int)(0x07 <<  8) |
                            (int)(0xAB << 16) | 
                            (int)(0xF0 << 24)));

   IOWR_ALTERA_TSEMAC_MAC_1(tse[iface].mi.base, 
                           (((int)(0x0D)      | 
                             (int)(0xBA <<  8)) & 0xFFFF));


   /* Set the mac address in the tse struct */
   tse[iface].mac_addr[0] = 0x00;
   tse[iface].mac_addr[1] = 0x07;
   tse[iface].mac_addr[2] = 0xAB;
   tse[iface].mac_addr[3] = 0xF0;
   tse[iface].mac_addr[4] = 0x0D;
   tse[iface].mac_addr[5] = 0xBA;

#endif /* not ALT_INICHE */

   /* status = UP */ 
   nets[iface]->n_mib->ifAdminStatus = ALTERA_TSE_ADMIN_STATUS_UP;    
   nets[iface]->n_mib->ifOperStatus =  ALTERA_TSE_ADMIN_STATUS_UP;
   
   /* Install SGDMA (RX) interrupt handler */
   alt_avalon_sgdma_register_callback(
        tse[iface].mi.rx_sgdma,
        (alt_avalon_sgdma_callback)&tse_sgdmaRx_isr,
        (alt_u16)ALTERA_TSE_SGDMA_INTR_MASK,
        (void*)(&tse[iface]));
    
  status = tse_sgdma_read_init(&tse[iface]);
  
  return status;
}



/* @Function Description -  TSE transmit API to send data to the MAC
 *                          
 * 
 * @API TYPE - Public
 * @param  net  - NET structure associated with the TSE MAC instance
 * @param  data - pointer to the data payload
 * @param  data_bytes - number of bytes of the data payload to be sent to the MAC
 * @return SUCCESS if success, else a negative value
 */
int tse_mac_raw_send(NET net, char * data, unsigned data_bytes)
{
   int result,i;
   unsigned len = data_bytes;

   ins_tse_info* tse_ptr = (ins_tse_info*) net->n_local;

   alt_tse_system_info* tse_hw = (alt_tse_system_info *) tse_ptr->tse;
   
   tse_mac_trans_info *mi;
   unsigned int* ActualData;
   int cpu_sr;
   /* Intermediate buffers used for temporary copy of frames that cannot be directrly DMA'ed*/
   char buf2[1560];

   OS_ENTER_CRITICAL();
   mi = &tse_ptr->mi;
   
   if(tse_ptr->sem!=0) /* Tx is busy*/
   {
      dprintf("raw_send CALLED AGAIN!!!\n");
      OS_EXIT_CRITICAL();
      return ENP_RESOURCE;
   }
 
   tse_ptr->sem = 1;  

   if(((unsigned long)data & 0x03) == 0) 
   { 
      /* 32-bit aligned start, then header starts ETHHDR_BIAS later => 16 bit shift is ok */    
      ActualData = (unsigned int*)data;  /* base driver will detect 16-bit shift. */
   } 
   else
   {
      /* 
       * Copy data to temporary buffer <buf2>. This is done because of allignment 
       * issues. The SGDMA cannot copy the data directly from (data + ETHHDR_BIAS)
       * because it needs a 32-bit alligned address space. 
       */
      for(i=0;i<len;i++) {
         buf2[i] = IORD_8DIRECT(&data[i], 0);
      }
      ActualData = (unsigned int*)buf2;
   }  
   
     // clear bit-31 before passing it to SGDMA Driver
    ActualData = (unsigned int*)alt_remap_cached ((volatile void*) ActualData, 4);

   /* Write data to Tx FIFO using the DMA */
   if((tse_hw->use_shared_fifo == 1) && (( len > ALTERA_TSE_MIN_MTU_SIZE )) && (IORD_ALTERA_MULTI_CHAN_FILL_LEVEL(tse_hw->tse_shared_fifo_tx_stat_base, tse_ptr->channel) < ALTERA_TSE_MIN_MTU_SIZE))
   {
        /* make sure there is room in the FIFO.        */
        alt_avalon_sgdma_construct_mem_to_stream_desc(
           (alt_sgdma_descriptor *) &tse_ptr->desc[ALTERA_TSE_FIRST_TX_SGDMA_DESC_OFST], // descriptor I want to work with
           (alt_sgdma_descriptor *) &tse_ptr->desc[ALTERA_TSE_SECOND_TX_SGDMA_DESC_OFST],// pointer to "next"
           (alt_u32*)ActualData,                     // starting read address
           (len),                                  // # bytes
           0,                                        // don't read from constant address
           1,                                        // generate sop
           1,                                        // generate endofpacket signal
           0);                                       // atlantic channel (don't know/don't care: set to 0)

        tse_mac_sTxWrite(mi,tse_ptr->desc);
        result = 0;
   }
   else if( len > ALTERA_TSE_MIN_MTU_SIZE ) {    

       /* make sure there is room in the FIFO.        */
        alt_avalon_sgdma_construct_mem_to_stream_desc(
           (alt_sgdma_descriptor *) &tse_ptr->desc[ALTERA_TSE_FIRST_TX_SGDMA_DESC_OFST], // descriptor I want to work with
           (alt_sgdma_descriptor *) &tse_ptr->desc[ALTERA_TSE_SECOND_TX_SGDMA_DESC_OFST],// pointer to "next"
           (alt_u32*)ActualData,                     // starting read address
           (len),                                  // # bytes
           0,                                        // don't read from constant address
           1,                                        // generate sop
           1,                                        // generate endofpacket signal
           0);                                       // atlantic channel (don't know/don't care: set to 0)
                  
    
       tse_mac_sTxWrite(mi,tse_ptr->desc);
       result = 0;

   } else {
       result = -3;
   }

   if(result < 0)   /* SGDMA not available */
   {
      dprintf("raw_send() SGDMA not available, ret=%d, len=%d\n",result, len);
      net->n_mib->ifOutDiscards++;
      tse_ptr->sem = 0;

      OS_EXIT_CRITICAL();
      return SEND_DROPPED;   /* ENP_RESOURCE and SEND_DROPPED have the same value! */
   }
   else   /* = 0, success */
   {
      net->n_mib->ifOutOctets += data_bytes;
      /* we dont know whether it was unicast or not, we count both in <ifOutUcastPkts> */
      net->n_mib->ifOutUcastPkts++;
      tse_ptr->sem = 0;

      OS_EXIT_CRITICAL();
      return SUCCESS;  /*success */
   }
}


/* @Function Description -  TSE Driver SGDMA RX ISR callback function
 *                          
 * 
 * @API TYPE - callback
 * @param  context  - context of the TSE MAC instance
 * @param  intnum - temporary storage
 */
void tse_sgdmaRx_isr(void * context)
{
  ins_tse_info* tse_ptr = (ins_tse_info *) context; 
  alt_u8 sgdma_status;
  
  /* Capture whether there are existing packets on stack rcv queue */
  int initial_rcvdq_len = rcvdq.q_len;
  
  /* 
   * The SGDMA interrupt source was cleared in the SGDMA ISR entry, 
   * which called this routine. New interrupt sources will cause the 
   * IRQ to fire again once this routine returns.
   */
  
  /* 
   * Grab SGDMA status to validate interrupt cause. 
   * 
   * IO read to peripheral that generated the IRQ is done after IO write
   * to negate the interrupt request. This ensures at the IO write reaches 
   * the peripheral (through any high-latency hardware in the system)
   * before the ISR exits.
   */   
  sgdma_status = IORD_ALTERA_AVALON_SGDMA_STATUS(tse_ptr->mi.rx_sgdma->base);
  
  /* Why are we here; should we be? */
  if(sgdma_status & (ALTERA_AVALON_SGDMA_STATUS_CHAIN_COMPLETED_MSK | 
                     ALTERA_AVALON_SGDMA_STATUS_DESC_COMPLETED_MSK) ) {
    /* Handle received packet(s) */
    tse_mac_rcv(tse_ptr); 
    
#if ALTERA_TSE_SGDMA_RX_DESC_CHAIN_SIZE > 1  
    if(sgdma_status & ALTERA_AVALON_SGDMA_STATUS_CHAIN_COMPLETED_MSK) {
      /* We've arrived at the end of the chain. Loop back */
      tse_ptr->chain_loop = 0;
      tse_ptr->currdescriptor_ptr = &tse_ptr->desc[ALTERA_TSE_FIRST_RX_SGDMA_DESC_OFST];
    
      /* Re-start SGDMA @ start of chain (if the chain completed) */
      alt_avalon_sgdma_do_async_transfer(
        tse_ptr->mi.rx_sgdma, 
        &tse_ptr->desc[ALTERA_TSE_FIRST_RX_SGDMA_DESC_OFST]);
    }
#else
    /* Re-start SGDMA (always, if we have a single descriptor) */
    alt_avalon_sgdma_do_async_transfer(
      tse_ptr->mi.rx_sgdma, 
      &tse_ptr->desc[ALTERA_TSE_FIRST_RX_SGDMA_DESC_OFST]);
#endif
  
    /* Wake up Niche stack if there are new packets are on queue */
    if ((rcvdq.q_len) > initial_rcvdq_len) {
      SignalPktDemux();
    }  
  } /* if (valid SGDMA interrupt) */
}



/* @Function Description -  Init and setup SGDMA Descriptor chain
 *                          
 * 
 * @API TYPE - Internal
 * @return SUCCESS on success 
 */
int tse_sgdma_read_init(ins_tse_info* tse_ptr)
{     
  alt_u32 *uncached_packet_payload;
  
  for(tse_ptr->chain_loop = 0; tse_ptr->chain_loop < ALTERA_TSE_SGDMA_RX_DESC_CHAIN_SIZE; tse_ptr->chain_loop++)
  { 
    tse_ptr->pkt_array[tse_ptr->chain_loop] = pk_alloc(ALTERA_TSE_PKT_INIT_LEN+4);
    
    if (!tse_ptr->pkt_array[tse_ptr->chain_loop])   /* couldn't get a free buffer for rx */
    {
      dprintf("[tse_sgdma_read_init] Fatal error: No free packet buffers for RX\n");
      tse_ptr->netp->n_mib->ifInDiscards++;
      
      return ENP_NOBUFFER;
    }
    
    // ensure bit-31 of tse_ptr->pkt_array[tse_ptr->chain_loop]->nb_buff is clear before passing
    // to SGDMA Driver
    uncached_packet_payload = (alt_u32 *)alt_remap_cached ((volatile void*) tse_ptr->pkt_array[tse_ptr->chain_loop]->nb_buff, 4);

    alt_avalon_sgdma_construct_stream_to_mem_desc(
            (alt_sgdma_descriptor *) &tse_ptr->desc[tse_ptr->chain_loop+ALTERA_TSE_FIRST_RX_SGDMA_DESC_OFST],  // descriptor I want to work with
            (alt_sgdma_descriptor *) &tse_ptr->desc[tse_ptr->chain_loop+ALTERA_TSE_SECOND_RX_SGDMA_DESC_OFST], // pointer to "next"
            uncached_packet_payload,    // tse_ptr->pkt_array[tse_ptr->chain_loop]->nb_buff,           // starting write_address
            0,                          // read until EOP
            0);                         // don't write to constant address

  } // for

  dprintf("[tse_sgdma_read_init] RX descriptor chain desc (%d depth) created\n", 
    tse_ptr->chain_loop);
   
  tse_ptr->chain_loop = 0;
  tse_ptr->currdescriptor_ptr =  &tse_ptr->desc[ALTERA_TSE_FIRST_RX_SGDMA_DESC_OFST];

  tse_mac_aRxRead( &tse_ptr->mi, tse_ptr->currdescriptor_ptr);
  
  return SUCCESS;
}


/* @Function Description -  TSE Driver SGDMA RX ISR callback function
 *                          
 * 
 * @API TYPE        - callback internal function
 * @return SUCCESS on success
 */

ALT_INLINE void tse_mac_rcv(ins_tse_info* tse_ptr)
{     
  struct ethhdr * eth;
  int pklen;
  PACKET replacement_pkt;
  PACKET rx_packet;
  alt_u32 *uncached_packet_payload;
  alt_u8 desc_status;

  tse_ptr->currdescriptor_ptr = 
    &tse_ptr->desc[tse_ptr->chain_loop+ALTERA_TSE_FIRST_RX_SGDMA_DESC_OFST];
  
  /* Grab status bits from descriptor under test. Bypass cache */
  desc_status = IORD_ALTERA_TSE_SGDMA_DESC_STATUS(tse_ptr->currdescriptor_ptr);
    
#if ALTERA_TSE_SGDMA_RX_DESC_CHAIN_SIZE > 1   
  while ( desc_status & 
           ALTERA_AVALON_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK )
#endif
{      
    /* Correct frame length to actual (this is different from TX side) */
    pklen = IORD_16DIRECT(&tse_ptr->currdescriptor_ptr->actual_bytes_transferred, 0) - 2;
    tse_ptr->netp->n_mib->ifInOctets += (u_long)pklen;
  
    rx_packet = tse_ptr->pkt_array[tse_ptr->chain_loop];   
    
    rx_packet->nb_prot = rx_packet->nb_buff + ETHHDR_SIZE;
    rx_packet->nb_plen = pklen - 14;
    rx_packet->nb_tstamp = cticks;
    rx_packet->net = tse_ptr->netp;
    
    // set packet type for demux routine
    eth = (struct ethhdr *)(rx_packet->nb_buff + ETHHDR_BIAS);
    rx_packet->type = eth->e_type;
    
    if( (desc_status & 
          (ALTERA_AVALON_SGDMA_DESCRIPTOR_STATUS_E_CRC_MSK | 
           ALTERA_AVALON_SGDMA_DESCRIPTOR_STATUS_E_PARITY_MSK | 
           ALTERA_AVALON_SGDMA_DESCRIPTOR_STATUS_E_OVERFLOW_MSK |
           ALTERA_AVALON_SGDMA_DESCRIPTOR_STATUS_E_SYNC_MSK | 
           ALTERA_AVALON_SGDMA_DESCRIPTOR_STATUS_E_UEOP_MSK | 
           ALTERA_AVALON_SGDMA_DESCRIPTOR_STATUS_E_MEOP_MSK | 
           ALTERA_AVALON_SGDMA_DESCRIPTOR_STATUS_E_MSOP_MSK ) ) == 0)
    {
      replacement_pkt = pk_alloc(ALTERA_TSE_PKT_INIT_LEN + 4);
      if (!replacement_pkt) { /* couldn't get a free buffer for rx */
        dprintf("No free buffers for rx\n");
        tse_ptr->netp->n_mib->ifInDiscards++;
      }
      else {
        putq(&rcvdq, tse_ptr->pkt_array[tse_ptr->chain_loop]);
        tse_ptr->pkt_array[tse_ptr->chain_loop] = replacement_pkt;
      }
    } /* if(descriptor had no errors) */ 
    else {
      dprintf("RX descriptor reported error. packet dropped\n");
    }     
             
    uncached_packet_payload = (alt_u32 *)alt_remap_cached(tse_ptr->pkt_array[tse_ptr->chain_loop]->nb_buff, 4);
    
    /* 
     * Re-cycle previously constructed SGDMA buffer directly rather
     * than calling the SGDMA utility routines. This saves some call/return
     * overhead and only does cache-bypass writes of what we need
     */
    IOWR_32DIRECT(&tse_ptr->currdescriptor_ptr->write_addr, 0, 
      (alt_u32)(uncached_packet_payload));
    
    /* 
     * Concatenate the contents of the last descriptor word to reduce
     * the number of cache-bypassing writes needed; this is a performance
     * enhancement for systems where the descriptors might be in a high-
     * latency memory such as DDR. The final 32-bits
     * of an SGDMA descriptor look like this:
     *   |31...24|23..16|15.....................0|
     *   |control|status|actual_bytes_transferred|
     * 
     * Set relevant control bits and ensure the rest are cleared.
     */
    IOWR_32DIRECT(&tse_ptr->currdescriptor_ptr->actual_bytes_transferred, 0, 
      (alt_u32) ((ALTERA_AVALON_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK |
                  ALTERA_AVALON_SGDMA_DESCRIPTOR_CONTROL_GENERATE_EOP_MSK) << 24) );

#if ALTERA_TSE_SGDMA_RX_DESC_CHAIN_SIZE > 1   
    //Process Loopback 
    if (tse_ptr->chain_loop == ALTERA_TSE_SGDMA_RX_DESC_CHAIN_SIZE - 1) {
      tse_ptr->chain_loop = 0;
      tse_ptr->currdescriptor_ptr = &tse_ptr->desc[ALTERA_TSE_FIRST_RX_SGDMA_DESC_OFST];
    }
    else {  
      tse_ptr->chain_loop++;
      tse_ptr->currdescriptor_ptr = &tse_ptr->desc[tse_ptr->chain_loop+ALTERA_TSE_FIRST_RX_SGDMA_DESC_OFST]; 
    }
    
    /* Grab next descriptor status */
    desc_status = IORD_ALTERA_TSE_SGDMA_DESC_STATUS(tse_ptr->currdescriptor_ptr);
#endif
  } /* while (descriptor terminated by EOP) */
} 

int tse_mac_stats(void * pio, int iface)
{
   ns_printf(pio, "tse_mac_stats(), stats will be added later!\n");
   return SUCCESS;
}

/* @Function Description -  Closing the TSE MAC Driver Interface
 *                          
 * 
 * @API TYPE - Public
 * @param  iface    index of the NET interface associated with the TSE MAC.
 * @return SUCCESS
 */
int tse_mac_close(int iface)
{
  int state;
   
  /* status = down */
  nets[iface]->n_mib->ifAdminStatus = ALTERA_TSE_ADMIN_STATUS_DOWN;    

  /* disable the interrupt in the OS*/
  alt_avalon_sgdma_register_callback(tse[iface].mi.rx_sgdma, 0, 0, 0);
   
  /* Disable Receive path on the device*/
  state = IORD_ALTERA_TSEMAC_CMD_CONFIG(tse[iface].mi.base);
  IOWR_ALTERA_TSEMAC_CMD_CONFIG(tse[iface].mi.base,state & ~ALTERA_TSEMAC_CMD_RX_ENA_MSK); 
  
  /* status = down */                                     
  nets[iface]->n_mib->ifOperStatus = ALTERA_TSE_ADMIN_STATUS_DOWN;     

  return SUCCESS;
}
#endif /* ALT_INICHE */
