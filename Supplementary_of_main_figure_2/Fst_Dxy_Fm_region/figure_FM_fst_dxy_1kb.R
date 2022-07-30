tiff(file="figureFST_FST_DXY.tif",res=50,width=5000,height=3700)
par(mfrow=c(3,1))
par(mai=c(1,5,2,2), mgp=c(22,8,2))
read.table(file="Black.Nonblack.fst.idx.1kb",header=T,sep='\t')->A
A[which(A$chr>10263555 & A$chr<11980000),]->s
plot(s$chr,s$Nsites,xlim=c(10263555,11980000),ylim=c(0,1),col=ifelse(((s$chr>10766770 & s$chr<10894153)|(s$chr>11306684 & s$chr<11477502)),"blue","black"),xlab="",cex.main=25, cex.lab=15, cex.axis=10,cex=10,font.axis=2,ylab=expression(paste(bold("F"[ST]))),pch=16)
box(lwd=15)
read.table(file="final_20_subset.Fst.Dxy.pi.1kb.csv",header=T,sep='\t')->B
B[which(B$scaffold==20),]->m
B[which(B$start>10263555 & B$start<11980000),]->D
par(mai=c(1,5,2,2), mgp=c(22,8,2))
plot(D$start,D$Fst_FM_NON_FM,xlim=c(10263555,11980000),ylim=c(0,1),col=ifelse(((D$start>10766770 & D$start<10894153)|(D$start>11306684 & D$start<11477502)),"blue","black"),xlab="",cex.main=25, cex.lab=15, cex.axis=10,cex=10,font.axis=2,ylab=expression(paste(bold("F"[ST]))),pch=16)
box(lwd=15)
par(mai=c(3,5,2,2), mgp=c(22,8,2))
plot(D$start,D$dxy_FM_NON_FM,xlim=c(10263555,11980000),ylim=c(0,1),col=ifelse(((D$start>10766770 & D$start<10894153)|(D$start>11306684 & D$start<11477502)),"blue","black"),xlab=expression(paste(bold("Position along chromosome 20"))),cex.main=25, cex.lab=15, cex.axis=10,cex=10,font.axis=2,ylab=expression(paste(bold("D"[XY]))),pch=16)
box(lwd=15)
dev.off()

