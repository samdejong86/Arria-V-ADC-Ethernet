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
        f.write("\twait for 25 ns;\n\ta2db_data<=to_unsigned("+a+", a2db_data'length);\n")
        if int(a) > 9200:
            f.write("\ta2da_data<=to_unsigned(16383, a2da_data'length);\n\n")
        else:
            f.write("\ta2da_data<=to_unsigned(0, a2da_data'length);\n\n")
			


