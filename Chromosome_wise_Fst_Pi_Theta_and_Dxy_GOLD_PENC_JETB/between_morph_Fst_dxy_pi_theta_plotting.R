
library(gtools)
a<-read.table("Golden.thetasWindow.gz.pestPG")
b<-read.table("jetblack.thetasWindow.gz.pestPG")
B<-read.table("golden.jet.50kb.column_common.window.txt",header=T)
read.table("GOLD_JETB.50kb_auto_z.csv",header=T)-> f




pdf(file="gold_jet.pdf",width=500,height=150)
par(mfrow=c(4,1))
scaffolds<-c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","30","31","32","33","Z")
for (scaff in scaffolds){

#par(mai=c(2,2,1,1), mgp=c(1,1.2,1))
par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(B$BP[B$CHR==scaff],B$P[B$CHR==scaff],ylim=c(0,1),ylab =expression("F"[ST]),cex.lab=10,lwd=15,xlab="",cex.axis=6,font.axis=2,font.lab=2,type="l")
abline(h=0.3436895,col="black",lwd=2,lty=2)
legend("topleft",legend=c("GOLD vs. JETB"),col=c("black"),cex=5,lwd=15,bty = "n",)
box(lwd=10)



A1=c(max(a$V5[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V5[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
A2=c(min(a$V5[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V5[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(a$V3[a$V2==scaff],a$V5[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue", ylab = expression(paste(bold(pi))),cex.lab=10,lwd=15,xlab="",cex.axis=6,ylim=c(min(A2)+0.0000005,max(A1)+0.0000005),font.axis=2,font.lab=2)


lines(b$V3[b$V2==scaff],b$V5[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("GOLD","JETB"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


a3=c(max(a$V4[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V4[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
a4=c(min(a$V4[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V4[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(a$V3[a$V2==scaff],a$V4[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue",ylab = expression(paste(bold(theta["W"]))),cex.lab=10,lwd=15,cex.axis=6,ylim=c(min(a4)+0.0000005,max(a3)+0.0000005),font.axis=2,font.lab=2)


lines(b$V3[b$V2==scaff],b$V4[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("GOLD","JETB"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


par(mai=c(2,3,1,2), mgp=c(10,4,0.3))
plot(f$start[f$scaffold==scaff],f$dxy_GOLD_JETB[f$scaffold==scaff], type="l",col="black",ylab=expression("D"[xy]),cex.lab=10,lwd=15,cex.axis=6,font.axis=2,font.lab=2,xlab=paste("position along with chromosome",scaff,sep=""))
legend("topleft",legend=c("GOLD vs. JETB"),col=c("black"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)
}
dev.off()







library(gtools)
a<-read.table("pencill.thetasWindow.gz.pestPG")
b<-read.table("jetblack.thetasWindow.gz.pestPG")
B<-read.table("pencill.jet.50kb.column_common.window.txt",header=T)
read.table("PENC_JETB.ZCHR_50kb_auto_z.csv",header=T)-> f




pdf(file="pen_jet.pdf",width=500,height=150)
par(mfrow=c(4,1))
scaffolds<-c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","30","31","32","33","Z")
for (scaff in scaffolds){

#par(mai=c(2,2,1,1), mgp=c(1,1.2,1))
par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(B$BP[B$CHR==scaff],B$P[B$CHR==scaff],ylim=c(0,1),ylab =expression("F"[ST]),cex.lab=10,lwd=15,xlab="",cex.axis=6,font.axis=2,font.lab=2,type="l")
abline(h=0.3835369,col="black",lwd=2,lty=2)
legend("topleft",legend=c("PENC vs. JETB"),col=c("black"),cex=5,lwd=15,bty = "n",)
box(lwd=10)



A1=c(max(a$V5[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V5[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
A2=c(min(a$V5[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V5[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(a$V3[a$V2==scaff],a$V5[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue", ylab = expression(paste(bold(pi))),cex.lab=10,lwd=15,xlab="",cex.axis=6,ylim=c(min(A2)+0.0000005,max(A1)+0.0000005),font.axis=2,font.lab=2)


lines(b$V3[b$V2==scaff],b$V5[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("PENC","JETB"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


a3=c(max(a$V4[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V4[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
a4=c(min(a$V4[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V4[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(a$V3[a$V2==scaff],a$V4[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue",ylab = expression(paste(bold(theta["W"]))),cex.lab=10,lwd=15,cex.axis=6,ylim=c(min(a4)+0.0000005,max(a3)+0.0000005),font.axis=2,font.lab=2)


lines(b$V3[b$V2==scaff],b$V4[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("PENC","JETB"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


par(mai=c(2,3,1,2), mgp=c(10,4,0.3))
plot(f$start[f$scaffold==scaff],f$dxy_PENC_JETB[f$scaffold==scaff], type="l",col="black",ylab=expression("D"[xy]),cex.lab=10,lwd=15,cex.axis=6,font.axis=2,font.lab=2,xlab=paste("position along with chromosome",scaff,sep=""))
legend("topleft",legend=c("PENC vs. JETB"),col=c("black"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)
}
dev.off()









library(gtools)
a<-read.table("pencill.thetasWindow.gz.pestPG")
b<-read.table("Golden.thetasWindow.gz.pestPG")
B<-read.table("golden.pencil.50kb.column_common.window.txt",header=T)
read.table("GOLD_PENC.50kb_auto_z.csv",header=T)-> f




pdf(file="GOLD_PENC.pdf",width=500,height=150)
par(mfrow=c(4,1))
scaffolds<-c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","30","31","32","33","Z")
for (scaff in scaffolds){

#par(mai=c(2,2,1,1), mgp=c(1,1.2,1))
par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(B$BP[B$CHR==scaff],B$P[B$CHR==scaff],ylim=c(0,1),ylab =expression("F"[ST]),cex.lab=10,lwd=15,xlab="",cex.axis=6,font.axis=2,font.lab=2,type="l")
abline(h=0.3356921 ,col="black",lwd=2,lty=2)
legend("topleft",legend=c("PENC vs. GOLD"),col=c("black"),cex=5,lwd=15,bty = "n",)
box(lwd=10)



A1=c(max(a$V5[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V5[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
A2=c(min(a$V5[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V5[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(a$V3[a$V2==scaff],a$V5[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue", ylab = expression(paste(bold(pi))),cex.lab=10,lwd=15,xlab="",cex.axis=6,ylim=c(min(A2)+0.0000005,max(A1)+0.0000005),font.axis=2,font.lab=2)


lines(b$V3[b$V2==scaff],b$V5[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("PENC","GOLD"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


a3=c(max(a$V4[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V4[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
a4=c(min(a$V4[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V4[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(a$V3[a$V2==scaff],a$V4[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue",ylab = expression(paste(bold(theta["W"]))),cex.lab=10,lwd=15,cex.axis=6,ylim=c(min(a4)+0.0000005,max(a3)+0.0000005),font.axis=2,font.lab=2)


lines(b$V3[b$V2==scaff],b$V4[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("PENC","GOLD"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


par(mai=c(2,3,1,2), mgp=c(10,4,0.3))
plot(f$start[f$scaffold==scaff],f$dxy_GOLD_PENC[f$scaffold==scaff], type="l",col="black",ylab=expression("D"[xy]),cex.lab=10,lwd=15,cex.axis=6,font.axis=2,font.lab=2,xlab=paste("position along with chromosome",scaff,sep=""))
legend("topleft",legend=c("GOLD vs. PENC"),col=c("black"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)
}
dev.off()











