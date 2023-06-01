tiff(file="Fig6.tif",res=30,width=5000,height=3700)
#par(mai=c(8,11,6,3), mgp=c(40,17,3),xpd=T)
read.table(file="G1.GOLD.mk.bam.20.bam.1kbcov",header=FALSE)->S
S[S$V1==20,]->S20

par(mfrow=c(3,2),xpd=F)
par(mai=c(0.7,8,2,2.5), mgp=c(40,17,3),xpd=F)
plot(S20$V2[(S20$V2>10263555) & S20$V2<11980000],log(S20$V4[S20$V2>10263555 & S20$V2<11980000]),pch=16,xlab="",ylab =c(expression(bold("log (coverage)"))),ylim=c(4.5,9.0),cex.main=25, cex.lab=20, cex.axis=15,cex =10, font.axis=2,,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=15,font = 2)
abline(v=10766772,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=10894151,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11306686,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11477501,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
#text(10363555,8.7,"Kadaknath (Golden)",cex=25,font=2)
box(lwd=20)


read.table(file="SRR3041425.LCTF.mk.bam.20.bam.1kbcov",header=FALSE)->SA
SA[SA$V1==20,]->SA20
par(mai=c(0.7,8,2,2.5), mgp=c(40,17,3),xpd=F)
plot(SA20$V2[(SA20$V2>10263555) & SA20$V2<11980000],log(SA20$V4[SA20$V2>10263555 & SA20$V2<11980000]),pch=16,xlab="",ylab =c(expression(bold("log (coverage)"))),ylim=c(4.5,9.0), cex.main=25, cex.lab=20, cex.axis=15,cex =10,font.axis=2,,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=15,font = 2)
abline(v=10766772,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=10894151,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11306686,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11477501,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
#text(10363555,8.7,"LCTF",cex=25,font=2)
box(lwd=20)

read.table(file="SRR12103812.XBBC.mk.bam.20.bam.1kbcov",header=FALSE)->S
S[S$V1==20,]->S20
par(mai=c(0.7,8,1,2.5), mgp=c(40,17,3),xpd=F)
plot(S20$V2[(S20$V2>10263555) & S20$V2<11980000],log(S20$V4[S20$V2>10263555 & S20$V2<11980000]),pch=16,xlab="",ylab =c(expression(bold("log (coverage)"))),ylim=c(4.5,9.0),cex.main=25, cex.lab=20, cex.axis=15,cex =10, font.axis=2,,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=15,font = 2)
abline(v=10766772,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=10894151,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11306686,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11477501,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
#text(10363555,8.7,"XBBC",cex=25,font=2)
box(lwd=20)


read.table(file="SRR17916231.AYCM.mk.bam.20.bam.1kbcov",header=FALSE)->SA
SA[SA$V1==20,]->SA20

par(mai=c(0.7,8,1,2.5), mgp=c(40,17,3),xpd=F)
plot(SA20$V2[(SA20$V2>10263555) & SA20$V2<11980000],log(SA20$V4[SA20$V2>10263555 & SA20$V2<11980000]),pch=16,xlab="",ylab =c(expression(bold("log (coverage)"))),ylim=c(4.5,9.0), cex.main=25, cex.lab=20, cex.axis=15,cex =10,font.axis=2,,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=15,font = 2)
abline(v=10766772,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=10894151,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11306686,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11477501,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
#text(10363555,8.7,"AYCM",cex=25,font=2)
box(lwd=20)


read.table(file="YeonsanOgye.YOSK.mk.bam.20.bam.1kbcov",header=FALSE)->S
S[S$V1==20,]->S20
par(mai=c(4,8,2,2.5), mgp=c(40,17,3),xpd=F)
plot(S20$V2[(S20$V2>10263555) & S20$V2<11980000],log(S20$V4[S20$V2>10263555 & S20$V2<11980000]),pch=16,xlab="",ylab =c(expression(bold("log (coverage)"))),ylim=c(4.5,9.0),cex.main=25, cex.lab=20, cex.axis=15,cex =10, font.axis=2,,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=15,font = 2)
axis(1, lwd = 20,tck = -0.02,cex.axis=15,font = 2)
abline(v=10766772,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=10894151,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11306686,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11477501,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
#text(10363555,8.7,"YOSK",cex=25,font=2)
box(lwd=20)


read.table(file="SRR3954707.RJFC.mk.bam.20.bam.1kbcov",header=FALSE)->SA
SA[SA$V1==20,]->SA20

par(mai=c(4,8,2,2.5), mgp=c(40,17,3),xpd=F)
plot(SA20$V2[(SA20$V2>10263555) & SA20$V2<11980000],log(SA20$V4[SA20$V2>10263555 & SA20$V2<11980000]),pch=16,xlab="",ylab =c(expression(bold("log (coverage)"))),ylim=c(4.5,9.0), cex.main=25, cex.lab=20, cex.axis=15,cex =10,font.axis=2,,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=15,font = 2)
axis(1, lwd = 20,tck = -0.02,cex.axis=15,font = 2)
abline(v=10766772,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=10894151,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11306686,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11477501,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
#text(10363555,8.7,"Red junglefowl (RJF)",cex=25,font=2)
box(lwd=20)
dev.off()

