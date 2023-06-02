library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "1.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "1.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_1.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_1.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_1.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "2.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "2.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_2.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_2.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_2.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "3.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "3.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_3.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_3.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_3.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "4.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "4.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_4.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_4.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_4.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "5.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "5.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_5.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_5.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_5.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "6.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "6.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_6.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_6.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_6.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "7.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "7.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_7.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_7.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_7.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "8.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "8.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_8.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_8.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_8.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "9.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "9.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_9.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_9.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_9.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "10.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "10.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_10.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_10.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_10.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "11.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "11.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_11.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_11.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_11.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "12.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "12.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_12.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_12.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_12.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "13.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "13.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_13.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_13.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_13.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "14.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "14.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_14.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_14.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_14.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "15.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "15.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_15.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_15.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_15.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "16.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "16.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_16.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_16.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_16.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "17.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "17.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_17.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_17.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_17.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "18.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "18.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_18.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_18.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_18.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "19.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "19.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_19.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_19.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_19.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "20.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "20.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_20.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_20.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_20.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "21.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "21.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_21.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_21.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_21.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "22.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "22.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_22.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_22.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_22.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "23.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "23.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_23.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_23.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_23.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "24.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "24.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_24.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_24.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_24.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "25.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "25.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_25.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_25.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_25.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "26.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "26.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_26.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_26.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_26.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "27.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "27.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_27.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_27.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_27.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "28.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "28.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_28.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_28.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_28.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "30.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "30.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_30.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_30.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_30.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "31.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "31.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_31.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_31.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_31.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "32.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "32.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_32.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_32.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_32.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "33.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "33.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_33.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_33.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_33.txt")


library(rehh)
library(tidyverse)
KADK_bcf <- data2haplohh(hap_file = "Z.bcftools.vcf.KADK.vcf.gz",polarize_vcf = FALSE)
CHIN_bcf <- data2haplohh(hap_file = "Z.bcftools.vcf.Chinese.vcf.gz",polarize_vcf = FALSE)

KADK_bcf_f <- subset(KADK_bcf, min_maf = 0.05)
CHIN_bcf_f <- subset(CHIN_bcf, min_maf = 0.05)
KADK_scan_bcf <- scan_hh(KADK_bcf_f, polarized = FALSE)
CHIN_scan_bcf <- scan_hh(CHIN_bcf_f, polarized = FALSE)
KADK_ihs_bcf <- ihh2ihs(KADK_scan_bcf, freqbin = 1)
CHIN_ihs_bcf <- ihh2ihs(CHIN_scan_bcf, freqbin = 1)

KADK_CHIN <- ies2xpehh(KADK_scan_bcf, CHIN_scan_bcf, popname1 = "KADK", popname2 = "CHIN", include_freq = T)

write.table(KADK_CHIN,"KADK_CHIN_xpehh_bcf_Z.txt")
write.table(KADK_ihs_bcf,"KADK_ihs_bcf_Z.txt")
write.table(CHIN_ihs_bcf,"CHIN_ihs_bcf_Z.txt")


