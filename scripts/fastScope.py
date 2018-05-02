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
from matplotlib.widgets import Button
import argparse
import re
import sys
import telnetlib

parser = argparse.ArgumentParser(description='View waveforms coming from ethernet')
parser.add_argument('-a','--address', help='IP address of FPGA', default="142.104.63.132", required=False)
parser.add_argument('-p','--port', help='The port to listen to', default="30", required=False)

parser.add_argument('-m','--movie', help='Save a 200 frame video', action='store_true', required=False)
parser.add_argument('-f','--filename', help='Video filename', default="fastScope.mp4", required=False)
parser.add_argument('-l','--length', help='length if video (in seconds)', default='60', required=False)

parser.add_argument('-r','--freq'   , help='Sampling frequency in Megahertz (default: %(default)s)',     default=40, required=False)

parser.add_argument('-t','--trigSource', help='Set trigger source (self or ext)', default='self', choices=['self', 'ext'], required=False)
parser.add_argument('-s','--trigSlope', help='Set trigger slope (pos or neg)', default='pos', choices=['pos', 'neg'], required=False)
parser.add_argument('-d','--delay', help='Set delay (on or off)', default='on', choices=['on', 'off'], required=False)

parser.add_argument('-k','--keep', help='Keep current settings', action='store_true', required=False)

args = parser.parse_args()

x=[]
y=[]

#open telnet connection
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


    
sampleFreq=float(args.freq)/1000

# animation function.  This is called sequentially
def update_hist(num, data):
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

    tn.write("status\n".encode('ascii'))
    status=tn.read_until("done".encode('ascii'))
    status = re.sub('done', '', status.decode("utf-8"))
    bin='{0:04b}'.format(int(status))

    status=''

    if bin[0] == '1':
        status +='Delayed,'
    else:
        status +='Not Delayed,'
        
    if bin[1] == '1':
        status += ' Positive '
    else:
        status += ' Negative ' 
            
    if bin[2] == '1':
        status += 'Self Trigger'
    else:
        status += 'External Trigger'


    

    plt.cla()
    plt.title(status, loc='left')
    plt.plot(x,y, color='red', label='Wave Number='+str(wavenum))
    plt.xlabel("Time (ns)")
    plt.ylabel("ADC counts (AU)")
    plt.legend(loc='upper right')
    plt.ylim(0, 16383);
    plt.xlim(0, max(x));

fig = plt.figure()

number_of_frames = int(int(args.length)/0.125)
data=[]

frameInterval=10

if args.movie:
    frameInterval=125

# call the animator.  blit=True means only re-draw the parts that have changed.
anim = animation.FuncAnimation(fig, update_hist,number_of_frames,interval=frameInterval,fargs=(data,))

if args.movie:
    anim.save(args.filename, metadata={'artist':'Sam'})
    



nf=0
#reset button action
class Index(object):
    ind=0
    def delay(self,event):
        Command = "DELAY:TOGGLE\n"
        tn.write(Command.encode('ascii'))
        b=tn.read_until("delay".encode('ascii'))

    def source(self, event):
        Command = "TRIG:SOURCE:TOGGLE\n"
        tn.write(Command.encode('ascii'))
        b=tn.read_until("trigger".encode('ascii'))
        
    def slope(self, event):
        Command = "TRIG:SLOPE:TOGGLE\n"
        tn.write(Command.encode('ascii'))
        b=tn.read_until("trigger".encode('ascii'))
        
        
#divide plot into graph and button    
button1 = plt.subplot2grid((15, 12), (14, 8), colspan=4) #button
button2 = plt.subplot2grid((15, 12), (14, 4), colspan=4) #button
button3 = plt.subplot2grid((15, 12), (14, 0), colspan=4) #button
plt2 =plt.subplot2grid((15, 12), (0, 0), colspan=12, rowspan=12) #graph

#reset button
callback=Index()
bdelay = Button(button1, 'Toggle Delay')
bdelay.on_clicked(callback.delay)

btrigSource = Button(button2, 'Toggle Trig Source')
btrigSource.on_clicked(callback.source)

btrigSlope = Button(button3, 'Toggle Trig Slope')
btrigSlope.on_clicked(callback.slope)










plt.show()



#close telnet connection
tn.write("quit\n".encode('ascii'))

