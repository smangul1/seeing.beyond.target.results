ls *bam | awk -F ".bam" '{print $1}' >samples.txt


while read line
do

n=$(samtools idxstats ${line}.bam | awk -F '\t' '{s+=$3+$4}END{print s}')
echo "$line,$n"

done<samples.txt  
