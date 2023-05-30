tiff("Fig1B.tiff", width = 10, height = 9, units = 'in', res = 200)
C <- read.table(file="genolike_34.cov.cov")
m<-as.matrix(C)
e <- eigen(m, symm=TRUE)
e$val <- e$val/sum(e$val)
cat(signif(e$val, digits=3)*100,"\n")
signif(e$val, digits=3)*100->evec
s<-strsplit(basename(scan("short.list",what="the")),"\\.")
pop<-sapply(s,function(x){paste(x[1],sep="")})
ifelse(pop %in% "CROS","black",ifelse(pop %in% "GOLD","black",ifelse(pop %in% "GOPE","black",ifelse(pop %in% "JETB","black",ifelse(pop %in% "LCEM","black",ifelse (pop %in% "LCJY","black",ifelse(pop %in% "LCMC","black",ifelse(pop %in% "LCMY","black",ifelse(pop %in% "LCTF","black",ifelse(pop %in% "YOSK","black",ifelse(pop %in% "PENC","black",ifelse(pop %in% "AYCM","black",ifelse(pop %in% "SILK","black",ifelse(pop %in% "TCAB_FM","black",ifelse(pop %in% "TCDQ_FM","black",ifelse(pop %in% "TCGZ_FM","black",ifelse(pop %in% "XBBC","black","green")))))))))))))))))->popcol
ifelse(pop %in% "CROS",1,ifelse(pop %in% "GOLD",1,ifelse(pop %in% "GOPE",1,ifelse(pop %in% "JETB",1,ifelse(pop %in% "LCEM",4,ifelse (pop %in% "LCJY",5,ifelse(pop %in% "LCMC",6,ifelse(pop %in% "LCMY",7,ifelse(pop %in% "LCTF",8,ifelse(pop %in% "YOSK",10,ifelse(pop %in% "PENC",1,ifelse(pop %in% "SILK",13,ifelse(pop %in% "TCAB_FM",2,ifelse(pop %in% "AYCM",12,ifelse(pop %in% "TCDQ_FM",2,ifelse(pop %in% "TCGZ_FM",2,ifelse(pop %in% "XBBC",3,0)))))))))))))))))->poppch
pop1<-as.data.frame(pop)
pop1$col<-popcol
pop1$pch<-poppch
unique(pop1,)->a
par(mar=c(5,5,1,1),mgp=c(2.7, 0.5, 0),xpd = T)
#plot(e$vectors[,1],e$vectors[,2],lwd=2,ylab="PC 2",xlab="PC 1", col=popcol,pch=as.numeric(pop1$pch), cex=2.7,cex.lab=1.7,cex.axis=1.3)

plot(e$vectors[,1],e$vectors[,2],lwd=2,ylab=c(paste("PC2","(",evec[2],"%",")")),xlab=c(paste("PC1","(",evec[1],"%",")")),font=2,col=popcol,pch=as.numeric(pop1$pch),cex=2.7,cex.lab=1.7,cex.axis=1.3,font.lab=2)
#title(main=c(paste("PC1","(",evec[1],"%",")","/","PC2","(",evec[2],"%",")")),line=0.3 ,cex.main = 1 )
#text(e$vectors[,1],e$vectors[,2],pop1$pop)
box(lwd=3)
legend("topleft",legend=c("Ayam Cemani", "Emei BBC", "Jiuyuan BBC", "Kadaknath", "Miyi BBC", "Muchuan BBC", "Silkie", "Tianfu BBC", "Tibetan BBC", "Xichuan BBC", "Yeonsan Ogye"),col=c("black","black","black","black","black","black","black","black","black","black","black","black","black","black","black","black","black"),pch=c(12, 4, 5, 1, 7, 6, 13, 8, 2, 3, 10),cex=1.3,lwd=2,lty=c(NA), bty="n")
dev.off()
