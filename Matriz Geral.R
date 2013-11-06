
# Cria uma matriz da acao desejada
Matriz = function(acao){
  temp = matrix(acao[,1])
  for (i in 2:6)
  {
    temp2= matrix(acao[,i])
    temp = cbind(temp , temp2)
  }
  matriz = matrix(temp[1,])
  for (i in 2:size(temp,1))
  {
    A = matrix(temp[i,])
    matriz = cbind(A,matriz)
  }
  matriz = t(matriz)
}

acoes = stockCode[,1]
# nome = paste(acoes, "= Matriz(", ativos,")", sep = "")

AEDU3= Matriz(AEDU3.SA) ; ALLL3= Matriz(ALLL3.SA) ; AMBV4= Matriz(AMBV4.SA); BBAS3= Matriz(BBAS3.SA) ; BBDC3= Matriz(BBDC3.SA) ; BBDC4= Matriz(BBDC4.SA)
BISA3= Matriz(BISA3.SA) ; BRAP4= Matriz(BRAP4.SA) ; BRFS3= Matriz(BRFS3.SA) ; BRKM5= Matriz(BRKM5.SA) ; BRML3= Matriz(BRML3.SA) ; BRPR3= Matriz(BRPR3.SA)
BTOW3= Matriz(BTOW3.SA  ; CCRO3= Matriz(CCRO3.SA) ; CESP6= Matriz(CESP6.SA) ; CIEL3= Matriz(CIEL3.SA) ; CMIG4= Matriz(CMIG4.SA) ; CPFE3= Matriz(CPFE3.SA)
CPLE6= Matriz(CPLE6.SA) ; CRUZ3= Matriz(CRUZ3.SA) ; CSAN3= Matriz(CSAN3.SA) ; CSNA3= Matriz(CSNA3.SA) ; CTIP3= Matriz(CTIP3.SA) ; CYRE3= Matriz(CYRE3.SA)
DASA3= Matriz(DASA3.SA) ; DTEX3= Matriz(DTEX3.SA) ; ELET3= Matriz(ELET3.SA) ; ELET6= Matriz(ELET6.SA) ; ELPL4= Matriz(ELPL4.SA) ; EMBR3= Matriz(EMBR3.SA)
ENBR3= Matriz(ENBR3.SA) ; FIBR3= Matriz(FIBR3.SA) ; GFSA3= Matriz(GFSA3.SA) ; GGBR4= Matriz(GGBR4.SA) ; GOAU4= Matriz(GOAU4.SA) ; GOLL4= Matriz(GOLL4.SA)
HGTX3= Matriz(HGTX3.SA) ; HYPE3= Matriz(HYPE3.SA) ; ITSA4= Matriz(ITSA4.SA) ; ITUB4= Matriz(ITUB4.SA) ; JBSS3= Matriz(JBSS3.SA) ; KLBN4= Matriz(KLBN4.SA)
MRVE3= Matriz(MRVE3.SA) ; NATU3= Matriz(NATU3.SA) ; OIBR3= Matriz(OIBR3.SA) ; OIBR4= Matriz(OIBR4.SA) ; PCAR4= Matriz(PCAR4.SA) ; PDGR3= Matriz(PDGR3.SA)
PETR3= Matriz(PETR3.SA) ; PETR4= Matriz(PETR4.SA) ; RENT3= Matriz(RENT3.SA) ; RSID3= Matriz(RSID3.SA) ; SANB11= Matriz(SANB11.SA) ; SBSP3= Matriz(SBSP3.SA)
SUZB5= Matriz(SUZB5.SA) ; TIMP3= Matriz(TIMP3.SA) ; TRPL4= Matriz(TRPL4.SA) ; UGPA3= Matriz(UGPA3.SA) ; USIM3= Matriz(USIM3.SA) ; USIM5= Matriz(USIM5.SA)
VAGR3= Matriz(VAGR3.SA) ; VALE3= Matriz(VALE3.SA) ; VALE5= Matriz(VALE5.SA) ; VIVT4= Matriz(VIVT4.SA)


label = function(acao)  # Colocar label nas matrizes
{
  data = index(acao)
  Data = paste(data,"", sep = "")
  date = matrix(Data[1])
  for (i in 2:length(Data))
  {
    temp = matrix(Data[i])
    date = rbind(temp,date)
  }
  data = date  
}

colname = c("Open", "High", "Low", "Close", "Volume", "Adjusted")
# Label = paste("data = label(", ativos, ")", " ", ";", " " , "rownames(", acoes, ") = data", " ", ";", " ", "colnames(", acoes, ") = colname", sep = "")


data = label(AEDU3.SA) ; rownames(AEDU3) = data ; colnames(AEDU3) = colname
data = label(ALLL3.SA) ; rownames(ALLL3) = data ; colnames(ALLL3) = colname
data = label(AMBV4.SA) ; rownames(AMBV4) = data ; colnames(AMBV4) = colname
data = label(BBAS3.SA) ; rownames(BBAS3) = data ; colnames(BBAS3) = colname
data = label(BBDC3.SA) ; rownames(BBDC3) = data ; colnames(BBDC3) = colname
data = label(BBDC4.SA) ; rownames(BBDC4) = data ; colnames(BBDC4) = colname
data = label(BISA3.SA) ; rownames(BISA3) = data ; colnames(BISA3) = colname
data = label(BRAP4.SA) ; rownames(BRAP4) = data ; colnames(BRAP4) = colname
data = label(BRFS3.SA) ; rownames(BRFS3) = data ; colnames(BRFS3) = colname
data = label(BRKM5.SA) ; rownames(BRKM5) = data ; colnames(BRKM5) = colname
data = label(BRML3.SA) ; rownames(BRML3) = data ; colnames(BRML3) = colname
data = label(BRPR3.SA) ; rownames(BRPR3) = data ; colnames(BRPR3) = colname
data = label(BTOW3.SA) ; rownames(BTOW3) = data ; colnames(BTOW3) = colname
data = label(CCRO3.SA) ; rownames(CCRO3) = data ; colnames(CCRO3) = colname
data = label(CESP6.SA) ; rownames(CESP6) = data ; colnames(CESP6) = colname
data = label(CIEL3.SA) ; rownames(CIEL3) = data ; colnames(CIEL3) = colname
data = label(CMIG4.SA) ; rownames(CMIG4) = data ; colnames(CMIG4) = colname
data = label(CPFE3.SA) ; rownames(CPFE3) = data ; colnames(CPFE3) = colname
data = label(CPLE6.SA) ; rownames(CPLE6) = data ; colnames(CPLE6) = colname
data = label(CRUZ3.SA) ; rownames(CRUZ3) = data ; colnames(CRUZ3) = colname
data = label(CSAN3.SA) ; rownames(CSAN3) = data ; colnames(CSAN3) = colname
data = label(CSNA3.SA) ; rownames(CSNA3) = data ; colnames(CSNA3) = colname
data = label(CTIP3.SA) ; rownames(CTIP3) = data ; colnames(CTIP3) = colname
data = label(CYRE3.SA) ; rownames(CYRE3) = data ; colnames(CYRE3) = colname
data = label(DASA3.SA) ; rownames(DASA3) = data ; colnames(DASA3) = colname
data = label(DTEX3.SA) ; rownames(DTEX3) = data ; colnames(DTEX3) = colname
data = label(ELET3.SA) ; rownames(ELET3) = data ; colnames(ELET3) = colname
data = label(ELET6.SA) ; rownames(ELET6) = data ; colnames(ELET6) = colname
data = label(ELPL4.SA) ; rownames(ELPL4) = data ; colnames(ELPL4) = colname
data = label(EMBR3.SA) ; rownames(EMBR3) = data ; colnames(EMBR3) = colname
data = label(ENBR3.SA) ; rownames(ENBR3) = data ; colnames(ENBR3) = colname
data = label(FIBR3.SA) ; rownames(FIBR3) = data ; colnames(FIBR3) = colname
data = label(GFSA3.SA) ; rownames(GFSA3) = data ; colnames(GFSA3) = colname
data = label(GGBR4.SA) ; rownames(GGBR4) = data ; colnames(GGBR4) = colname
data = label(GOAU4.SA) ; rownames(GOAU4) = data ; colnames(GOAU4) = colname
data = label(GOLL4.SA) ; rownames(GOLL4) = data ; colnames(GOLL4) = colname
data = label(HGTX3.SA) ; rownames(HGTX3) = data ; colnames(HGTX3) = colname
data = label(HYPE3.SA) ; rownames(HYPE3) = data ; colnames(HYPE3) = colname
data = label(ITSA4.SA) ; rownames(ITSA4) = data ; colnames(ITSA4) = colname
data = label(ITUB4.SA) ; rownames(ITUB4) = data ; colnames(ITUB4) = colname
data = label(JBSS3.SA) ; rownames(JBSS3) = data ; colnames(JBSS3) = colname
data = label(KLBN4.SA) ; rownames(KLBN4) = data ; colnames(KLBN4) = colname
data = label(LAME4.SA) ; rownames(LAME4) = data ; colnames(LAME4) = colname
data = label(LIGT3.SA) ; rownames(LIGT3) = data ; colnames(LIGT3) = colname
data = label(LLXL3.SA) ; rownames(LLXL3) = data ; colnames(LLXL3) = colname
data = label(LREN3.SA) ; rownames(LREN3) = data ; colnames(LREN3) = colname
data = label(MMXM3.SA) ; rownames(MMXM3) = data ; colnames(MMXM3) = colname
data = label(MRFG3.SA) ; rownames(MRFG3) = data ; colnames(MRFG3) = colname
data = label(MRVE3.SA) ; rownames(MRVE3) = data ; colnames(MRVE3) = colname
data = label(NATU3.SA) ; rownames(NATU3) = data ; colnames(NATU3) = colname
data = label(OIBR3.SA) ; rownames(OIBR3) = data ; colnames(OIBR3) = colname
data = label(OIBR4.SA) ; rownames(OIBR4) = data ; colnames(OIBR4) = colname
data = label(PCAR4.SA) ; rownames(PCAR4) = data ; colnames(PCAR4) = colname
data = label(PDGR3.SA) ; rownames(PDGR3) = data ; colnames(PDGR3) = colname
data = label(PETR3.SA) ; rownames(PETR3) = data ; colnames(PETR3) = colname
data = label(PETR4.SA) ; rownames(PETR4) = data ; colnames(PETR4) = colname
data = label(RENT3.SA) ; rownames(RENT3) = data ; colnames(RENT3) = colname
data = label(RSID3.SA) ; rownames(RSID3) = data ; colnames(RSID3) = colname
data = label(SANB11.SA) ; rownames(SANB11) = data ; colnames(SANB11) = colname
data = label(SBSP3.SA) ; rownames(SBSP3) = data ; colnames(SBSP3) = colname
data = label(SUZB5.SA) ; rownames(SUZB5) = data ; colnames(SUZB5) = colname
data = label(TIMP3.SA) ; rownames(TIMP3) = data ; colnames(TIMP3) = colname
data = label(TRPL4.SA) ; rownames(TRPL4) = data ; colnames(TRPL4) = colname
data = label(UGPA3.SA) ; rownames(UGPA3) = data ; colnames(UGPA3) = colname
data = label(USIM3.SA) ; rownames(USIM3) = data ; colnames(USIM3) = colname
data = label(USIM5.SA) ; rownames(USIM5) = data ; colnames(USIM5) = colname
data = label(VAGR3.SA) ; rownames(VAGR3) = data ; colnames(VAGR3) = colname
data = label(VALE3.SA) ; rownames(VALE3) = data ; colnames(VALE3) = colname
data = label(VALE5.SA) ; rownames(VALE5) = data ; colnames(VALE5) = colname
data = label(VIVT4.SA) ; rownames(VIVT4) = data ; colnames(VIVT4) = colname

 # Para igualar a data final das ações
A = matrix("", 1 ,6)
AMBV4 = rbind(A,AMBV4); BBDC4 = rbind(A,BBDC4); CMIG4 = rbind(A,CMIG4); CPLE6 = rbind(A,CPLE6); ELET6 = rbind(A,ELET6); ELPL4 = rbind(A,ELPL4)
GGBR4 = rbind(A,GGBR4); GOAU4 = rbind(A,GOAU4); GOLL4 = rbind(A,GOLL4); ITSA4 = rbind(A,ITSA4); ITUB4 = rbind(A,ITUB4); KLBN4 = rbind(A,KLBN4)
LAME4 = rbind(A,LAME4); OIBR4 = rbind(A,OIBR4); PCAR4 = rbind(A,PCAR4); PETR4 = rbind(A,PETR4); SUZB5 = rbind(A,SUZB5); USIM5 = rbind(A,USIM5)
VIVT4 = rbind(A,VIVT4)


require(matlab)
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

data = label(SBSP3.SA) ; rownames(ACOES) = data # Colaca Label

require(xlsx)
write.xlsx(ACOES, "/Users/Luis/Desktop/Ações.xlsx")
write.csv(ACOES, "/Users/Luis/Desktop/Ações.csv")
