library(qqman)

fst_golden_jetblack<-read.table("golden.jet.50kb.column_common.window.txt",header=T)
fst_golden_pencill<-read.table("golden.pencil.50kb.column_common.window.txt",header=T)
fst_pencill_jetblack<-read.table("pencill.jet.50kb.column_common.window.txt",header=T)
 
quantile(fst_golden_jetblack$P,prob=0.99)->a
quantile(fst_golden_pencill$P,prob=0.99)->b
quantile(fst_pencill_jetblack$P,prob=0.99)->c
fst_golden_jetblack[which(fst_golden_jetblack$chr=="1"),]->A
 
tiff(file="fig4.tif",res=30,width=5000,height=3700)
#par(mai=c(6,11,5,3), mgp=c(40,15,3))
par(mfrow=c(3,1))
par(mai=c(1,10,2,2), mgp=c(40,17,3))
manhattan(fst_golden_jetblack, chr="chr", bp="BP", snp="SNP", p="P" ,ylim=c(0,1),logp=F, chrlabs=c(1:28,30,31,32,33,c(rep("scaffold",17)),"Z"),col=c("darkslategray3","deepskyblue"),ylab=expression(paste("F"[ST])), cex=25,cex.lab=20,cex.axis=17,xlab="",xaxt='n',font.axis=2,yaxt='n')
axis(2,at=c(0.2,0.4,0.6,0.8), lwd = 20,tck = -0.02,cex.axis=15,font = 2,las=2)
abline(h=a,col="black",lty=2,lwd=20)
text(mean(A$BP),0.9,"GOLD vs. JETB",cex=25,font=2)
#mtext(side=3, "Golden vs. Jetblack",font=2,cex=17,outer = F,line= +5)
box(lwd=30)

par(mai=c(1,10,2,2), mgp=c(40,15,3))
manhattan(fst_golden_pencill, chr="chr", bp="BP", snp="SNP", p="P" ,ylim=c(0,1),logp=F, chrlabs=c(1:28,30,31,32,33,c(rep("scaffold",17)),"Z"),col=c("darkslategray3","deepskyblue"), cex=25,cex.lab=20,cex.axis=17,ylab=expression(paste("F"[ST])),xlab="",xaxt='n',font.axis=2,yaxt='n')
axis(2,at=c(0.2,0.4,0.6,0.8), lwd = 20,tck = -0.02,cex.axis=15,font = 2,las=2)
abline(h=b,col="black",lty=2,lwd=20)
text(mean(A$BP),0.9,"GOLD vs. PENC",cex=25,font=2)
#points(768884637,0.9,cex=15,font=2,col="red",pch=16)
#mtext(side=3, "Golden vs. Pencill",font=2,cex=17,outer = F,line= +5)
box(lwd=30)

par(mai=c(6,10,2,2), mgp=c(40,15,3))
manhattan(fst_pencill_jetblack, chr="chr", bp="BP", snp="SNP", p="P" ,ylim=c(0,1),logp=F, chrlabs=c(1:28,30,31,32,33,c(rep("scaffold",17)),"Z"),col=c("darkslategray3","deepskyblue"),ylab=expression(paste("F"[ST])),cex=25,cex.lab=20,cex.axis=17,xlab="",font.axis=2,yaxt='n')
axis(2,at=c(0.2,0.4,0.6,0.8), lwd = 20,tck = -0.02,cex.axis=15,font = 2,las=2)
abline(h=c,col="black",lty=2,lwd=20)
box(lwd=30)
text(mean(A$BP),0.9,"PENC vs. JETB",cex=25,font=2)
#points(79106643,0.9,cex=15,font=2,col="red",pch=16)
#points(80040010,0.9,cex=15,font=2,col="red",pch=16)
#points(397431735,0.9,cex=15,font=2,col="red",pch=16)
#mtext(side=3, "Pencill vs. Jetblack",font=2,cex=17,outer = F,line= +5)
dev.off()







