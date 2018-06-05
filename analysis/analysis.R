data=read.csv('WXS.merged.344.csv')

library(ggplot2)

pdf("5S.pdf",width=10,height=4)
library(ggplot2)
 ggplot(data, aes(x=disease, y= X5S.cov/(intergenic.cov/1000000), fill=disease))+ geom_boxplot()
dev.off()

pdf("MT.pdf",width=10,height=4)
library(ggplot2)
 ggplot(data, aes(x=disease, y= MT.cov/(intergenic.cov/1000000), fill=disease))+ geom_boxplot()
dev.off()

