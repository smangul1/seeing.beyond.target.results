for f in *MT
do  
bcftools norm -m -any $f | bcftools view - -o ${f}.bcf
~/anaconda2/bin/python ~/code/seeing.beyond.target/bcf2maf.py $f.bcf ${f}.diversity
done
cat *per.sample.csv | grep -v ID | sed 's/.MT//' >../../MT.diversity.RNASeq.csv 
