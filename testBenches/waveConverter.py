import csv

ADCvals=[]

with open('ADC.dat','r') as f:
    next(f) # skip headings
    reader=csv.reader(f,delimiter='\t')
    for t,adc in reader:
        ADCvals.append(adc)
         
#print(ADCvals)

with open("waveData.dat", 'w') as f:
    for a in ADCvals:
        f.write("@(posedge CLOCK);\n#25 ADC=14'd"+a+";\n \n")
