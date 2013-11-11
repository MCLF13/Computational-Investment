library(quantmod)
library(matlab)
library(xlsx)

correla = cbind(AEDU3.SA[,4],ALLL3.SA[,4],AMBV4.SA[,4],BBAS3.SA[,4],BBDC3.SA[,4],BBDC4.SA[,4],BISA3.SA[,4],BRAP4.SA[,4],
                BRFS3.SA[,4],BRKM5.SA[,4],BRML3.SA[,4],BRPR3.SA[,4],BTOW3.SA[,4],CCRO3.SA[,4],CESP6.SA[,4],CIEL3.SA[,4],
                CMIG4.SA[,4],CPFE3.SA[,4],CPLE6.SA[,4],CRUZ3.SA[,4],CSAN3.SA[,4],CSNA3.SA[,4],CTIP3.SA[,4],CYRE3.SA[,4],
                DASA3.SA[,4],DTEX3.SA[,4],ELET3.SA[,4],ELET6.SA[,4],ELPL4.SA[,4],EMBR3.SA[,4],ENBR3.SA[,4],FIBR3.SA[,4],
                GFSA3.SA[,4],GGBR4.SA[,4],GOAU4.SA[,4],GOLL4.SA[,4],HGTX3.SA[,4],HYPE3.SA[,4],ITSA4.SA[,4],ITUB4.SA[,4],
                JBSS3.SA[,4],KLBN4.SA[,4],LAME4.SA[,4],LIGT3.SA[,4],LLXL3.SA[,4],LREN3.SA[,4],MMXM3.SA[,4],MRFG3.SA[,4],
                MRVE3.SA[,4],NATU3.SA[,4],OIBR3.SA[,4],OIBR4.SA[,4],PCAR4.SA[,4],PDGR3.SA[,4],PETR3.SA[,4],PETR4.SA[,4],
                RENT3.SA[,4],RSID3.SA[,4],SANB11.SA[,4],SBSP3.SA[,4],SUZB5.SA[,4],TIMP3.SA[,4],TRPL4.SA[,4],UGPA3.SA[,4],
                USIM3.SA[,4],USIM5.SA[,4],VAGR3.SA[,4],VALE3.SA[,4],VALE5.SA[,4],VIVT4.SA)



COR = cor(correla, use = "complete.obs")
Dist = Dist(COR)