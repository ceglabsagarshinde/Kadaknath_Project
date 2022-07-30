tiff("phastCons_PENC_allele.tiff",width=1500,height=1500,res=150)
read.table("pen.uniq_change.txt",header=F)->A
plot(A$V2,A$V5,type="l")
plot(A$V2,A$V5,type="l",ylim=c(0,1))
plot(A$V2,A$V5,type="l",ylim=c(0,1),xlab="Position along chromosome 11",ylab="phastCons score")
abline(v=11605161,col="red")
dev.off()
