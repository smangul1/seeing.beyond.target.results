#gi|23898|emb|X12811.1|  28      2
#gi|23898|emb|X12811.1|  29      2
#X12811    5S              2231 bp
#Human 5.8S ribosomal RNA J01866.1 159 bp 
#Human 28S ribosomal RNA gene  5025 bp M11167.1
# X03205.1 Human 18S ribosomal RNA 1869 bp 

import os
import csv
import sys
import gzip

path = './rDNA/cov/'

fileOut_5S=open('5S.WXS.csv',"w")
fileOut_5S.write('ID,cov.5S\n')

fileOut_58S=open('58S.WXS.csv',"w")
fileOut_58S.write('ID,cov.58S\n')

fileOut_28S=open('28S.WXS.csv',"w")
fileOut_28S.write('ID,cov.28S\n')

fileOut_18S=open('18S.WXS.csv',"w")
fileOut_18S.write('ID,cov.18S\n')

#raw files 
fileOut_18S_raw=gzip.open('18S.WXS.raw.csv.gz',"wt")
fileOut_18S_raw.write('ID,pos,cov\n')

fileOut_28S_raw=gzip.open('28S.WXS.raw.csv.gz',"wt")
fileOut_28S_raw.write('ID,pos,cov\n')

fileOut_58S_raw=gzip.open('58S.WXS.raw.csv.gz',"wt")
fileOut_58S_raw.write('ID,pos,cov\n')

fileOut_5S_raw=gzip.open('5S.WXS.raw.csv.gz',"wt")
fileOut_5S_raw.write('ID,pos,cov\n')





n_samples=0

for f in os.listdir(path):
    n_samples+=1
    file=open("./rDNA/cov/"+f)
    
    list_18S=[0]*(1869+1)
    list_5S=[0]*(2231+1)
    list_58S=[0]*(159+1)
    list_28S=[0]*(5025+1)
    
    
    reader=csv.reader(file, delimiter="\t")
    cov_5S=0
    cov_58S=0
    cov_28S=0
    cov_18S=0
    
    sample=f.replace('.sort.rDNA.cov','')
    
    for line in reader:
        ref=line[0]
        pos=int(line[1])
        n=int(line[2])
        if ref=="gi|23898|emb|X12811.1|":
            cov_5S+=n
            list_5S[pos]=n
        elif ref=="J01866.1":
            cov_58S+=n
            list_58S[pos]=n
        elif ref=="M11167.1":
            cov_28S+=n
            list_28S[pos]=n
        elif ref=="X03205.1":
            cov_18S+=n
            list_18S[pos]=n
        else:
            print "ERROR"
            print line
            sys.exit(1)
        
    k=0
    for i in list_18S:
        k+=1
        fileOut_18S_raw.write(sample+","+str(k)+","+str(i)+"\n")
    k=0
    for i in list_28S:
        k+=1
        fileOut_28S_raw.write(sample+","+str(k)+","+str(i)+"\n")
    k=0
    for i in list_58S:
        k+=1
        fileOut_58S_raw.write(sample+","+str(k)+","+str(i)+"\n")
    k=0
    for i in list_5S:
        k+=1
        fileOut_5S_raw.write(sample+","+str(k)+","+str(i)+"\n")



    
        
    fileOut_5S.write(f.replace('.sort.rDNA.cov','')+","+str(cov_5S/2231.0))
    fileOut_5S.write("\n")
    
    fileOut_58S.write(f.replace('.sort.rDNA.cov','')+","+str(cov_58S/159.0))
    fileOut_58S.write("\n")
    
    fileOut_28S.write(f.replace('.sort.rDNA.cov','')+","+str(cov_28S/5025.0))
    fileOut_28S.write("\n")
    
    fileOut_18S.write(f.replace('.sort.rDNA.cov','')+","+str(cov_18S/1869.0))
    fileOut_18S.write("\n")
    
    
fileOut_5S_raw.close()
fileOut_18S_raw.close()
fileOut_58S_raw.close()
fileOut_28S_raw.close()
