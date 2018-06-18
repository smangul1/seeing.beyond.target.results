cd rDNA




echo "ID,cov.rDNA,cov.5S"
for f in *gz
do
n1=$(zcat $f | grep "gi|555853|gb|U13369.1|HSU13369" | awk '{s+=$4} END {print s/2232}')
n2=$(zcat $f | grep "gi|23898|emb|X12811.1|" | awk '{s+=$4} END {print s/43000}')



echo $f,$n1,$n2

done
