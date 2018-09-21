#prepare  PILOT.WXS.clean.csv and PILOT.RNASeq.clean.csv manually! 

#merge with metadata
Rscript merge.R 

awk -F "," '{print $2}' PILOT.RNASeq.clean.csv >RNA.Seq.fileNames.txt 


