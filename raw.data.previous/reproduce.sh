
#code/get.coverage.off.target.sh >summary.offtarget.cov.csv
#code/get.coverage.MT.sh >summary.MT.cov.csv

#sed 's/.MT.pileup.gz//' summary.MT.cov.csv  >summary.MT.cov.csv2
#mv summary.MT.cov.csv2 summary.MT.cov.csv
#sed 's/.offtarget.cov.gz//' summary.offtarget.cov.csv>summary.offtarget.cov.csv2
#mv summary.offtarget.cov.csv2 summary.offtarget.cov.csv 


#code/get.coverage.rDNA.sh >summary.rDNA.csv

#sed 's/.rDNA.pileup.gz//' summary.rDNA.csv >summary.rDNA.csv2
#mv summary.rDNA.csv2 summary.rDNA.csv

#number of total reads

#rm -fr total.number.reads.396.txt

#cd /u/home/s/serghei/project/sbt/sbt/new
#ls | grep bam | grep -v bai | grep -v tmp >~/code/seeing.beyond.target.results/raw.data/bams.396.txt 

#while read line
#do
#samtools=~/collab/code/rop.old/tools/samtools
#n=$($samtools idxstats $line | awk '{s+=$3+$4} END {print s}')
#echo $line","$n >>~/code/seeing.beyond.target.results/raw.data/total.number.reads.396.txt 

#done<~/code/seeing.beyond.target.results/raw.data/bams.396.txt


#cd ~/code/seeing.beyond.target.results/raw.data/
grep -v ",$"  total.number.reads.396.txt > total.number.reads.396.txt2
mv total.number.reads.396.txt2 total.number.reads.396.txt


#cd code
#Rscript merge.R 
#code/createREADME.sh $PWD/



