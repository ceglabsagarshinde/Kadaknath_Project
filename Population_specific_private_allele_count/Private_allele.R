## For the visualization of Population specific private allele count genrate barplot.
tiff("private_allele.tiff",width=1500,height=1500,res=150)
par(mar=c(10,7,1,1),mgp=c(4, 0.5, 0),xpd = T) 
read.table("private.barplot")->a
barplot(a$V1,names.arg=a$V2,las=3,ylab="Number of private allele",xlab="Populations")
dev.off()


tiff("private_allele_subtract_dbsnp.tiff",width=1500,height=1500,res=150)
par(mar=c(10,7,1,1),mgp=c(4, 0.5, 0),xpd = T) 
read.table("private_barplot_substract_snpdb.txt")->a
barplot(a$V1,names.arg=a$V2,las=3,ylab="Number of private allele",xlab="Populations")
dev.off()

