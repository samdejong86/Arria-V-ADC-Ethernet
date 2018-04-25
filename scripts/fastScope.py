#!/usr/bin/env python  

"""
Creates an animation of the waveform send from the FPGA. 

Based on:
Matplotlib Animation Example

author: Jake Vanderplas
email: vanderplas@astro.washington.edu
website: http://jakevdp.github.com
license: BSD
Please feel free to use and modify this, but keep the above information. Thanks!
"""

import numpy as np
from matplotlib import pyplot as plt
from matplotlib import animation
import argparse
import re
import sys
import telnetlib

parser = argparse.ArgumentParser(description='View waveforms coming from ethernet')
parser.add_argument('-a','--address', help='IP address of FPGA', default="142.104.63.132", required=False)
parser.add_argument('-p','--port', help='The port to listen to', default="30", required=False)

parser.add_argument('-m','--movie', help='Save a 200 frame video', action='store_true', required=False)
parser.add_argument('-f','--filename', help='Video filename', default="slowScope.mp4", required=False)
parser.add_argument('-r','--freq'   , help='Sampling frequency in Megahertz (default: %(default)s)',     default=40, required=False)

parser.add_argument('-t','--trigSource', help='Set trigger source (self or ext)', default='self', required=False)
parser.add_argument('-s','--trigSlope', help='Set trigger slope (pos or neg)', default='pos', required=False)
parser.add_argument('-d','--delay', help='Set delay (on or off)', default='on', required=False)


args = parser.parse_args()

x=[]
y=[]

#open telnet connection
tn = telnetlib.Telnet(args.address, args.port)
a = tn.read_until("return:".encode('ascii'))

b=''

trigSourceCommand = "TRIG:SOURCE:"+args.trigSource+"\n"
trigSlopeCommand = "TRIG:SLOPE:"+args.trigSlope+"\n"
delayCommand = "DELAY:"+args.delay+"\n"

tn.write(trigSourceCommand.encode('ascii'))
b=tn.read_until("trigger".encode('ascii'))

tn.write(delayCommand.encode('ascii'))
b=tn.read_until("delay".encode('ascii'))

tn.write(trigSlopeCommand.encode('ascii'))
b=tn.read_until("trigger".encode('ascii'))


sampleFreq=float(args.freq)/1000


# First set up the figure, the axis, and the plot element we want to animate
fig = plt.figure()
ax = plt.axes(xlim=(0, 1000/sampleFreq), ylim=(000, 16000))
#line=ax.plot([],[],lw=2, marker='',color='black')[0]
lines = []

lobj = ax.plot([], [], 'r-', animated=True)[0]
wNum_text = ax.text(0.02, 0.95, '', transform=ax.transAxes)

lines.append(lobj)
lines.append(wNum_text)

# initialization function: plot the background of each frame
def init():
    for i in range(1):
        lines[i].set_data([],[])
    lines[1].set_text(" ")
    return lines

waveNumber=0

# animation function.  This is called sequentially
def animate(i):
    tn.write("acquire\n".encode('ascii'))
    rawdata = tn.read_until("complete".encode('ascii'))

    data = rawdata.decode("utf-8").split("\n")

    del data[0]
    del data[-1]
    wavenum=data[-1];
    del data[-1]

    
    y = list(map(int, data))
    x=list(range(0,len(data)))
    x = [k*1/sampleFreq for k in x]
   

       
    lines[0].set_data(x,y)       
    lines[1].set_text("wave number = "+str(wavenum))
    



    return lines

# call the animator.  blit=True means only re-draw the parts that have changed.
anim = animation.FuncAnimation(fig, animate, init_func=init,
                               frames=200, interval=20, blit=True)

if args.movie:
    anim.save(args.filename, metadata={'artist':'Sam'})

plt.xlabel("Time (ns)")
plt.ylabel("ADC counts (AU)")
plt.show()



#close telnet connection
tn.write("quit\n".encode('ascii'))

