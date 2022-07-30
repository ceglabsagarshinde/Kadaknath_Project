read.csv("KADK_CHIN_RIRL_RJF_50KB_no_goodsite.csv",header=T)->A
read.table("kadk_9ind.china_9ind.50kb.column_AUTOSOME.txt",header=T)->G
read.table("chine_9ind.RIRL_9ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->B
read.table("kadk_9ind.RIRL_9ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->C


tiff("KADK_CHIN_RIRL_RJF_BABA_50KB_chr11_main_figure.tif",res=100,width=5000,height=3000)
par(mar = c(6,20,5,2),mgp=c(10,3,0.3))
par(mfrow=c(3,1))
scaffolds<-c(11)
for (scaff in scaffolds){
plot(G$BP[G$CHR==scaff],G$P[G$CHR==scaff],xlab="",ylab=expression(bold(paste("F"[ST]))),cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=7,type="l",lwd=15,xlim=c(1,20200000),ylim=c(0,1.0),col="black")
abline(h=0.2675285,col="black",lty = 2,lwd=5)
abline(v=300000,col="red",lty = 2,lwd=2)
abline(v=200000,col="red",lty = 2,lwd=2)
box(lwd=10)

lines(B$BP[B$CHR==scaff],B$P[B$CHR==scaff],xlab="",cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=6,ylim=c(0,1),lwd=15,xlim=c(1,20200000),col="purple")
abline(h=0.5269795,col="purple",lty = 2,lwd=5)
legend(6500000, 1,legend=c("KADK vs. CHIN","CHIN  vs. RIRL","KADK vs. RIRL"),col=c("black","purple","green"),lty=1,cex=5,lwd=15,bty = "n")
lines(C$BP[C$CHR==scaff],C$P[C$CHR==scaff],xlab="",cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=6,ylim=c(0,1),lwd=15,xlim=c(1,20200000),col="green")
abline(h=0.5688959,col="green",lty = 2,lwd=5)

plot(A$start[A$scaffold==scaff],A$D[A$scaffold==scaff],type="l",xlab="",ylab=expression(bold("D-statistic")),cex=2,cex.axis = 5, cex.main=6,cex.lab=7,cex.main=7,lwd=15,xlim=c(1,20200000))
abline(h=0,col="red",lty = 2,lwd=5)
abline(v=300000,col="red",lty = 2,lwd=2)
abline(v=200000,col="red",lty = 2,lwd=2)
legend(6400000, 0.9,legend=c("P1=KADK P2=CHIN P3=RIRL"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)
par(mar = c(11,20,5,2),mgp=c(8,3,0.3))
plot(A$start[A$scaffold==scaff],A$ABBA[A$scaffold==scaff],xlab="position along with chromosome 11",ylab=expression(bold("Number of ABBA and BABA sites")),col="red",cex=2,cex.axis = 5, cex.main=6,cex.lab=5,cex.main=7,ylim=c(0,70),type="l",lwd=15,xlim=c(1,20200000))
lines(A$start[A$scaffold==scaff],A$BABA[A$scaffold==scaff],col="purple",cex=2,cex.axis = 5, cex.main=6,cex.lab=6,cex.main=7,lwd=15)
legend(6500000, 72,legend=c("ABBA sites","BABA sites"),col=c("red","purple"),lty=1,cex=5,lwd=15,bty = "n")
abline(v=300000,col="red",lty = 2,lwd=2)
abline(v=200000,col="red",lty = 2,lwd=2)
box(lwd=10)
}
dev.off()




read.csv("KADK_CHIN_RIRL_RJF_50KB_no_goodsite.csv",header=T)->A
read.table("kadk_9ind.china_9ind.50kb.column_AUTOSOME.txt",header=T)->G
read.table("chine_9ind.RIRL_9ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->B
read.table("kadk_9ind.RIRL_9ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->C



tiff("KADK_CHIN_RIRL_RJF_BABA_50KB_chr_4_GABAR2_main_figure.tif",res=100,width=5000,height=3000)
par(mar = c(6,20,5,2),mgp=c(10,3,0.3))
par(mfrow=c(3,1))
scaffolds<-c(4)
for (scaff in scaffolds){
plot(G$BP[G$CHR==scaff],G$P[G$CHR==scaff],xlab="",ylab=expression(bold(paste("F"[ST]))),cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=7,type="l",lwd=15,xlim=c(60150000,75900000),ylim=c(0,1.0),col="black")
abline(h=0.2675285,col="black",lty = 2,lwd=5)
abline(v=67050000,col="red",lty = 2,lwd=2)
abline(v=67150000,col="red",lty = 2,lwd=2)
box(lwd=10)

lines(B$BP[B$CHR==scaff],B$P[B$CHR==scaff],xlab="",cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=6,ylim=c(0,1),lwd=15,xlim=c(60150000,75900000),col="purple")
abline(h=0.5269795,col="purple",lty = 2,lwd=5)
legend("topleft",legend=c("KADK vs. CHIN","CHIN  vs. RIRL","KADK vs. RIRL"),col=c("black","purple","green"),lty=1,cex=5,lwd=15,bty = "n")
lines(C$BP[C$CHR==scaff],C$P[C$CHR==scaff],xlab="",cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=6,ylim=c(0,1),lwd=15,xlim=c(60150000,75900000),col="green")
abline(h=0.5688959,col="green",lty = 2,lwd=5)

plot(A$start[A$scaffold==scaff],A$D[A$scaffold==scaff],type="l",xlab="",ylab=expression(bold("D-statistic")),cex=2,cex.axis = 5, cex.main=6,cex.lab=7,cex.main=7,lwd=15,xlim=c(60150000,75900000))
abline(h=0,col="red",lty = 2,lwd=5)
abline(v=67050000,col="red",lty = 2,lwd=2)
abline(v=67150000,col="red",lty = 2,lwd=2)

legend("topleft",legend=c("P1=KADK P2=CHIN P3=RIRL"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)

par(mar = c(11,20,5,2),mgp=c(8,3,0.3))
plot(A$start[A$scaffold==scaff],A$ABBA[A$scaffold==scaff],xlab="position along with chromosome 4",ylab=expression(bold("Number of ABBA and BABA sites")),col="red",cex=2,cex.axis = 5, cex.main=6,cex.lab=5.5,cex.main=7,ylim=c(0,90),type="l",lwd=15,xlim=c(60150000,75900000))
lines(A$start[A$scaffold==scaff],A$BABA[A$scaffold==scaff],col="purple",cex=2,cex.axis = 5, cex.main=6,cex.lab=6,cex.main=7,lwd=15)
legend("topleft",legend=c("ABBA sites","BABA sites"),col=c("red","purple"),lty=1,cex=5,lwd=15,bty = "n")
abline(v=67050000,col="red",lty = 2,lwd=2)
abline(v=67150000,col="red",lty = 2,lwd=2)

box(lwd=10)
}
dev.off()



read.csv("KADK_CHIN_RIRL_RJF_50KB_no_goodsite.csv",header=T)->A
read.table("kadk_9ind.china_9ind.50kb.column_AUTOSOME.txt",header=T)->G
read.table("chine_9ind.RIRL_9ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->B
read.table("kadk_9ind.RIRL_9ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->C




tiff("KADK_CHIN_RIRL_RJF_BABA_50KB_chr_4_C40RF33_main_figure.tif",res=100,width=5000,height=3000)
par(mar = c(6,20,5,2),mgp=c(10,3,0.3))
par(mfrow=c(3,1))
scaffolds<-c(4)
for (scaff in scaffolds){
plot(G$BP[G$CHR==scaff],G$P[G$CHR==scaff],xlab="",ylab=expression(bold(paste("F"[ST]))),cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=7,type="l",lwd=15,xlim=c(30000000,40000000),ylim=c(0,1.0),col="black")
abline(h=0.2675285,col="black",lty = 2,lwd=5)
abline(v=34000000,col="red",lty = 2,lwd=2)
abline(v=34050000,col="red",lty = 2,lwd=2)
box(lwd=10)

lines(B$BP[B$CHR==scaff],B$P[B$CHR==scaff],xlab="",cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=6,ylim=c(0,1),lwd=15,xlim=c(30000000,40000000),col="purple")
abline(h=0.5269795,col="purple",lty = 2,lwd=5)
legend("topleft",legend=c("KADK vs. CHIN","CHIN  vs. RIRL","KADK vs. RIRL"),col=c("black","purple","green"),lty=1,cex=5,lwd=15,bty = "n")
lines(C$BP[C$CHR==scaff],C$P[C$CHR==scaff],xlab="",cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=6,ylim=c(0,1),lwd=15,xlim=c(30000000,40000000),col="green")
abline(h=0.5688959,col="green",lty = 2,lwd=5)

plot(A$start[A$scaffold==scaff],A$D[A$scaffold==scaff],type="l",xlab="",ylab=expression(bold("D-statistic")),cex=2,cex.axis = 5, cex.main=6,cex.lab=7,cex.main=7,lwd=15,xlim=c(30000000,40000000))
abline(h=0,col="red",lty = 2,lwd=5)
abline(v=34000000,col="red",lty = 2,lwd=2)
abline(v=34050000,col="red",lty = 2,lwd=2)
legend("topleft",legend=c("P1=KADK P2=CHIN P3=RIRL"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)
par(mar = c(11,20,5,2),mgp=c(8,3,0.3))
plot(A$start[A$scaffold==scaff],A$ABBA[A$scaffold==scaff],xlab="position along with chromosome 4",ylab=expression(bold("Number of ABBA and BABA sites")),col="red",cex=2,cex.axis = 5, cex.main=6,cex.lab=5,cex.main=7,ylim=c(0,70),type="l",lwd=15,xlim=c(30000000,40000000))
lines(A$start[A$scaffold==scaff],A$BABA[A$scaffold==scaff],col="purple",cex=2,cex.axis = 5, cex.main=6,cex.lab=6,cex.main=7,lwd=15)
legend("topleft",legend=c("ABBA sites","BABA sites"),col=c("red","purple"),lty=1,cex=5,lwd=15,bty = "n")
abline(v=34000000,col="red",lty = 2,lwd=2)
abline(v=34050000,col="red",lty = 2,lwd=2)
box(lwd=10)
}
dev.off()





read.csv("KADK_CHIN_RIRL_RJF_50KB_no_goodsite.csv",header=T)->A
read.table("kadk_9ind.china_9ind.50kb.column_AUTOSOME.txt",header=T)->G
read.table("chine_9ind.RIRL_9ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->B
read.table("kadk_9ind.RIRL_9ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->C
read.table("a.bed")-> DD1

read.table("KADK_RIRL.50kb.csv",header=T)->D
read.table("CHIN_RIRL.50kb.csv",header=T)->E
read.table("KADK_CHIN.50kb.csv",header=T)->F


pdf("RIRL.pdf",,width=500,height=100)
par(mar = c(20,20,7,2),mgp=c(14,7,1))
par(mfrow=c(4,1))


scaffolds<-c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","30","31","32","33")
for (scaff in scaffolds){
dd2<-DD1[DD1$V1==scaff,]



G1=c(max(G$P[G$CHR==scaff],na.rm=T),max(B$P[B$CHR==scaff],na.rm=T),max(C$P[C$CHR==scaff],na.rm=T))
G2=c(min(G$P[G$CHR==scaff],na.rm=T),min(B$P[B$CHR==scaff],na.rm=T),min(C$P[C$CHR==scaff],na.rm=T))


plot(G$BP[G$CHR==scaff],G$P[G$CHR==scaff],xlab="",ylab=expression(bold(paste("F"[ST]))),cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=6,type="l",lwd=15,ylim=c(min(G2),max(G1)),col="black")
j=dim(dd2)[1]
if (j==0){
print(j)
} else {
for(i in 1:length(dd2$V1)){
print(dd2[i,2])
rect((dd2[i,2]),-1,(dd2[i,3]),1,col="blue",density=5)
}
}
abline(h=0.2675285,col="black",lty = 2,lwd=5)
box(lwd=10)
lines(B$BP[B$CHR==scaff],B$P[B$CHR==scaff],xlab="",cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=6,lwd=15,,col="purple")
abline(h=0.5269795,col="purple",lty = 2,lwd=5)
legend("topleft",legend=c("KADK vs. CHIN","CHIN vs. RIRL","KADK vs. RIRL"),col=c("black","purple","green"),lty=1,cex=5,lwd=15,bty = "n")
lines(C$BP[C$CHR==scaff],C$P[C$CHR==scaff],xlab="",cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=6,ylim=c(0,1),lwd=15,col="green")
abline(h=0.5688959,col="green",lty = 2,lwd=5)

plot(A$start[A$scaffold==scaff],A$D[A$scaffold==scaff],type="l",xlab="",ylab=expression(bold("D-statistic")),cex=2,cex.axis = 5, cex.main=6,cex.lab=6,cex.main=7,lwd=15)
j=dim(dd2)[1]
if (j==0){
print(j)
} else {
for(i in 1:length(dd2$V1)){
print(dd2[i,2])
rect((dd2[i,2]),-2,(dd2[i,3]),2,col="blue",density=5)
}
}
legend("topleft",legend=c("P1=KADK P2=CHIN P3=RIRL"),col=c("black"),lty=1,cex=5,lwd=15,bty = "n")
abline(h=0,col="red",lty = 2,lwd=5)
box(lwd=10)


A1=c(max(A$ABBA[A$scaffold==scaff],na.rm=T),max(A$BABA[A$scaffold==scaff],na.rm=T))
A2=c(min(A$ABBA[A$scaffold==scaff],na.rm=T),min(A$BABA[A$scaffold==scaff],na.rm=T))


plot(A$start[A$scaffold==scaff],A$ABBA[A$scaffold==scaff],xlab="chromosome along with position",ylab=expression(bold("Number of ABBA and BABA sites")),col="red",cex=2,cex.axis = 5, cex.main=6,cex.lab=4,cex.main=7,type="l",lwd=15,ylim=c(min(A2),max(A1)))
j=dim(dd2)[1]
if (j==0){
print(j)
} else {
for(i in 1:length(dd2$V1)){
print(dd2[i,2])
rect((dd2[i,2]),-5,(dd2[i,3]),150,col="blue",density=5)
}
}
lines(A$start[A$scaffold==scaff],A$BABA[A$scaffold==scaff],col="purple",cex=2,cex.axis = 5, cex.main=6,cex.lab=6,cex.main=7,lwd=15)
legend("topleft",legend=c("ABBA sites","BABA sites"),col=c("red","purple"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


D1=c(max(D$dxy_KADK_RIRL[D$scaffold==scaff],na.rm=T),max(E$dxy_CHIN_RIRL[E$scaffold==scaff],na.rm=T),max(F$Fst_KADK_CHIN[F$scaffold==scaff],na.rm=T))
D2=c(min(D$dxy_KADK_RIRL[D$scaffold==scaff],na.rm=T),min(E$dxy_CHIN_RIRL[E$scaffold==scaff],na.rm=T),min(F$Fst_KADK_CHIN[F$scaffold==scaff],na.rm=T))

par(mar = c(15,20,5,2),mgp=c(10,3,0.3))
plot(D$start[D$scaffold==scaff],D$dxy_KADK_RIRL[D$scaffold==scaff],ylab=expression(paste(bold("D"[XY]))),col="green",cex=2,cex.axis = 5, cex.main=6,cex.lab=4,cex.main=7,type="l",lwd=15,ylim=c(min(D2),max(D1)),xlab=paste("position along chromosome ", scaff ,sep=""),cex.lab=6)
j=dim(dd2)[1]
if (j==0){
print(j)
} else {
for(i in 1:length(dd2$V1)){
print(dd2[i,2])
rect((dd2[i,2]),-1,(dd2[i,3]),1,col="blue",density=5)
}
}
lines(E$start[E$scaffold==scaff],E$dxy_CHIN_RIRL[E$scaffold==scaff],col="purple",cex=2,cex.axis = 5, cex.main=6,cex.lab=6,cex.main=7,lwd=15)
lines(F$start[F$scaffold==scaff],F$dxy_KADK_CHIN[F$scaffold==scaff],col="black",cex=2,cex.axis = 5, cex.main=6,cex.lab=6,cex.main=7,lwd=15)
legend("topleft",legend=c("KADK vs. CHIN","CHIN vs. RIRL","KADK vs. RIRL"),col=c("black","purple","green"),lty=1,cex=5,lwd=15,bty = "n")

box(lwd=10)
}
dev.off()


	

	
