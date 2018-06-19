
#code/get.coverage.off.target.sh >summary.offtarget.cov.csv
#code/get.coverage.MT.sh >summary.MT.cov.csv

#sed 's/.MT.pileup.gz//' summary.MT.cov.csv  >summary.MT.cov.csv2
#mv summary.MT.cov.csv2 summary.MT.cov.csv
#sed 's/.offtarget.cov.gz//' summary.offtarget.cov.csv>summary.offtarget.cov.csv2
#mv summary.offtarget.cov.csv2 summary.offtarget.cov.csv 


#code/get.coverage.rDNA.sh >summary.rDNA.csv

#sed 's/.rDNA.pileup.gz//' summary.rDNA.csv >summary.rDNA.csv2
#mv summary.rDNA.csv2 summary.rDNA.csv

cd code
Rscript merge.R 


