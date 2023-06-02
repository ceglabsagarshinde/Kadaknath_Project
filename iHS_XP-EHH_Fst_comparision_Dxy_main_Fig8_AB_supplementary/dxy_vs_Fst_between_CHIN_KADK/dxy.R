read.table("dxy.txt",header=T)->B
tiff("dxy_fst.tiff",width=1500,height=1500,res=150)
plot(B$dxy_KADK_CHIN,B$Fst_KADK_CHIN,ylab=expression(paste("F"[ST]*"(KADK vs. CHIN)")),xlab=expression(paste("D"[XY]*"(KADK vs. CHIN)")),col=ifelse(B$scaffold %in% "20","black",ifelse(B$scaffold %in% "4","green",ifelse(B$scaffold %in% "9","blue","grey"))),cex=ifelse(B$scaffold %in% "20",1,ifelse(B$scaffold %in% "4",1,ifelse(B$scaffold %in% "9",1,0.25))),pch=16)
legend("topright",legend=c("Chr 20","Chr 4","Chr 9","Other autosomes"),col=c("black","green","blue","grey"),cex=1,pch=16,bty = "n",)
abline(v=0.2051,col="black",lwd=3,cex=2)
abline(h=0.2067,col="black",lwd=3,cex=2)
dev.off()


