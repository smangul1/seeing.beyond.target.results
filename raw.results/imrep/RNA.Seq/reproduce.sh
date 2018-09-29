
ls *cdr3 | awk -F ".cdr3" '{print $1}' >samples.txt


while read line
do

python ~/code/imrep/clonality.py ${line}.cdr3 ${line}
done<samples.txt

cat */*cdr3.txt | grep -v SAMPLE >../../imrep.RNASeq.csv 
