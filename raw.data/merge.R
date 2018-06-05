data.pilot=read.table('PILOT.WXS.new2.id',header=TRUE)
data.5S=read.csv('5S.606.csv')
data=merge(data.pilot,data.5S,by="ID")
data.intergenic.cov=read.csv('background.coverage.WXS.445.csv')
data=merge(data,data.intergenic.cov,by="ID")
MT.data=read.csv('MT.cov.607.csv')
data=merge(data,MT.data,by='ID')

#metadata - change the header. replace by ID
metadata=read.table('../outcomes/TCIA.heterogeneity.txt',header=TRUE)

head(metadata)
head(data)

data=merge(data,metadata,by='patientBarcode')

head(data)

write.csv(data, file = "WXS.merged.344.csv")

