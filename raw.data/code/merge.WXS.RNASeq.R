
data.WXS=read.csv('../RNASeq.vs.WGS/PILOT.WXS.clean.metadata.results.modified.header.csv')
data.RNASeq=read.csv('../RNASeq.vs.WGS/PILOT.RNASeq.clean.metadata.results.modified.header.csv')



myvars <- c("sample", "cov.MT.RNASeq")


newdata.RNASeq <- data.RNASeq[myvars]




data=merge(data.WXS,data.RNASeq,by='patientBarcode')

dim(data)




library(ggplot2)

x=10
y=10

png('../RNASeq.vs.WGS/MT.RNASeq.vs.WXS.png',width = x, height = y, units = 'in', res = 300)
ggplot(data) + geom_point(aes(cov.MT.RNASeq ,cov.MT.WXS,color=disease.y))+theme(axis.text=element_text(size=25),axis.title=element_text(size=25,face="bold"))+theme(axis.text.x = element_text(angle=90)) +theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),panel.background = element_blank(), axis.line = element_line(colour = "black"))+theme(plot.title = element_text(size = 40, face = "bold"))
dev.off()


png('../RNASeq.vs.WGS/rDNA.RNASeq.vs.WXS.png',width = x, height = y, units = 'in', res = 300)+theme(axis.text=element_text(size=25),axis.title=element_text(size=25,face="bold"))+theme(axis.text.x = element_text(angle=90)) +theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),panel.background = element_blank(), axis.line = element_line(colour = "black"))+theme(plot.title = element_text(size = 40, face = "bold"))
ggplot(data) + geom_point(aes(cov.rDNA.RNASeq ,cov.rDNA.WXS,color=disease.y))
dev.off()

png('../RNASeq.vs.WGS/5S.RNASeq.vs.WXS.png',width = x, height = y, units = 'in', res = 300)+theme(axis.text=element_text(size=25),axis.title=element_text(size=25,face="bold"))+theme(axis.text.x = element_text(angle=90)) +theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),panel.background = element_blank(), axis.line = element_line(colour = "black"))+theme(plot.title = element_text(size = 40, face = "bold"))
ggplot(data) + geom_point(aes(cov.5S.RNASeq ,cov.5S.WXS,color=disease.y))
dev.off()