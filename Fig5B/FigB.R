read.csv("KADK_CHIN_WHLL_RJF_50KB_no_goodsite.csv",header=T)->A
read.table("kadk_9ind.china_9ind.50kb.column_AUTOSOME.txt",header=T)->G
read.table("chine_9ind.WHLL_3ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->B
read.table("kadk_9ind.WHLL_3ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->C

tiff("Fig5B.tif",res=100,width=5000,height=3000)
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
abline(h=0.5678545,col="purple",lty = 2,lwd=5)
legend("topleft",legend=c("KADK vs. CHIN","CHIN  vs. WHLL","KADK vs. WHLL"),col=c("black","purple","green"),lty=1,cex=5,lwd=15,bty = "n")
lines(C$BP[C$CHR==scaff],C$P[C$CHR==scaff],xlab="",cex=2,cex.axis = 5, cex.main=6,cex.main=7,cex.lab=6,ylim=c(0,1),lwd=15,xlim=c(60150000,75900000),col="green")
abline(h=0.573718,col="green",lty = 2,lwd=5)

plot(A$start[A$scaffold==scaff],A$D[A$scaffold==scaff],type="l",xlab="",ylab=expression(bold("D-statistic")),cex=2,cex.axis = 5, cex.main=6,cex.lab=7,cex.main=7,lwd=15,xlim=c(60150000,75900000))
abline(h=0,col="red",lty = 2,lwd=5)
abline(v=67050000,col="red",lty = 2,lwd=2)
abline(v=67150000,col="red",lty = 2,lwd=2)

legend("topleft",legend=c("P1=KADK P2=CHIN P3=WHLL"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)


plot(A$start[A$scaffold==scaff],A$ABBA[A$scaffold==scaff],xlab="position along with chromosome 4",ylab=expression(bold("Number of ABBA and BABA sites")),col="red",cex=2,cex.axis = 5, cex.main=6,cex.lab=5.5,cex.main=7,ylim=c(0,90),type="l",lwd=15,xlim=c(60150000,75900000))
lines(A$start[A$scaffold==scaff],A$BABA[A$scaffold==scaff],col="purple",cex=2,cex.axis = 5, cex.main=6,cex.lab=6,cex.main=7,lwd=15)
legend("topleft",legend=c("ABBA sites","BABA sites"),col=c("red","purple"),lty=1,cex=5,lwd=15,bty = "n")
abline(v=67050000,col="red",lty = 2,lwd=2)
abline(v=67150000,col="red",lty = 2,lwd=2)

box(lwd=10)
}
dev.off()


