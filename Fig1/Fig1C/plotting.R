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

##Names are replaced for ordering black bone , commercial and native in admixture plot. For examaple WHLL to Com_A_WHLL  to  to 
##WHLL to Com_A_WHLL
##WHLL to Com_A_WHLL
##WHLL to Com_A_WHLL
##BROL to Com_D_BROL
##BROL to Com_D_BROL
##KADK to BBC_K_KADK
##KADK to BBC_K_KADK
##KADK to BBC_K_KADK
##KADK to BBC_K_KADK
##KADK to BBC_K_KADK
##KADK to BBC_K_KADK
##KADK to BBC_K_KADK
##KADK to BBC_K_KADK
##KADK to BBC_K_KADK
##KADK to BBC_K_KADK
##SILK to BBC_B_SILK
##TIBC to NTC_H_TIBC
##LCYN to NTC_B_LCYN
##LCYN to NTC_B_LCYN
##LCYN to NTC_B_LCYN
##RJFC to NTC_C_RJFC
##RJFC to NTC_C_RJFC
##NATC to NTC_A_NATC
##NATC to NTC_A_NATC
##NATC to NTC_A_NATC
##NATC to NTC_A_NATC
##NATC to NTC_A_NATC
##NATC to NTC_A_NATC
##RLCC to COM_I_RLCC
##BROC to Com_B_BROC
##BROC to Com_B_BROC
##BROC to Com_B_BROC
##BROC to Com_B_BROC
##BROC to Com_B_BROC
##BROC to Com_B_BROC
##BROC to Com_B_BROC
##DBLC to Com_F_DBLC
##SBFC to Com_G_SBFC
##WCBP to Com_H_WCBP
##LCEM to BBC_G_LCEM
##LCEM to BBC_G_LCEM
##LCJY to BBC_D_LCJY
##LCMC to BBC_E_LCMC
##LCMY to BBC_C_LCMY
##LCMY to BBC_C_LCMY
##LCMY to BBC_C_LCMY
##LCMY to BBC_C_LCMY
##LCTF to BBC_J_LCTF
##TCAB to NTC_D_TCAB
##TCAB_FM to BBC_F_TCAB_FM
##TCDQ to NTC_E_TCDQ
##TCDQ to NTC_E_TCDQ
##TCDQ to NTC_E_TCDQ
##TCDQ_FM to BBC_F_TCDQ_FM
##TCGZ to NTC_F_TCGZ
##TCGZ to NTC_F_TCGZ
##TCGZ_FM to BBC_F_TCGZ_FM
##TCSN to NTC_G_TCSN
##TCSN to NTC_G_TCSN
##TCSN to NTC_G_TCSN
##RJFC to NTC_C_RJFC
##DGLC to NTC_I_DGLC
##LCEM to BBC_G_LCEM
##KADK to BBC_K_KADK
##KADK_N to BBC_L_KADK_N
##YOSK to BBC_I_YOSK
##GGMI to NTC_K_GGMI
##GGMI to NTC_K_GGMI
##GGMI to NTC_K_GGMI
##GGSI to NTC_J_GGSI
##GGSI to NTC_J_GGSI
##GDN4 to Com_E_GDN4
##CWLH to Com_A_CWLH
##CWLH to Com_A_CWLH
##CWLH to Com_A_CWLH
##CWLH to Com_A_CWLH
##CWLH to Com_A_CWLH
##CWLH  to Com_A_CWLH
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##RIRL to Com_C_RIRL
##AYCM to BBC_A_AYCM
##YOSK to BBC_I_YOSK
##YOSK to BBC_I_YOSK
##YOSK to BBC_I_YOSK
##XBBC to BBC_H_XBBC
##XBBC to BBC_H_XBBC
##XBBC to BBC_H_XBBC
##XBBC to BBC_H_XBBC
##XBBC to BBC_H_XBBC

