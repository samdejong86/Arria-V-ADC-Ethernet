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
        f.write("@(posedge CLOCK);\n#25 a2db_data=14'd"+a+";\n")
        if int(a) > 9200:
            f.write("a2da_data=14'd16383;\n\n")
        else:
            f.write("a2da_data=14'd0;\n\n")
            
            
