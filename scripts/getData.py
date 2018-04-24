#!/usr/bin/env python

import sys
import telnetlib
import matplotlib.pyplot as plt
import numpy as np
import argparse

parser = argparse.ArgumentParser(description='View a single waveform coming from ethernet')
parser.add_argument('-a','--address', help='IP address of FPGA', default="142.104.63.132", required=False)
parser.add_argument('-p','--port', help='The port to listen to', default="30", required=False)
parser.add_argument('-sv','--save', help='Save data to a file', action='store_true', required=False)
parser.add_argument('-f','--filename', help='Name of data file', default="ETHERNET.dat", required=False)
parser.add_argument('-n','--noGraph', help='Suppress graphical output', action='store_true', required=False)
parser.add_argument('-r','--freq'   , help='Sampling frequency in Megahertz (default: %(default)s)',     default=40, required=False)

parser.add_argument('-t','--trigSource', help='Toggle trigger source', action='store_true', required=False)
parser.add_argument('-s','--trigSlope', help='Toggle trigger slope', action='store_true', required=False)
parser.add_argument('-d','--delay', help='Toggle trigger delay', action='store_true', required=False)


args = parser.parse_args()

tn = telnetlib.Telnet(args.address, args.port)
a = tn.read_until("return:".encode('ascii'))

b=''

if(args.trigSource):
    tn.write("triggersource\n".encode('ascii'))
    b=tn.read_until("source".encode('ascii'))

if(args.delay):
    tn.write("delay\n".encode('ascii'))
    b=tn.read_until("delay".encode('ascii'))


if(args.trigSlope):
    tn.write("triggerslope\n".encode('ascii'))
    b=tn.read_until("slope".encode('ascii'))


# get data from the socket


tn.write("acquire\n".encode('ascii'))
rawdata = tn.read_until("complete".encode('ascii'))

data = rawdata.decode("utf-8").split("\n")

del data[0]
del data[-1]

wavenum=data[-1];
print(wavenum);
del data[-1]


yy = list(map(int, data))
xx=list(range(0,len(data)))
xx = [x*1/(float(args.freq)/1000) for x in xx]


#done getting data

#close telnet connection
tn.write("quit\n".encode('ascii'))

if args.save:
    with open(args.filename, 'w') as f:
	    f.write(str(wavenum)+"\n")
	    for i in range(len(xx)):
		    f.write(str(xx[i]) + "\t" + str(yy[i]) + "\n")



#plotting data
if not args.noGraph:
    plt.xlabel("Time (ns)")
    plt.ylabel("ADC counts (AU)")
    
    #plot ADC counts vs time
    plt.plot(xx, yy)


plt.show()




