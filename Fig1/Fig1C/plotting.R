#tiff(file="101_k7_main.tif",res=120,width=7000,height=3000)
#par(mfrow=c(1,1))
#par(mai=c(5,2,1,0), mgp=c(15,2,0.1))
pdf("k7.pdf",width=150,height=30)
par(mfrow=c(1,1),mai=c(15,0.7,0.5,0.2),mgp=c(10,5,1))
# read population labels and estimated admixture proportions
pop<-read.table("list.new",as.is=T)
q<-read.table("101_7_1.qopt")

# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("red","yellow","orange","green","blue","pink","black"),space=0,border=NA,xlab="",ylab="Admixture proportions for K=7",las=2,cex.axis=2,cex.lab=4,font.axis=2,line=-20,)
text(tapply(1:nrow(pop),pop[ord,1],mean),-0.1,unique(pop[ord,1]),cex=3,xpd=T,srt=90)
abline(v=cumsum(sapply(unique(pop[ord,1]),function(x){sum(pop[ord,1]==x)})),col=1,lwd=1.2,las=2)
dev.off()


