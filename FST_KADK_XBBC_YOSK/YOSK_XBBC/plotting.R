library(qqman)

yosk_XBBC<-read.table("YeonsanOgye_XBBC.fst.idx.50kb.column.txt",header=T)
tiff(file="yosk_XBBC_50kb_fst.tif",res=30,width=5000,height=3700)
#par(mai=c(6,11,5,3), mgp=c(40,15,3))
par(mfrow=c(3,1))
par(mai=c(6,10,2,2), mgp=c(40,15,3))
manhattan(yosk_XBBC, chr="chr", bp="BP", snp="SNP", p="P" ,ylim=c(0,1),logp=F, chrlabs=c(1:28,30,31,32,33,c(rep("scaffold",13)),"Z"),col=c("darkslategray3","deepskyblue"),ylab=expression(paste("F"[ST])),cex=15,cex.lab=20,cex.axis=17,xlab="Chromosomes",font.axis=2,yaxt='n')
axis(2,at=c(0.2,0.4,0.6,0.8), lwd = 20,tck = -0.02,cex.axis=15,font = 2,las=2)
#abline(h=c,col="black",lty=2,lwd=20)
box(lwd=30)
#text(mean(A$BP),0.9,"YOSK vs. XBBC",cex=25,font=2)
#mtext(side=3, "YOSK vs. XBBC",font=2,cex=17,outer = F,line= +5)
rect(0, 0.562525, 960000000, 0.562525, cex=100, col="black",lty=2,lwd=10)
rect(960000000,0.941967, 1045000000, 0.941967, cex=100, col="black",lty=2,lwd=10)
dev.off()


