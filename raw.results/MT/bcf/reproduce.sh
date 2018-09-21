for f in *MT;do  ~/anaconda2/bin/python ~/code/seeing.beyond.target/bcf2maf.py $f ${f}.diversity;done
cat *per.sample.csv | grep -v ID >../../MT.diversity.WXS.csv 


