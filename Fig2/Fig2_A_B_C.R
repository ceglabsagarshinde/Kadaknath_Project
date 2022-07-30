tiff(file="figure2.tif",res=30,width=5000,height=3700)
#par(mai=c(8,11,6,3), mgp=c(40,17,3),xpd=T)
read.table(file="G1.GOLD.mk.bam.20.bam.1kbcov",header=FALSE)->S
S[S$V1==20,]->S20
read.table(file="SRR3954707.OTHE.mk.bam.20.bam.1kbcov",header=FALSE)->SA
SA[SA$V1==20,]->SA20
read.table(file="Fst.txt",header=TRUE)->M
M[which(M$position>10263555 & M$position<11980000),]->m
par(mfrow=c(3,1),xpd=F)
par(mai=c(1,10,2,2), mgp=c(40,17,3),xpd=F)
plot(S20$V2[(S20$V2>10263555) & S20$V2<11980000],log(S20$V4[S20$V2>10263555 & S20$V2<11980000]),pch=16,xlab="",ylab =c(expression(bold("log (coverage)"))),ylim=c(4.5,9.0),cex.main=25, cex.lab=20, cex.axis=15,cex =10, font.axis=2,,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=15,font = 2)
abline(v=10766772,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=10894151,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11306686,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11477501,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
#text(10363555,8.7,"Kadaknath (Golden)",cex=25,font=2)
box(lwd=15)
par(mai=c(1,10,2,2), mgp=c(40,17,3),xpd=F)
plot(SA20$V2[(SA20$V2>10263555) & SA20$V2<11980000],log(SA20$V4[SA20$V2>10263555 & SA20$V2<11980000]),pch=16,xlab="",ylab =c(expression(bold("log (coverage)"))),ylim=c(4.5,9.0), cex.main=25, cex.lab=20, cex.axis=15,cex =10,font.axis=2,,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=15,font = 2)
abline(v=10766772,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=10894151,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11306686,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
abline(v=11477501,col="red",lwd=15,lty=3,ylim=c(4.5,8.0))
#text(10363555,8.7,"Red junglefowl (RJF)",cex=25,font=2)
box(lwd=15)
par(mai=c(6,10,2,2), mgp=c(40,17,3),xpd=F)
plot(m$position,m$Fst, pch=16, xlab=c(expression(bold("Position along chromosome"))),ylab=c(expression(bold("Differentiation (F"[ST]*")"))),ylim=c(0,1.0),cex.main=25, cex.lab=20, cex.axis=15,cex=10,font.axis=2,col=ifelse(((m$position>10766770 & m$position<10894153)|(m$position>11306684 & m$position<11477502)),"blue","black"),xaxt='n',yaxt='n')
axis(2, lwd = 20,cex.axis=15,font = 2)
axis(1, lwd = 20,cex.axis=15,font = 2)
abline(v=10766772,col="red",lwd=15,lty=3,ylim=c(0,1.0))
abline(v=10894151,col="red",lwd=15,lty=3,ylim=c(0,1.0))
abline(v=11306686,col="red",lwd=15,lty=3,ylim=c(0,1.0))
abline(v=11477501,col="red",lwd=15,lty=3,ylim=c(0,1.0))
#text(10363555,0.9,"Black Vs Non-black",cex=25,font=2)
box(lwd=15)
dev.off()



