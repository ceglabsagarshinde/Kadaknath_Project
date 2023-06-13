

library(gtools)


a<-read.table("Kadaknath.thetasWindow.gz.pestPG")
b<-read.table("YeonsanOgye.thetasWindow.gz.pestPG")
B<-read.table("kadk_9ind.china_9ind.50kb.column.txt",header=T)
d<-read.table("YeonsanOgye_XBBC.fst.idx.50kb.column.txt",header=T)
K<-read.table("Kadaknath_YeonsanOgye.fst.idx.50kb.column.txt",header=T)
c<-read.table("XBBC.thetasWindow.gz.pestPG")





tiff(file="Final_50Kb_all.tif",res=100,width=5000,height=4000)
scaffolds<-c("20")
for (scaff in scaffolds){
par(mfrow=c(3,1))
par(mai=c(0.2,3.5,1,2), mgp=c(15,8,0.4))
plot(B$BP[B$CHR==scaff],B$P[B$CHR==scaff], type="l",col="black",xlim=c(6000000,11980000), ylab =expression(paste("F"[ST])),cex.lab=10,lwd=15,xlab="",xaxt='n',cex.axis=6,font.axis=2,font.lab=2,yaxt='n',ylim=c(0,1))
lines(d$BP[d$CHR==scaff],d$P[d$CHR==scaff],col="grey",lwd=15)
lines(K$BP[K$CHR==scaff],K$P[K$CHR==scaff],col="purple",lwd=15)
legend("topleft",legend=c("KADK Vs YOSK","YOSK Vs XBBC","KADK Vs CHIN"),col=c("purple","grey","black"),lty=1,cex=5,lwd=15,bty = "n")
axis(2,at = c(0,0.2,0.4,0.6,0.8,1), lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
axis(1, lwd = 10,tck = -0.03,cex.axis=6,font = 2,las=2,labels = F)
abline(h=0.594563,col="purple",lwd=10,lty = 2)
abline(h=0.562525,col="grey",lwd=10,lty = 2)
abline(h=0.363558,col="black",lwd=10,lty = 2)
#rect(9989963, 0.09, 10000753,0.13, cex=1, col="black",lwd=10)
#rect(10009760, 0.09, 10015306,0.13, cex=1, col="black",lwd=10)
#rect(10037729, 0.09, 10047698,0.13, cex=1, col="black",lwd=10)
#rect(10401918, 0.09, 10412889,0.13, cex=1, col="black",lwd=10)
#rect(10516581, 0.09, 10518982,0.13, cex=1, col="black",lwd=10)
#rect(10577212, 0.09, 10600763,0.13, cex=1, col="black",lwd=10)
#rect(10505844, 0.09,10507903 ,0.13, cex=1, col="black",lwd=10)
rect(10766772, -1,10894151 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")
rect(11306686, -1,11477501 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")


box(lwd=10)


par(mai=c(0.2,3.5,1,2), mgp=c(15,8,0.4))
plot(a$V3[a$V2==scaff],a$V5[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue",xlim=c(6000000,11980000), ylab =expression(paste(pi)),cex.lab=10,lwd=15,xlab="",xaxt='n',yaxt='n',cex.axis=6,,font.axis=2,font.lab=2,ylim=c(0,0.007))
axis(2,at = c(0,0.002,0.004,0.006),lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
axis(1, lwd = 10,tck = -0.03,cex.axis=6,font = 2,las=2,labels = F)
lines(b$V3[b$V2==scaff],b$V5[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="brown",lwd=15)
lines(c$V3[c$V2==scaff],c$V5[c$V2==scaff]/c$V14[c$V2==scaff], type="l",col="red",lwd=15)
rect(10766772, -1,10894151 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")
rect(11306686, -1,11477501 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")

legend("topleft",legend=c("KADK","YOSK","XBBC"),col=c("blue","brown","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)

par(mai=c(2,3.5,1,2), mgp=c(15,8,0.4))
plot(a$V3[a$V2==scaff],a$V4[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue",xlim=c(6000000,11980000), ylab =expression(paste(theta)),cex.lab=10,lwd=15,xlab="",xaxt='n',yaxt='n',cex.axis=6,,font.axis=2,font.lab=2,ylim=c(0,0.007))
lines(b$V3[b$V2==scaff],b$V4[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="brown",lwd=15)
lines(c$V3[c$V2==scaff],c$V4[c$V2==scaff]/c$V14[c$V2==scaff], type="l",col="red",lwd=15)
axis(2,at = c(0,0.002,0.004,0.006),lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
axis(1, lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=1)
#abline(v=8030000,col="red")
#abline(v=8600000,col="red")
rect(10766772, -1,10894151 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")
rect(11306686, -1,11477501 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")

legend("topleft",legend=c("KADK","YOSK","XBBC"),col=c("blue","brown","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)
}
dev.off()







library(gtools)


a<-read.table("Kadaknath.thetasWindow.gz.pestPG")
b<-read.table("YeonsanOgye.thetasWindow.gz.pestPG")
B<-read.table("kadk_9ind.china_9ind.50kb.column.txt",header=T)
d<-read.table("YeonsanOgye_XBBC.fst.idx.50kb.column.txt",header=T)
K<-read.table("Kadaknath_YeonsanOgye.fst.idx.50kb.column.txt",header=T)
c<-read.table("XBBC.thetasWindow.gz.pestPG")


tiff(file="Final_complete_chromosome50Kb_all.tif",res=100,width=5000,height=4000)
scaffolds<-c("20")
for (scaff in scaffolds){
par(mfrow=c(3,1))
par(mai=c(0.2,3.5,1,2), mgp=c(15,8,0.4))
plot(B$BP[B$CHR==scaff],B$P[B$CHR==scaff], type="l",col="black", ylab =expression(paste("F"[ST])),cex.lab=10,lwd=15,xlab="",xaxt='n',cex.axis=6,font.axis=2,font.lab=2,yaxt='n',ylim=c(0,1))
lines(d$BP[d$CHR==scaff],d$P[d$CHR==scaff],col="grey",lwd=15)
lines(K$BP[K$CHR==scaff],K$P[K$CHR==scaff],col="purple",lwd=15)
legend("topleft",legend=c("KADK Vs YOSK","YOSK Vs XBBC","KADK Vs CHIN"),col=c("purple","grey","black"),lty=1,cex=5,lwd=15,bty = "n")
axis(2,at = c(0,0.2,0.4,0.6,0.8,1), lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
axis(1, lwd = 10,tck = -0.03,cex.axis=6,font = 2,las=2,labels = F)
abline(h=0.594563,col="purple",lwd=10,lty = 2)
abline(h=0.562525,col="grey",lwd=10,lty = 2)
abline(h=0.363558,col="black",lwd=10,lty = 2)
#rect(9989963, 0.09, 10000753,0.13, cex=1, col="black",lwd=10)
#rect(10009760, 0.09, 10015306,0.13, cex=1, col="black",lwd=10)
#rect(10037729, 0.09, 10047698,0.13, cex=1, col="black",lwd=10)
#rect(10401918, 0.09, 10412889,0.13, cex=1, col="black",lwd=10)
#rect(10516581, 0.09, 10518982,0.13, cex=1, col="black",lwd=10)
#rect(10577212, 0.09, 10600763,0.13, cex=1, col="black",lwd=10)
#rect(10505844, 0.09,10507903 ,0.13, cex=1, col="black",lwd=10)
rect(10766772, -1,10894151 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")
rect(11306686, -1,11477501 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")
box(lwd=10)


par(mai=c(0.2,3.5,1,2), mgp=c(15,8,0.4))
plot(a$V3[a$V2==scaff],a$V5[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue", ylab =expression(paste(pi)),cex.lab=10,lwd=15,xlab="",xaxt='n',yaxt='n',cex.axis=6,,font.axis=2,font.lab=2,ylim=c(0,0.007))
axis(2,at = c(0,0.002,0.004,0.006),lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
axis(1, lwd = 10,tck = -0.03,cex.axis=6,font = 2,las=2,labels = F)
lines(b$V3[b$V2==scaff],b$V5[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="brown",lwd=15)
lines(c$V3[c$V2==scaff],c$V5[c$V2==scaff]/c$V14[c$V2==scaff], type="l",col="red",lwd=15)
rect(10766772, -1,10894151 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")
rect(11306686, -1,11477501 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")
legend("topleft",legend=c("KADK","YOSK","XBBC"),col=c("blue","brown","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)

par(mai=c(2,3.5,1,2), mgp=c(15,8,0.4))
plot(a$V3[a$V2==scaff],a$V4[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue", ylab =expression(paste(theta)),cex.lab=10,lwd=15,xlab="",xaxt='n',yaxt='n',cex.axis=6,,font.axis=2,font.lab=2,ylim=c(0,0.007))
lines(b$V3[b$V2==scaff],b$V4[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="brown",lwd=15)
lines(c$V3[c$V2==scaff],c$V4[c$V2==scaff]/c$V14[c$V2==scaff], type="l",col="red",lwd=15)
axis(2,at = c(0,0.002,0.004,0.006),lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
axis(1, lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=1)
#abline(v=8030000,col="red")
#abline(v=8600000,col="red")
rect(10766772, -1,10894151 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")
rect(11306686, -1,11477501 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")
legend("topleft",legend=c("KADK","YOSK","XBBC"),col=c("blue","brown","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)
}
dev.off()
