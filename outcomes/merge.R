#metadata - change the header. replace by ID

data.WGS=read.csv('PILOT.WXS.clean.csv')

metadata=read.table('TCIA.sample_info.txt',header=TRUE)


head(metadata)
head(data)
data=merge(data,metadata,by='patientBarcode')

head(data)

write.csv(data, file = "PILOT.WXS.clean.metadata.csv")

#-------------

