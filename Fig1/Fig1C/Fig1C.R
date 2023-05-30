tiff(file="Fig1C.tif",res=120,width=7000,height=3000)
par(mfrow=c(1,1))
par(mai=c(5,2,1,0), mgp=c(15,2,0.1))
pop<-read.table("short1.list",as.is=T)
q<-read.table("34_7_1.qopt")
# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("red","green","blue","pink","black","yellow","tan"),space=0,border=NA,xlab="",ylab="",las=2,cex.axis=4,cex.lab=4,font.axis=2,line=-18,yaxt="n")
axis(2,cex.axis=4,lwd=10,line=-10.1)
text(tapply(1:nrow(pop),pop[ord,1],mean),-0.1,unique(pop[ord,1]),cex=3,xpd=T,srt=90)
abline(v=cumsum(sapply(unique(pop[ord,1]),function(x){sum(pop[ord,1]==x)})),col=1,lwd=1.2,las=2)
dev.off()

