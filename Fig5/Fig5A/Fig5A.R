a<-read.table("H1_KADK_H2_CHIN_H3_BROC_CWLH_WHLL_RIRL.trial",as.is=T)
b<-read.table("H1_CHIN_H2_BROC_CWLH_WHLL_RIRL_H3_KADK.trial",as.is=T)
c<-read.table("H1_KADK_H2_BROC_CWLH_WHLL_RIRL_H3_CHIN.trial",as.is=T)

#pdf("Abbababa.pdf",width=25,height=7)
tiff(file="Fig5A.tif",res=150,width=2700,height=850)
par(mfrow=c(1,3),mai=c(1.0,1,0.2,0.2),mgp=c(5,1,0))
boxplot(as.numeric(a$V4)~a$V1,border="black",ylab=expression(bold("D-statistic")), xlab="H1=KADK H2=CHIN H3=BROC/CWLH/RIRL/WHLL",cex.lab=1.8,cex.axis=1.5,cex.main=3,outline=F,las=1,col="grey")
box(lty=1,lwd=2,col="black")
boxplot(as.numeric(b$V4)~b$V1,border="black",ylab=expression(bold("D-statistic")), xlab="H1=CHIN H2=BROC/CWLH/RIRL/WHLL H3=KADK",cex.lab=1.8,cex.axis=1.5,cex.main=3,outline=F,las=1,col="grey")
box(lty=1,lwd=2,col="black")
boxplot(as.numeric(c$V4)~c$V1,border="black",ylab=expression(bold("D-statistic")), xlab="H1=KADK H2=BROC/CWLH/RIRL/WHLL H3=CHIN",cex.lab=1.8,cex.axis=1.5,cex.main=3,outline=F,las=1,col="grey")
box(lty=1,lwd=2,col="black")
dev.off()


 

