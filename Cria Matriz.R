# Para igualar a data final das ações
A = matrix("", 1 ,6)
AMBV4 = rbind(A,AMBV4); BBDC4 = rbind(A,BBDC4); CMIG4 = rbind(A,CMIG4); CPLE6 = rbind(A,CPLE6); ELET6 = rbind(A,ELET6); ELPL4 = rbind(A,ELPL4)
GGBR4 = rbind(A,GGBR4); GOAU4 = rbind(A,GOAU4); GOLL4 = rbind(A,GOLL4); ITSA4 = rbind(A,ITSA4); ITUB4 = rbind(A,ITUB4); KLBN4 = rbind(A,KLBN4)
LAME4 = rbind(A,LAME4); OIBR4 = rbind(A,OIBR4); PCAR4 = rbind(A,PCAR4); PETR4 = rbind(A,PETR4); SUZB5 = rbind(A,SUZB5); USIM5 = rbind(A,USIM5)
VIVT4 = rbind(A,VIVT4)




Geral = function(temp1,temp2) # Cria uma unica matriz para todas as ações
{
  if (size(temp1,1) < size(temp2,1))
  {
    z = size(temp2,1)- size(temp1,1)
    z = matrix("",z,size(temp1,2))
    temp1 = rbind(temp1,z)
    
  }
    else if(size(temp1,1) >size(temp2,1))
  {
    z = size(temp1,1)- size(temp2,1)
    z = matrix("",z,size(temp2,2))
    temp2 = rbind(temp2,z)
  }
  temp = cbind(temp1,temp2)
}

ACOES = Geral(AEDU3, ALLL3); ACOES = Geral(ACOES, AMBV4); ACOES = Geral(ACOES, BBAS3); ACOES = Geral(ACOES, BBDC3); ACOES = Geral(ACOES, BBDC4)
ACOES = Geral(ACOES, BISA3); ACOES = Geral(ACOES, BRAP4); ACOES = Geral(ACOES, BRFS3); ACOES = Geral(ACOES, BRKM5); ACOES = Geral(ACOES, BRML3)
ACOES = Geral(ACOES, BRPR3); ACOES = Geral(ACOES, BTOW3); ACOES = Geral(ACOES, CCRO3); ACOES = Geral(ACOES, CESP6); ACOES = Geral(ACOES, CIEL3)
ACOES = Geral(ACOES, CMIG4); ACOES = Geral(ACOES, CPFE3); ACOES = Geral(ACOES, CPLE6); ACOES = Geral(ACOES, CRUZ3); ACOES = Geral(ACOES, CSAN3)
ACOES = Geral(ACOES, CSNA3); ACOES = Geral(ACOES, CTIP3); ACOES = Geral(ACOES, CYRE3); ACOES = Geral(ACOES, DASA3); ACOES = Geral(ACOES, DTEX3)
ACOES = Geral(ACOES, ELET3); ACOES = Geral(ACOES, ELET6); ACOES = Geral(ACOES, ELPL4); ACOES = Geral(ACOES, EMBR3); ACOES = Geral(ACOES, ENBR3)
ACOES = Geral(ACOES, FIBR3); ACOES = Geral(ACOES, GFSA3); ACOES = Geral(ACOES, GGBR4); ACOES = Geral(ACOES, GOAU4); ACOES = Geral(ACOES, GOLL4)
ACOES = Geral(ACOES, HGTX3); ACOES = Geral(ACOES, HYPE3); ACOES = Geral(ACOES, ITSA4); ACOES = Geral(ACOES, ITUB4); ACOES = Geral(ACOES, JBSS3)
ACOES = Geral(ACOES, KLBN4); ACOES = Geral(ACOES, LAME4); ACOES = Geral(ACOES, LIGT3); ACOES = Geral(ACOES, LLXL3); ACOES = Geral(ACOES, LREN3)
ACOES = Geral(ACOES, MMXM3); ACOES = Geral(ACOES, MRFG3); ACOES = Geral(ACOES, MRVE3); ACOES = Geral(ACOES, NATU3); ACOES = Geral(ACOES, OIBR3)
ACOES = Geral(ACOES, OIBR4); ACOES = Geral(ACOES, PCAR4); ACOES = Geral(ACOES, PDGR3); ACOES = Geral(ACOES, PETR3); ACOES = Geral(ACOES, PETR4)
ACOES = Geral(ACOES, RENT3); ACOES = Geral(ACOES, RSID3); ACOES = Geral(ACOES, SANB11); ACOES = Geral(ACOES, SBSP3); ACOES = Geral(ACOES, SUZB5)
ACOES = Geral(ACOES, TIMP3); ACOES = Geral(ACOES, TRPL4); ACOES = Geral(ACOES, UGPA3); ACOES = Geral(ACOES, USIM3); ACOES = Geral(ACOES, USIM5)
ACOES = Geral(ACOES, VAGR3); ACOES = Geral(ACOES, VALE3); ACOES = Geral(ACOES, VALE5); ACOES = Geral(ACOES, VIVT4)

data = label(SBSP3.SA) ; rownames(ACOES) = data

require(xlsx)
write.xlsx(ACOES, "/Users/Luis/Desktop/Ações.xlsx")
write.csv(ACOES, "/Users/Luis/Desktop/Ações.csv")
