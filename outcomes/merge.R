#metadata - change the header. replace by ID

data.WGS=read.csv('PILOT.WXS.clean.csv')
metadata=read.csv('TCIA.sample_info.csv')


head(metadata)
head(data.WGS)
data=merge(data.WGS,metadata,by='patientBarcode')

head(data)

write.csv(data, file = "PILOT.WXS.clean.metadata.csv")

#-------------

data.RNASeq=read.csv('PILOT.RNASeq.clean.csv')
metadata=read.csv('TCIA.sample_info.csv')


head(metadata)
head(data.WGS)
data=merge(data.RNASeq,metadata,by='patientBarcode')

head(data)

write.csv(data, file = "PILOT.RNASeq.clean.metadata.csv")


