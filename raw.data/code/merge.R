#metadata - change the header. replace by ID

data.MT=read.csv('../summary.MT.cov.csv')
data.offtarget=read.csv('../summary.offtarget.cov.csv')
data.rDNA=read.csv('../summary.rDNA.csv')
metadata=read.csv('../../outcomes/PILOT.WXS.clean.metadata.csv')



data=merge(data.MT,data.offtarget,by='ID')
data=merge(data.rDNA,data,by='ID')


data=merge(metadata,data,by='ID')


head(data)




write.csv(data, file = "../PILOT.WXS.clean.metadata.results.csv")



#------- plots

#"cov.5S","cov.MT","cov.offtarget"

library(ggplot2)


png('../offtarget.cov.png',width = 5, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= cov.offtarget, fill=disease))+ geom_boxplot()+ggtitle("offtarget.cov")
dev.off()


png('../5S.cov.png',width = 5, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= cov.5S/cov.offtarget, fill=disease))+ geom_boxplot()+ggtitle("5S.cov")
dev.off()


png('../MT.cov.png',width = 5, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= cov.MT/cov.offtarget, fill=disease))+ geom_boxplot()+ggtitle("MT.cov")
dev.off()

png('../rDNA.cov.png',width = 5, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= cov.rDNA/cov.offtarget, fill=disease))+ geom_boxplot()+ggtitle("rDNA.cov")
dev.off()


#-------------------------------------------------------------------------------
#plots

#"cov.5S","cov.MT","cov.offtarget"

library(ggplot2)


png('../offtarget.cov.clinical_data_pathology_T_stage.png',width = 5, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= cov.offtarget, fill=clinical_data_pathology_T_stage))+ geom_boxplot()+ggtitle("offtarget.cov")
dev.off()


png('../5S.cov.clinical_data_pathology_T_stage.png',width = 5, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= cov.5S/cov.offtarget, fill=clinical_data_pathology_T_stage))+ geom_boxplot()+ggtitle("5S.cov")
dev.off()


png('../MT.cov.clinical_data_pathology_T_stage.png',width = 5, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= cov.MT/cov.offtarget, fill=clinical_data_pathology_T_stage))+ geom_boxplot()+ggtitle("MT.cov")
dev.off()

png('../rDNA.cov.clinical_data_pathology_T_stage.png',width = 5, height = 5, units = 'in', res = 300)
ggplot(data, aes(x=disease, y= cov.rDNA/cov.offtarget, fill=clinical_data_pathology_T_stage))+ geom_boxplot()+ggtitle("rDNA.cov")
dev.off()


