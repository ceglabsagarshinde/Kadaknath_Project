library(gtools)
B<-read.table("kadk_9ind.china_9ind.50kb.column.txt",header=T)
read.table("plot.repeat",header=F)-> f
scaffolds<-c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","30","31","32","33")
for (scaff in scaffolds){
tiff(paste(scaff,".tif"),res=150,width=20000,height=8000)
par(mfrow=c(1,1))
par(mai=c(7,5,2,2), mgp=c(12,4,0.4))
plot(B$BP[B$CHR==scaff],B$P[B$CHR==scaff],ylim=c(0,1),ylab=expression(paste(bold("F"[ST]*" and Repeat Density"))),xlab=paste("position along chromosome ", scaff ,sep=""),cex.lab=10,lwd=15,cex.axis=6,font.axis=2,font.lab=2,type="l")
lines(f$V2[f$V1==scaff],f$V7[f$V1==scaff], type="l",col="red",lwd=15)
abline(h=0.363558,col="black",lwd=10,lty=2)
legend("topleft",legend=expression(paste("F"[ST]*"(KADK vs. CHIN)"),"Repeat Density"),col=c("black","red"),lwd=15,bty = "n",cex=10)
box(lwd=10)
dev.off()
}


