#metadata - change the header. replace by ID

data.MT=read.csv('../summary.MT.cov.csv')
data.reads=read.csv('../total.number.reads.396.txt')
data.rDNA=read.csv('../summary.rDNA.csv')
metadata=read.csv('../../outcomes/PILOT.RNASeq.clean.metadata.csv')



data=merge(data.MT,data.reads,by='ID')
data=merge(data.rDNA,data,by='ID')


data=merge(metadata,data,by='ID')


head(data)




write.csv(data, file = "../PILOT.RNASeq.clean.metadata.results.csv")



#------- plots

#"cov.5S","cov.MT","cov.offtarget"

library(ggplot2)


png('../total.RNA-Seq.png',width = 15, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= n.reads, fill=disease))+ geom_boxplot()+ggtitle("total reads RNA-Seq")
dev.off()


png('../5S.cov.RNA-Seq.png',width = 15, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= 1000000*cov.5S/n.reads, fill=disease))+ geom_boxplot()+ggtitle("5S.RNA-Seq")
dev.off()


png('../MT.cov.RNA-Seq.png',width = 15, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= 1000000*cov.MT/n.reads, fill=disease))+ geom_boxplot()+ggtitle("MT.RNA-Seq")
dev.off()

png('../rDNA.cov.RNA-Seq.png',width = 15, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= 1000000*cov.rDNA/n.reads, fill=disease))+ geom_boxplot()+ggtitle("rDNA.RNA-Seq")
dev.off()


#-------------------------------------------------------------------------------
#plots

#"cov.5S","cov.MT","cov.offtarget"

library(ggplot2)




png('../5S.cov.clinical_data_pathology_T_stage.RNA-Seq.png',width = 15, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= 1000000*cov.5S/n.reads, fill=clinical_data_pathology_T_stage))+ geom_boxplot()+ggtitle("5S.RNA-Seq")
dev.off()


png('../MT.cov.clinical_data_pathology_T_stage.RNA-Seq.png',width = 15, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= 1000000*cov.MT/n.reads, fill=clinical_data_pathology_T_stage))+ geom_boxplot()+ggtitle("MT.RNA-Seq")
dev.off()

png('../rDNA.cov.clinical_data_pathology_T_stage.RNA-Seq.png',width = 15, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= 1000000*cov.rDNA/n.reads, fill=clinical_data_pathology_T_stage))+ geom_boxplot()+ggtitle("rDNA.RNA-Seq")
dev.off()


