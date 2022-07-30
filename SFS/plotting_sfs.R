

tiff(file="SFS.tif",res=600,width=7000,height=3000)
par(mfrow=c(2,5))

sfs<-scan("KADAKNATH_9IND.sfs")
norm <- function(x) x/sum(x)
pvarff<-(1-sfs[1]-sfs[length(sfs)])*100
sfs1<-norm(sfs[-c(1)]) 
barplot(sfs1,xlab="No of individuals",names=1:length(sfs1),ylab="Frequency",col=c("black"), main=("KADK"))

sfs<-scan("CHINA_9IND.sfs")
norm <- function(x) x/sum(x)
pvarff<-(1-sfs[1]-sfs[length(sfs)])*100
sfs1<-norm(sfs[-c(1)]) 
barplot(sfs1,xlab="No of individuals",names=1:length(sfs1),ylab="Frequency",col=c("black"), main=("CHIN"))

sfs<-scan("Korean.sfs")
norm <- function(x) x/sum(x)
pvarff<-(1-sfs[1]-sfs[length(sfs)])*100
sfs1<-norm(sfs[-c(1)]) 
barplot(sfs1,xlab="No of individuals",names=1:length(sfs1),ylab="Frequency",col=c("black"), main=("YOSK"))

sfs<-scan("jetblack.sfs")
norm <- function(x) x/sum(x)
pvarff<-(1-sfs[1]-sfs[length(sfs)])*100
sfs1<-norm(sfs[-c(1)]) 
barplot(sfs1,xlab="No of individuals",names=1:length(sfs1),ylab="Frequency",col=c("black"), main=("JETB"))


sfs<-scan("pencill.sfs")
norm <- function(x) x/sum(x)
pvarff<-(1-sfs[1]-sfs[length(sfs)])*100
sfs1<-norm(sfs[-c(1)]) 
barplot(sfs1,xlab="No of individuals",names=1:length(sfs1),ylab="Frequency",col=c("black"), main=("PENC"))

sfs<-scan("Golden.sfs")
norm <- function(x) x/sum(x)
pvarff<-(1-sfs[1]-sfs[length(sfs)])*100
sfs1<-norm(sfs[-c(1)]) 
barplot(sfs1,xlab="No of individuals",names=1:length(sfs1),ylab="Frequency",col=c("black"),main=("GOLD"))

sfs<-scan("BROC_7.sfs")
norm <- function(x) x/sum(x)
pvarff<-(1-sfs[1]-sfs[length(sfs)])*100
sfs1<-norm(sfs[-c(1)]) 
barplot(sfs1,xlab="No of individuals",names=1:length(sfs1),ylab="Frequency",col=c("black"), main=("BROC"))

sfs<-scan("RIRL_9.sfs")
norm <- function(x) x/sum(x)
pvarff<-(1-sfs[1]-sfs[length(sfs)])*100
sfs1<-norm(sfs[-c(1)]) 
barplot(sfs1,xlab="No of individuals",names=1:length(sfs1),ylab="Frequency",col=c("black"),  main=("RIRL"))

sfs<-scan("CWLH_6.sfs")
norm <- function(x) x/sum(x)
pvarff<-(1-sfs[1]-sfs[length(sfs)])*100
sfs1<-norm(sfs[-c(1)]) 
barplot(sfs1,xlab="No of individuals",names=1:length(sfs1),ylab="Frequency",col=c("black"), main=("CWLH"))

sfs<-scan("WHLL.sfs")
norm <- function(x) x/sum(x)
pvarff<-(1-sfs[1]-sfs[length(sfs)])*100
sfs1<-norm(sfs[-c(1)]) 
barplot(sfs1,xlab="No of individuals",names=1:length(sfs1),ylab="Frequency",col=c("black"),  main=("WHLL"))
dev.off()
