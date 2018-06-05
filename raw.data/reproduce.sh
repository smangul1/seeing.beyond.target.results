sed 's/.bam//' PILOT.WXS.id >PILOT.WXS.new.id 
cat 5S.cov.csv 5S.cov.2.csv >5S.606.csv
cat background.coverage.WXS.csv background.coverage.WXS.2.csv >background.coverage.WXS.445.csv
cat MT.cov.csv MT.cov.2.csv >MT.cov.607.csv
data.MT.cov=read.csv('MT.cov.607.csv')
data=merge(data,data.MT.cov,by="ID")

#take 3part 
awk '{print $2}' PILOT.WXS.new.id | awk -F "-" '{print $1"-"$2"-"$3}' >t
paste t  PILOT.WXS.new.id >PILOT.WXS.new2.id 

