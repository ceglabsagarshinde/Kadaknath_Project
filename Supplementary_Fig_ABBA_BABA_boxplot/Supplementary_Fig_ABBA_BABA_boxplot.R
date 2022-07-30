

a<-read.table("KADK_CHIN_COMM_boxplot",as.is=T)
b<-read.table("CHIN_COMM_KADK_RJF.boxplot",as.is=T)
c<-read.table("KADK_COMM_CHIN_RJF.boxplot",as.is=T)

#pdf("Abbababa.pdf",width=25,height=7)
tiff(file="Supplementary_ABBA_BABA_box.tif",res=150,width=2700,height=850)
par(mfrow=c(1,3),mai=c(1.0,1,0.2,0.2),mgp=c(5,1,0))
boxplot(as.numeric(a$V2)~a$V1,border="black",ylab=expression(bold("D-statistic")), xlab="H1=KADK H2=CHIN H3=BROC/CWLH/RIRL/WHLL",cex.lab=1.8,cex.axis=1.5,cex.main=3,outline=F,las=1,col="grey")
box(lty=1,lwd=2,col="black")
boxplot(as.numeric(b$V2)~b$V1,border="black",ylab=expression(bold("D-statistic")), xlab="H1=CHIN H2=BROC/CWLH/RIRL/WHLL H3=KADK",cex.lab=1.8,cex.axis=1.5,cex.main=3,outline=F,las=1,col="grey")
box(lty=1,lwd=2,col="black")
boxplot(as.numeric(c$V2)~c$V1,border="black",ylab=expression(bold("D-statistic")), xlab="H1=KADK H2=BROC/CWLH/RIRL/WHLL H3=CHIN",cex.lab=1.8,cex.axis=1.5,cex.main=3,outline=F,las=1,col="grey")
box(lty=1,lwd=2,col="black")
dev.off()



