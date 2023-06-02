library(gtools)


a<-read.table("KADAKNATH_9IND.10kbthetasWindow.gz.pestPG")
b<-read.table("CHINA_9IND.10kbthetasWindow.gz.pestPG")
B<-read.table("kadk_9ind.china_9ind.10kb.column.txt",header=T)
read.table("KADK_ihs_bcf.bed.txt",header=F)-> C
read.table("CHIN_ihs_bcf.bed.txt",header=F)-> d


tiff(file="Fig8B_10Kb.tif",res=100,width=5000,height=4000)
scaffolds<-c("20")
for (scaff in scaffolds){
par(mfrow=c(3,1))
par(mai=c(0.2,3.5,1,2), mgp=c(15,8,0.4))
plot(B$BP[B$CHR==scaff],B$P[B$CHR==scaff], type="l",col="black",xlim=c(9600000,11200000), ylab =expression(paste("F"[ST])),cex.lab=10,lwd=20,xlab="",xaxt='n',cex.axis=6,font.axis=2,font.lab=2,yaxt='n')
axis(2,at = c(0,0.2,0.4,0.6,0.8), lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
axis(1, lwd = 10,tck = -0.03,cex.axis=6,font = 2,las=2,labels = F)
rect(9989963, 0.09, 10000753,0.13, cex=1, col="black",lwd=10)
rect(10009760, 0.09, 10015306,0.13, cex=1, col="black",lwd=10)
rect(10037729, 0.09, 10047698,0.13, cex=1, col="black",lwd=10)
rect(10401918, 0.09, 10412889,0.13, cex=1, col="black",lwd=10)
rect(10516581, 0.09, 10518982,0.13, cex=1, col="black",lwd=10)
rect(10577212, 0.09, 10600763,0.13, cex=1, col="black",lwd=10)
rect(10505844, 0.09,10507903 ,0.13, cex=1, col="black",lwd=10)
rect(10766772, -1,10894151 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")



box(lwd=10)
par(mai=c(0.2,3.5,1,2), mgp=c(15,8,0.4))
plot(a$V3[a$V2==scaff],a$V5[a$V2==scaff]/a$V14[a$V2==scaff], type="l",col="blue",xlim=c(9600000,11200000), ylab =expression(paste(pi)),cex.lab=10,lwd=20,xlab="",xaxt='n',yaxt='n',cex.axis=6,,font.axis=2,font.lab=2,ylim=c(0,0.007))
axis(2,at = c(0,0.002,0.004,0.006),lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=3)
axis(1, lwd = 10,tck = -0.03,cex.axis=6,font = 2,las=2,labels = F)
lines(b$V3[b$V2==scaff],b$V5[b$V2==scaff]/b$V14[b$V2==scaff], type="l",col="red",lwd=20)
rect(10766772, -1,10894151 ,1, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")
legend("topleft",legend=c("KADK","CHIN"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")
box(lwd=10)

par(mai=c(3,3.5,1,2), mgp=c(15,8,0.4))
plot(C$V2,C$V4,col="blue",type="l",cex=5,xlim=c(9600000,11200000),lwd=20,cex.axis=6,font.axis=2,font.lab=2,xlab="Position along chromosome 20",ylab ="iHS",lty=1,yaxt='n',cex.lab=10)
axis(2, lwd = 10,tck = -0.02,cex.axis=6,font = 2,las=1)
axis(1, lwd = 10,tck = -0.03,cex.axis=6,font = 2,las=2,labels = F)
box(lwd=10)
lines(d$V2,d$V4,col="red",cex=5,pch=16,lwd=20,lty=1)
rect(10766772, -3,10894151 ,5, cex=1, col=rgb(0.5,0.5,0.5,alpha=0.5),lwd=10,bty="n",border="transparent")

legend("topleft",legend=c("KADK","CHIN"),col=c("blue","red"),lty=1,cex=5,lwd=15,bty = "n")

box(lwd=10)
}
dev.off()

