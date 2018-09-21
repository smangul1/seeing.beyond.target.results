cd MT



for f in *gz
do
n=$(zcat $f | awk '{s+=$4} END {print s/16806}')

echo $f,$n

done
