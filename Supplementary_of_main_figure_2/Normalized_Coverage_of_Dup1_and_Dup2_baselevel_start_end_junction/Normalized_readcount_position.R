read.table(file="dup1_5p.txt",header=FALSE)->M
for (i in unique(M$V1)) {
tiff(paste(i,"dup1_start.tif"),res=30,width=5000,height=3000)
par(mai=c(20,15,20,5), mgp=c(40,20,2))
plot(M$V4[M$V1==i],M$V6[M$V1==i]/mean(M$V6[M$V1==i]),type="l",main=i,cex.main=21,cex.lab=15,cex.axis=10,cex=20,ylab=c(expression(bold("Normalized read count"))),xlab=c(expression(bold("Position along chromosome 20"))),ylim =c(0,1.7),lwd=30,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=13,font = 2)
axis(1, lwd = 20,tck = -0.02,cex.axis=13,font = 2)
abline(v=10766771,col="red",lwd=20, lty=3)
abline(v=10766772,col="red",lwd=20, lty=3)
box(lwd=30)
dev.off()
}

read.table(file="dup2_5p.txt",header=FALSE)->M
for (i in unique(M$V1)) {
tiff(paste(i,"dup2_start.tif"),res=30,width=5000,height=3000)
par(mai=c(20,15,20,5), mgp=c(40,20,2))
plot(M$V4[M$V1==i],M$V6[M$V1==i]/mean(M$V6[M$V1==i]),type="l",main=i,cex.main=21,cex.lab=15,cex.axis=10,cex=20,ylab=c(expression(bold("Normalized read count"))),xlab=c(expression(bold("Position along chromosome 20"))),ylim =c(0,1.7),lwd=30,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=13,font = 2)
axis(1, lwd = 20,tck = -0.02,cex.axis=13,font = 2)
abline(v=11306685,col="red",lwd=20, lty=3)
abline(v=11306686,col="red",lwd=20, lty=3)
box(lwd=30)
dev.off()
}

read.table(file="dup1_3p.txt",header=FALSE)->M
for (i in unique(M$V1)) {
tiff(paste(i,"dup1_end.tif"),res=30,width=5000,height=3000)
par(mai=c(20,15,20,5), mgp=c(40,20,2))
plot(M$V4[M$V1==i],M$V6[M$V1==i]/mean(M$V6[M$V1==i]),type="l",main=i,cex.main=21,cex.lab=15,cex.axis=10,cex=20,ylab=c(expression(bold("Normalized read count"))),xlab=c(expression(bold("Position along chromosome 20"))),ylim =c(0,1.7),lwd=30,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=13,font = 2)
axis(1, lwd = 20,tck = -0.02,cex.axis=13,font = 2)
abline(v=10894151,col="red",lwd=20, lty=3)
abline(v=10894152,col="red",lwd=20, lty=3)
box(lwd=30)
dev.off()
}

read.table(file="dup2_3p.txt",header=FALSE)->M
for (i in unique(M$V1)) {
tiff(paste(i,"dup2_end.tif"),res=30,width=5000,height=3000)
par(mai=c(20,15,20,5), mgp=c(40,20,2))
plot(M$V4[M$V1==i],M$V6[M$V1==i]/mean(M$V6[M$V1==i]),type="l",main=i,cex.main=21,cex.lab=15,cex.axis=10,cex=20,ylab=c(expression(bold("Normalized read count"))),xlab=c(expression(bold("Position along chromosome 20"))),ylim =c(0,1.7),lwd=30,xaxt='n',yaxt='n')
axis(2, lwd = 20,tck = -0.02,cex.axis=13,font = 2)
axis(1, lwd = 20,tck = -0.02,cex.axis=13,font = 2)
abline(v=11477501,col="red",lwd=20, lty=3)
abline(v=11477502,col="red",lwd=20, lty=3)
box(lwd=30)
dev.off()
}

