cd off.target.cov



for f in *gz
do
n=$(zcat $f | awk -F "," '{s+=$4;l+=$3-$2} END {print s/l}')

echo $f,$n

done
