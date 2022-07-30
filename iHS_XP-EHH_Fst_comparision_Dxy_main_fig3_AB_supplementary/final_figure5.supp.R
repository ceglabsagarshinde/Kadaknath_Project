library(gtools)
a<-read.table("KADAKNATH_9IND.thetasWindow.gz.pestPG")
b<-read.table("CHINA_9IND.thetasWindow.gz.pestPG")
B<-read.table("kadk_9ind.china_9ind.50kb.column.txt",header=T)
read.table("final.KADK_CHIN_xpehh.txt.bed.txt",header=F)->E
read.table("final.kadk_ihs.bed.txt",header=F)-> C
read.table("final.china_ihs.bed.txt",header=F)-> d
read.table("dxy.50kb.txt",header=T)-> f


call<-read.table("all.calls")
mmc<-aggregate(call$V7,list(call$V1,call$V2,call$V3),FUN=mean)


scaffolds<-c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","30","31","32","33")
for (scaff in scaffolds){
tiff(paste(scaff,".tif"),res=70,width=20000,height=8000)
meancall<-mmc[mmc$Group.1==scaff,]
meancall$call<-meancall$x
meancall1<-meancall[meancall$call>0.8,]
par(mfrow=c(8,1))
par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(B$BP[B$CHR==scaff],B$P[B$CHR==scaff],ylim=c(0,1),ylab =expression("F"[ST]),cex.lab=10,lwd=15,xlab="",cex.axis=6,font.axis=2,font.lab=2,type="l")
abline(h=0.363558,col="black",lwd=2,lty=2)
legend("topleft",legend=c("KADK vs. CHIN"),col=c("black"),cex=5,lwd=15,bty = "n",)
for(i in 1:length(meancall1$Group.1)){
rect((meancall1[i,2]),0,(meancall1[i,3]),1,col= rgb(0,0,1.0,alpha=0.5),border=NA)
}
box(lwd=10)



A1=c(max(a$V5[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V5[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
A2=c(min(a$V5[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V5[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(a$V3[a$V2==scaff],a$V5[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue", ylab = expression(paste(bold(pi))),cex.lab=10,lwd=15,xlab="",cex.axis=6,ylim=c(min(A2)+0.0000005,max(A1)+0.0000005),font.axis=2,font.lab=2)


lines(b$V3[b$V2==scaff],b$V5[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("KADK","CHIN"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


a3=c(max(a$V4[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V4[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
a4=c(min(a$V4[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V4[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(a$V3[a$V2==scaff],a$V4[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue",ylab = expression(paste(bold(theta["W"]))),cex.lab=10,xlab="",lwd=15,cex.axis=6,ylim=c(min(a4)+0.0000005,max(a3)+0.0000005),font.axis=2,font.lab=2)


lines(b$V3[b$V2==scaff],b$V4[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("KADK","CHIN"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


a5=c(max(a$V9[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V9[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
a6=c(min(a$V9[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V9[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))


par(mai=c(0.1,3,1,2), mgp=c(10,4,0.5))
plot(a$V3[a$V2==scaff],a$V9[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue",ylab=expression("Tajima's D"),cex.lab=10,xlab="",lwd=15,cex.axis=6,ylim=c(min(a6)+0.0000005,max(a5)+0.0000005),font.axis=2,font.lab=2)



lines(b$V3[b$V2==scaff],b$V9[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("KADK","CHIN"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.3))
plot(E$V2[E$V1==scaff],E$V4[E$V1==scaff],ylab =expression("XP-EHH"),cex.lab=10,lwd=15,xlab="",cex.axis=6,font.axis=2,font.lab=2,type="l")
legend("topleft",legend=c("KADK vs. CHIN"),col=c("black"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.3))
plot(C$V2[C$V1==scaff],C$V4[C$V1==scaff],col="blue",type="l",cex=5,cex.lab=10,lwd=15,cex.axis=6,font.axis=2,font.lab=2,xlab="",ylab =expression("iHS"),yaxt='n')
axis(2, lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
legend("topleft",legend=c("KADK"),col=c("blue"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)
par(mai=c(0.1,3,1,2), mgp=c(10,4,0.3))
plot(d$V2[d$V1==scaff],d$V4[d$V1==scaff],col="red",type="l",cex=5,cex.lab=10,lwd=15,cex.axis=6,font.axis=2,font.lab=2,xlab="",ylab =expression("iHS"),lty=1,yaxt='n')
axis(2, lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
box(lwd=10)
legend("topleft",legend=c("CHIN"),col=c("red"),lty=1,cex=5,lwd=15,bty = "n")


par(mai=c(0.8,3,1,2), mgp=c(10,4,0.3))
plot(f$start[f$scaffold==scaff],f$dxy_KADK_CHIN[f$scaffold==scaff], type="l",col="black",ylab=expression("D"[xy]),cex.lab=10,xlab="",lwd=15,cex.axis=6,font.axis=2,font.lab=2,yaxt='n')
axis(2, lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
legend("topleft",legend=c("KADK vs. CHIN"),col=c("black"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)

dev.off()
}






#read.table("repeat.bed")-> DD1
#dd2<-DD1[DD1$V1==scaff,]
#for(i in 1:length(dd2$V1)){
#print(dd2[i,2])
#rect((dd2[i,2]),0,(dd2[i,3]),1,col="blue",density=5)
#}
#box(lwd=10)









library(gtools)
a<-read.table("KADAKNATH_9IND.thetasWindow.gz.pestPG")
b<-read.table("CHINA_9IND.thetasWindow.gz.pestPG")
B<-read.table("kadk_9ind.china_9ind.50kb.column.txt",header=T)
read.table("final.KADK_CHIN_xpehh.txt.bed.txt",header=F)->E
read.table("final.kadk_ihs.bed.txt",header=F)-> C
read.table("final.china_ihs.bed.txt",header=F)-> d
read.table("dxy.50kb.txt",header=T)-> f


call<-read.table("all.calls")
mmc<-aggregate(call$V7,list(call$V1,call$V2,call$V3),FUN=mean)

tiff(file="Z.tif",res=70,width=5000,height=4000)
scaffolds<-c("Z")
for (scaff in scaffolds){
meancall<-mmc[mmc$Group.1==scaff,]
meancall$call<-meancall$x
meancall1<-meancall[meancall$call>0.8,]
par(mfrow=c(8,1))
#par(mai=c(2,2,1,1), mgp=c(1,1.2,1))
par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(B$BP[B$CHR==scaff],B$P[B$CHR==scaff],ylim=c(0,1),ylab =expression("F"[ST]),cex.lab=10,lwd=15,xlab="",cex.axis=6,font.axis=2,font.lab=2,type="l")
abline(h=0.784523,col="black",lwd=2,lty=2)
legend("topleft",legend=c("KADK vs. CHIN"),col=c("black"),cex=5,lwd=15,bty = "n",)
for(i in 1:length(meancall1$Group.1)){
rect((meancall1[i,2]),0,(meancall1[i,3]),1,col= rgb(0,0,1.0,alpha=0.5),border=NA)
}
box(lwd=10)



A1=c(max(a$V5[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V5[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
A2=c(min(a$V5[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V5[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(a$V3[a$V2==scaff],a$V5[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue", ylab = expression(paste(bold(pi))),cex.lab=10,lwd=15,xlab="",cex.axis=6,ylim=c(min(A2)+0.0000005,max(A1)+0.0000005),font.axis=2,font.lab=2)


lines(b$V3[b$V2==scaff],b$V5[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("KADK","CHIN"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


a3=c(max(a$V4[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V4[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
a4=c(min(a$V4[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V4[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.4))
plot(a$V3[a$V2==scaff],a$V4[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue",ylab = expression(paste(bold(theta["W"]))),cex.lab=10,xlab="",lwd=15,cex.axis=6,ylim=c(min(a4)+0.0000005,max(a3)+0.0000005),font.axis=2,font.lab=2)


lines(b$V3[b$V2==scaff],b$V4[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("KADK","CHIN"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


a5=c(max(a$V9[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),max(b$V9[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))
a6=c(min(a$V9[a$V2==scaff]/a$V14[a$V2==scaff],na.rm=T),min(b$V9[b$V2==scaff]/b$V14[b$V2==scaff],na.rm=T))


par(mai=c(0.1,3,1,2), mgp=c(10,4,0.5))
plot(a$V3[a$V2==scaff],a$V9[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue",ylab=expression("Tajima's D"),cex.lab=10,xlab="",lwd=15,cex.axis=6,ylim=c(min(a6)+0.0000005,max(a5)+0.0000005),font.axis=2,font.lab=2)



lines(b$V3[b$V2==scaff],b$V9[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=15)

legend("topleft",legend=c("KADK","CHIN"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.3))
plot(E$V2[E$V1==scaff],E$V4[E$V1==scaff],ylab =expression("XP-EHH"),cex.lab=10,lwd=15,xlab="",cex.axis=6,font.axis=2,font.lab=2,type="l")
legend("topleft",legend=c("KADK vs. CHIN"),col=c("black"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)

par(mai=c(0.1,3,1,2), mgp=c(10,4,0.3))
plot(C$V2[C$V1==scaff],C$V4[C$V1==scaff],col="blue",type="l",cex=5,cex.lab=10,lwd=15,cex.axis=6,font.axis=2,font.lab=2,xlab="",ylab =expression("iHS"),yaxt='n')
axis(2, lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=1)
legend("topleft",legend=c("KADK"),col=c("blue"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)
par(mai=c(0.1,3,1,2), mgp=c(10,4,0.3))
plot(d$V2[d$V1==scaff],d$V4[d$V1==scaff],col="red",type="l",cex=5,cex.lab=10,lwd=15,cex.axis=6,font.axis=2,font.lab=2,xlab="",ylab =expression("iHS"),lty=1,yaxt='n')
axis(2, lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=1)
box(lwd=10)
legend("topleft",legend=c("CHIN"),col=c("red"),lty=1,cex=5,lwd=15,bty = "n")


par(mai=c(0.8,3,1,2), mgp=c(10,4,0.3))
plot(f$start[f$scaffold==scaff],f$dxy_KADK_CHIN[f$scaffold==scaff], type="l",col="black",ylab=expression("D"[xy]),cex.lab=10,xlab="",lwd=15,cex.axis=6,font.axis=2,font.lab=2)
legend("topleft",legend=c("KADK vs. CHIN"),col=c("black"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)
}
dev.off()

