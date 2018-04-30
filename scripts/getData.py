#!/usr/bin/env python

import sys
import telnetlib
import matplotlib.pyplot as plt
import numpy as np
import argparse
import re

parser = argparse.ArgumentParser(description='View a single waveform coming from ethernet')
parser.add_argument('-a','--address', help='IP address of FPGA', default="142.104.63.132", required=False)
parser.add_argument('-p','--port', help='The port to listen to', default="30", required=False)
parser.add_argument('-sv','--save', help='Save data to a file', action='store_true', required=False)
parser.add_argument('-f','--filename', help='Name of data file', default="ETHERNET.dat", required=False)
parser.add_argument('-n','--noGraph', help='Suppress graphical output', action='store_true', required=False)
parser.add_argument('-r','--freq'   , help='Sampling frequency in Megahertz (default: %(default)s)',     default=40, required=False)

parser.add_argument('-t','--trigSource', help='Set trigger source (self or ext)', default='self', choices=['self', 'ext'], required=False)
parser.add_argument('-s','--trigSlope', help='Set trigger slope (pos or neg)', default='pos', choices=['pos', 'neg'], required=False)
parser.add_argument('-d','--delay', help='Set delay (on or off)', default='on', choices=['on', 'off'], required=False)


parser.add_argument('-k','--keep', help='Keep current settings', action='store_true', required=False)



args = parser.parse_args()

tn = telnetlib.Telnet(args.address, args.port)
a = tn.read_until("return:".encode('ascii'))

b=''

if not args.keep:

    trigSourceCommand = "TRIG:SOURCE:"+args.trigSource+"\n"
    trigSlopeCommand = "TRIG:SLOPE:"+args.trigSlope+"\n"
    delayCommand = "DELAY:"+args.delay+"\n"
    
    tn.write(trigSourceCommand.encode('ascii'))
    b=tn.read_until("trigger".encode('ascii'))
    
    tn.write(delayCommand.encode('ascii'))
    b=tn.read_until("delay".encode('ascii'))
    
    tn.write(trigSlopeCommand.encode('ascii'))
    b=tn.read_until("trigger".encode('ascii'))


print("Device settings:")
tn.write("status\n".encode('ascii'))
status=tn.read_until("done".encode('ascii'))
status = re.sub('done', '', status.decode("utf-8"))
bin='{0:04b}'.format(int(status))

if bin[0] == '1':
    print("Delay enabled")
else:
    print("Delay disabled")

if bin[1] == '1':
    print("Positive Trigger")
else:
    print("Negative Trigger")

if bin[2] == '1':
    print("Self Trigger")
else:
    print("External Trigger")
    

    
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
	    #f.write(str(waveNum)+"\n")
	    for i in range(len(xx)):
		    f.write(str(xx[i]) + "\t" + str(yy[i]) + "\n")



#plotting data
if not args.noGraph:
    plt.xlabel("Time (ns)")
    plt.ylabel("ADC counts (AU)")
    
    #plot ADC counts vs time
    plt.plot(xx, yy)


plt.show()




