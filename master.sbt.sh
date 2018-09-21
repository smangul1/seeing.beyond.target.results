ln -s  /u/home/s/serghei/code/seeing.beyond.target.results/bams/bam/RNA.Seq/*bam ./


ls *bam | awk -F ".bam" '{print $1}' >samples.txt


while read line
do
echo "~/project/code/seeing.beyond.target/sbt.sh -RNASeq -hg38 -f ${line}.bam sbt_rna_${line}">run.${line}.sh
qsub -cwd -V -N  SBT -l h_data=12G,highp,time=24:00:00 run.${line}.sh

done<samples.txt 
