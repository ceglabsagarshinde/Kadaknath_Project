
read.table("KADAKNATH_9IND.10kbthetasWindow.gz.pestPG")->a
read.table("CHINA_9IND.10kbthetasWindow.gz.pestPG")->b
read.table("Korean.10kbthetasWindow.gz.pestPG")->c
read.table("RIRL_9.10kbthetasWindow.gz.pestPG")->d
read.table("BROC_7.10kbthetasWindow.gz.pestPG")->e
read.table("CWLH_6.10kbthetasWindow.gz.pestPG")->f
read.table("WHLL.thetasWindow.gz.pestPG")->g



tiff(file="Pi.tif",res=600,width=7000,height=5000)
par(mfrow=c(7,5),mai=c(0.3,0.5,0.2,0.1),mgp=c(2,1,0))

plot(a$V3[a$V2==20],a$V5[a$V2==20]/a$V14[a$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="blue",ylim=c(0.0,0.015),xlim=c(10263555,10766771),main="Flank1")
legend("topleft",legend=c("KADK"),col=c("blue"),lty=1,cex=1,lwd=2,bty = "n")
plot(a$V3[a$V2==20],a$V5[a$V2==20]/a$V14[a$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="blue",ylim=c(0.0,0.015),xlim=c(10766772,10894151),main="Dup1")
plot(a$V3[a$V2==20],a$V5[a$V2==20]/a$V14[a$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="blue",ylim=c(0.0,0.015),xlim=c(10894152,11306685),main="Int")
plot(a$V3[a$V2==20],a$V5[a$V2==20]/a$V14[a$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="blue",ylim=c(0.0,0.015),xlim=c(11306686,11477501),main="Dup2")
plot(a$V3[a$V2==20],a$V5[a$V2==20]/a$V14[a$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="blue",ylim=c(0.0,0.015),xlim=c(11477502,11980000),main="Flank2")

plot(b$V3[b$V2==20],b$V5[b$V2==20]/b$V14[b$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="red",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("CHIN"),col=c("red"),lty=1,cex=1,lwd=2,bty = "n")
plot(b$V3[b$V2==20],b$V5[b$V2==20]/b$V14[b$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="red",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(b$V3[b$V2==20],b$V5[b$V2==20]/b$V14[b$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="red",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(b$V3[b$V2==20],b$V5[b$V2==20]/b$V14[b$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="red",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(b$V3[b$V2==20],b$V5[b$V2==20]/b$V14[b$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="red",ylim=c(0.0,0.015),xlim=c(11477502,11980000))

plot(c$V3[c$V2==20],c$V5[c$V2==20]/c$V14[c$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="grey",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("YOSK"),col=c("grey"),lty=1,cex=1,lwd=2,bty = "n")
plot(c$V3[c$V2==20],c$V5[c$V2==20]/c$V14[c$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="grey",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(c$V3[c$V2==20],c$V5[c$V2==20]/c$V14[c$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="grey",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(c$V3[c$V2==20],c$V5[c$V2==20]/c$V14[c$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="grey",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(c$V3[c$V2==20],c$V5[c$V2==20]/c$V14[c$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="grey",ylim=c(0.0,0.015),xlim=c(11477502,11980000))

plot(d$V3[d$V2==20],d$V5[d$V2==20]/d$V14[d$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="green",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("RIRL"),col=c("green"),lty=1,cex=1,lwd=2,bty = "n")
plot(d$V3[d$V2==20],d$V5[d$V2==20]/d$V14[d$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="green",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(d$V3[d$V2==20],d$V5[d$V2==20]/d$V14[d$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="green",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(d$V3[d$V2==20],d$V5[d$V2==20]/d$V14[d$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="green",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(d$V3[d$V2==20],d$V5[d$V2==20]/d$V14[d$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="green",ylim=c(0.0,0.015),xlim=c(11477502,11980000))


plot(e$V3[e$V2==20],e$V5[e$V2==20]/e$V14[e$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="purple",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("BROC"),col=c("purple"),lty=1,cex=1,lwd=2,bty = "n")
plot(e$V3[e$V2==20],e$V5[e$V2==20]/e$V14[e$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="purple",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(e$V3[e$V2==20],e$V5[e$V2==20]/e$V14[e$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="purple",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(e$V3[e$V2==20],e$V5[e$V2==20]/e$V14[e$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="purple",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(e$V3[e$V2==20],e$V5[e$V2==20]/e$V14[e$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="purple",ylim=c(0.0,0.015),xlim=c(11477502,11980000))

plot(f$V3[f$V2==20],f$V5[f$V2==20]/f$V14[f$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="pink",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("CWLH"),col=c("pink"),lty=1,cex=1,lwd=2,bty = "n")
plot(f$V3[f$V2==20],f$V5[f$V2==20]/f$V14[f$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="pink",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(f$V3[f$V2==20],f$V5[f$V2==20]/f$V14[f$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="pink",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(f$V3[f$V2==20],f$V5[f$V2==20]/f$V14[f$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="pink",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(f$V3[f$V2==20],f$V5[f$V2==20]/f$V14[f$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="pink",ylim=c(0.0,0.015),xlim=c(11477502,11980000))

plot(g$V3[g$V2==20],g$V5[g$V2==20]/g$V14[g$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="tan",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("WHLL"),col=c("tan"),lty=1,cex=1,lwd=2,bty = "n")

plot(g$V3[g$V2==20],g$V5[g$V2==20]/g$V14[g$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="tan",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(g$V3[g$V2==20],g$V5[g$V2==20]/g$V14[g$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="tan",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(g$V3[g$V2==20],g$V5[g$V2==20]/g$V14[g$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="tan",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(g$V3[g$V2==20],g$V5[g$V2==20]/g$V14[g$V2==20],type="l", lwd=2,ylab=expression(bold(pi)),xlab="",cex.axis=0.8,col="tan",ylim=c(0.0,0.015),xlim=c(11477502,11980000))
dev.off()




tiff(file="theta.tif",res=600,width=7000,height=5000)
par(mfrow=c(7,5),mai=c(0.3,0.5,0.2,0.1),mgp=c(2,1,0))

plot(a$V3[a$V2==20],a$V4[a$V2==20]/a$V14[a$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="blue",ylim=c(0.0,0.015),xlim=c(10263555,10766771),main="Flank1")
legend("topleft",legend=c("KADK"),col=c("blue"),lty=1,cex=1,lwd=2,bty = "n")
plot(a$V3[a$V2==20],a$V4[a$V2==20]/a$V14[a$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="blue",ylim=c(0.0,0.015),xlim=c(10766772,10894151),main="Dup1")
plot(a$V3[a$V2==20],a$V4[a$V2==20]/a$V14[a$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="blue",ylim=c(0.0,0.015),xlim=c(10894152,11306685),main="Int")
plot(a$V3[a$V2==20],a$V4[a$V2==20]/a$V14[a$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="blue",ylim=c(0.0,0.015),xlim=c(11306686,11477501),main="Dup2")
plot(a$V3[a$V2==20],a$V4[a$V2==20]/a$V14[a$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="blue",ylim=c(0.0,0.015),xlim=c(11477502,11980000),main="Flank2")

plot(b$V3[b$V2==20],b$V4[b$V2==20]/b$V14[b$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="red",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("CHIN"),col=c("red"),lty=1,cex=1,lwd=2,bty = "n")
plot(b$V3[b$V2==20],b$V4[b$V2==20]/b$V14[b$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="red",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(b$V3[b$V2==20],b$V4[b$V2==20]/b$V14[b$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="red",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(b$V3[b$V2==20],b$V4[b$V2==20]/b$V14[b$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="red",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(b$V3[b$V2==20],b$V4[b$V2==20]/b$V14[b$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="red",ylim=c(0.0,0.015),xlim=c(11477502,11980000))

plot(c$V3[c$V2==20],c$V4[c$V2==20]/c$V14[c$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="grey",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("YOSK"),col=c("grey"),lty=1,cex=1,lwd=2,bty = "n")
plot(c$V3[c$V2==20],c$V4[c$V2==20]/c$V14[c$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="grey",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(c$V3[c$V2==20],c$V4[c$V2==20]/c$V14[c$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="grey",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(c$V3[c$V2==20],c$V4[c$V2==20]/c$V14[c$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="grey",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(c$V3[c$V2==20],c$V4[c$V2==20]/c$V14[c$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="grey",ylim=c(0.0,0.015),xlim=c(11477502,11980000))

plot(d$V3[d$V2==20],d$V4[d$V2==20]/d$V14[d$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="green",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("RIRL"),col=c("green"),lty=1,cex=1,lwd=2,bty = "n")
plot(d$V3[d$V2==20],d$V4[d$V2==20]/d$V14[d$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="green",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(d$V3[d$V2==20],d$V4[d$V2==20]/d$V14[d$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="green",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(d$V3[d$V2==20],d$V4[d$V2==20]/d$V14[d$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="green",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(d$V3[d$V2==20],d$V4[d$V2==20]/d$V14[d$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="green",ylim=c(0.0,0.015),xlim=c(11477502,11980000))


plot(e$V3[e$V2==20],e$V4[e$V2==20]/e$V14[e$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="purple",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("BROC"),col=c("purple"),lty=1,cex=1,lwd=2,bty = "n")
plot(e$V3[e$V2==20],e$V4[e$V2==20]/e$V14[e$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="purple",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(e$V3[e$V2==20],e$V4[e$V2==20]/e$V14[e$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="purple",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(e$V3[e$V2==20],e$V4[e$V2==20]/e$V14[e$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="purple",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(e$V3[e$V2==20],e$V4[e$V2==20]/e$V14[e$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="purple",ylim=c(0.0,0.015),xlim=c(11477502,11980000))

plot(f$V3[f$V2==20],f$V4[f$V2==20]/f$V14[f$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="pink",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("CWLH"),col=c("pink"),lty=1,cex=1,lwd=2,bty = "n")
plot(f$V3[f$V2==20],f$V4[f$V2==20]/f$V14[f$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="pink",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(f$V3[f$V2==20],f$V4[f$V2==20]/f$V14[f$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="pink",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(f$V3[f$V2==20],f$V4[f$V2==20]/f$V14[f$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="pink",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(f$V3[f$V2==20],f$V4[f$V2==20]/f$V14[f$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="pink",ylim=c(0.0,0.015),xlim=c(11477502,11980000))

plot(g$V3[g$V2==20],g$V4[g$V2==20]/g$V14[g$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="tan",ylim=c(0.0,0.015),xlim=c(10263555,10766771))
legend("topleft",legend=c("WHLL"),col=c("tan"),lty=1,cex=1,lwd=2,bty = "n")
plot(g$V3[g$V2==20],g$V4[g$V2==20]/g$V14[g$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="tan",ylim=c(0.0,0.015),xlim=c(10766772,10894151))
plot(g$V3[g$V2==20],g$V4[g$V2==20]/g$V14[g$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="tan",ylim=c(0.0,0.015),xlim=c(10894152,11306685))
plot(g$V3[g$V2==20],g$V4[g$V2==20]/g$V14[g$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="tan",ylim=c(0.0,0.015),xlim=c(11306686,11477501))
plot(g$V3[g$V2==20],g$V4[g$V2==20]/g$V14[g$V2==20],type="l", lwd=2,ylab=expression(bold(theta)),xlab="",cex.axis=0.8,col="tan",ylim=c(0.0,0.015),xlim=c(11477502,11980000))
dev.off()
















