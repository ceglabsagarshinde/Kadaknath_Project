read.table(file="dup1_5p_subset.txt",header=FALSE)->M
for (i in unique(M$V1)) {
tiff(paste(i,"dup1_5p.tif"),res=100,width=300,height=250)
par(mai=c(0.3,0.3,0.1,0.1), mgp=c(0.6,0.1,0.1))
plot(M$V4[M$V1==i],M$V6[M$V1==i]/mean(M$V6[M$V1==i]),type="l",cex.lab=0.6,cex.axis=0.5,cex=1,ylab=c(expression(bold("Normalized read count"))),xlab="",xlim=c(10766761,10766782),ylim =c(0,1.7),lwd=3,xaxt='n',yaxt='n')
axis(2, lwd = 1,tck = -0.02,cex.axis=0.5,font = 2)
axis(1, lwd = 1,tck = -0.02,cex.axis=0.5,font = 2)
abline(v=10766771,col="red",lwd=1, lty=5)
abline(v=10766772,col="red",lwd=1, lty=5)
box(lwd=1)
dev.off()
}





read.table(file="dup1_3p_subset.txt",header=FALSE)->M
for (i in unique(M$V1)) {
tiff(paste(i,"dup1_3p.tif"),res=100,width=300,height=250)
par(mai=c(0.3,0.3,0.1,0.1), mgp=c(0.6,0.1,0.1))
plot(M$V4[M$V1==i],M$V6[M$V1==i]/mean(M$V6[M$V1==i]),type="l",cex.lab=0.6,cex.axis=0.5,cex=1,ylab=c(expression(bold("Normalized read count"))),xlab="",xlim=c(10894141,10894162),ylim =c(0,1.7),lwd=3,xaxt='n',yaxt='n')
axis(2, lwd = 1,tck = -0.02,cex.axis=0.5,font = 2)
axis(1, lwd = 1,tck = -0.02,cex.axis=0.5,font = 2)
abline(v=10894151,col="red",lwd=1, lty=5)
abline(v=10894152,col="red",lwd=1, lty=5)
box(lwd=1)
dev.off()
}


read.table(file="dup2_5p_subset.txt",header=FALSE)->M
for (i in unique(M$V1)) {
tiff(paste(i,"dup2_5p.tif"),res=100,width=300,height=250)
par(mai=c(0.3,0.3,0.1,0.1), mgp=c(0.6,0.1,0.1))
plot(M$V4[M$V1==i],M$V6[M$V1==i]/mean(M$V6[M$V1==i]),type="l",cex.lab=0.6,cex.axis=0.5,cex=1,ylab=c(expression(bold("Normalized read count"))),xlab="",xlim=c(11306675,11306696),ylim =c(0,1.7),lwd=3,xaxt='n',yaxt='n')
axis(2, lwd = 1,tck = -0.02,cex.axis=0.5,font = 2)
axis(1, lwd = 1,tck = -0.02,cex.axis=0.5,font = 2)
abline(v=11306685,col="red",lwd=1, lty=5)
abline(v=11306686,col="red",lwd=1, lty=5)
box(lwd=1)
dev.off()
}

read.table(file="dup2_3p_subset.txt",header=FALSE)->M
for (i in unique(M$V1)) {
tiff(paste(i,"dup2_3p.tif"),res=100,width=300,height=250)
par(mai=c(0.3,0.3,0.1,0.1), mgp=c(0.6,0.1,0.1))
plot(M$V4[M$V1==i],M$V6[M$V1==i]/mean(M$V6[M$V1==i]),type="l",cex.lab=0.6,cex.axis=0.5,cex=1,ylab=c(expression(bold("Normalized read count"))),xlab="",xlim=c(11477491,11477512),ylim =c(0,1.7),lwd=3,xaxt='n',yaxt='n')
axis(2, lwd = 1,tck = -0.02,cex.axis=0.5,font = 2)
axis(1, lwd = 1,tck = -0.02,cex.axis=0.5,font = 2)
abline(v=11477501,col="red",lwd=1, lty=5)
abline(v=11477502,col="red",lwd=1, lty=5)
box(lwd=1)
dev.off()
}



