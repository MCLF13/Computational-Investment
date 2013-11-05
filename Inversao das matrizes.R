# Olhar a data fina das ações

# A = paste("tail(",ativos,")", sep = "") # Cria uma lista com a função (tail) para todas as ações
# 
# tail(AEDU3.SA) # Olha as ultimas 5 linhas da ação
# tail(ALLL3.SA)
# tail(AMBV4.SA)
# tail(BBAS3.SA)
# tail(BBDC3.SA) 
# tail(BBDC4.SA) 
# tail(BISA3.SA) 
# tail(BRAP4.SA) 
# tail(BRFS3.SA) 
# tail(BRKM5.SA)
# tail(BRML3.SA)
# tail(BRPR3.SA) 
# tail(BTOW3.SA) 
# tail(CCRO3.SA) 
# tail(CESP6.SA) 
# tail(CIEL3.SA) 
# tail(CMIG4.SA) 
# tail(CPFE3.SA) 
# tail(CPLE6.SA) 
# tail(CRUZ3.SA) 
# tail(CSAN3.SA) 
# tail(CSNA3.SA)
# tail(CTIP3.SA)
# tail(CYRE3.SA) 
# tail(DASA3.SA) 
# tail(DTEX3.SA)
# tail(ELET3.SA) 
# tail(ELET6.SA) 
# tail(ELPL4.SA)
# tail(EMBR3.SA) 
# tail(ENBR3.SA) 
# tail(FIBR3.SA) 
# tail(GFSA3.SA) 
# tail(GGBR4.SA) 
# tail(GOAU4.SA) 
# tail(GOLL4.SA) 
# tail(HGTX3.SA) 
# tail(HYPE3.SA) 
# tail(ITSA4.SA)
# tail(ITUB4.SA) 
# tail(JBSS3.SA) 
# tail(KLBN4.SA) 
# tail(LAME4.SA)
# tail(LIGT3.SA) 
# tail(LLXL3.SA)
# tail(LREN3.SA) 
# tail(MMXM3.SA) 
# tail(MRFG3.SA) 
# tail(MRVE3.SA) 
# tail(NATU3.SA) 
# tail(OIBR3.SA) 
# tail(OIBR4.SA) 
# tail(PCAR4.SA) 
# tail(PDGR3.SA)
# tail(PETR3.SA) 
# tail(PETR4.SA) 
# tail(RENT3.SA) 
# tail(RSID3.SA) 
# tail(SANB11.SA)
# tail(SBSP3.SA) 
# tail(SUZB5.SA) 
# tail(TIMP3.SA) 
# tail(TRPL4.SA)
# tail(UGPA3.SA) 
# tail(USIM3.SA) 
# tail(USIM5.SA) 
# tail(VAGR3.SA) 
# tail(VALE3.SA) 
# tail(VALE5.SA) 
# tail(VIVT4.SA)


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

AEDU3= Matriz(AEDU3.SA)
ALLL3= Matriz(ALLL3.SA)
AMBV4= Matriz(AMBV4.SA) 
BBAS3= Matriz(BBAS3.SA) 
BBDC3= Matriz(BBDC3.SA) 
BBDC4= Matriz(BBDC4.SA) 
BISA3= Matriz(BISA3.SA) 
BRAP4= Matriz(BRAP4.SA) 
BRFS3= Matriz(BRFS3.SA) 
BRKM5= Matriz(BRKM5.SA)
BRML3= Matriz(BRML3.SA) 
BRPR3= Matriz(BRPR3.SA) 
BTOW3= Matriz(BTOW3.SA) 
CCRO3= Matriz(CCRO3.SA) 
CESP6= Matriz(CESP6.SA) 
CIEL3= Matriz(CIEL3.SA) 
CMIG4= Matriz(CMIG4.SA)
CPFE3= Matriz(CPFE3.SA) 
CPLE6= Matriz(CPLE6.SA)
CRUZ3= Matriz(CRUZ3.SA) 
CSAN3= Matriz(CSAN3.SA) 
CSNA3= Matriz(CSNA3.SA)
CTIP3= Matriz(CTIP3.SA) 
CYRE3= Matriz(CYRE3.SA) 
DASA3= Matriz(DASA3.SA)
DTEX3= Matriz(DTEX3.SA)
ELET3= Matriz(ELET3.SA) 
ELET6= Matriz(ELET6.SA)
ELPL4= Matriz(ELPL4.SA)
EMBR3= Matriz(EMBR3.SA) 
ENBR3= Matriz(ENBR3.SA)
FIBR3= Matriz(FIBR3.SA)
GFSA3= Matriz(GFSA3.SA) 
GGBR4= Matriz(GGBR4.SA)
GOAU4= Matriz(GOAU4.SA)
GOLL4= Matriz(GOLL4.SA) 
HGTX3= Matriz(HGTX3.SA)
HYPE3= Matriz(HYPE3.SA)
ITSA4= Matriz(ITSA4.SA) 
ITUB4= Matriz(ITUB4.SA)
JBSS3= Matriz(JBSS3.SA)
KLBN4= Matriz(KLBN4.SA) 
LAME4= Matriz(LAME4.SA)
LIGT3= Matriz(LIGT3.SA)
LLXL3= Matriz(LLXL3.SA) 
LREN3= Matriz(LREN3.SA)
MMXM3= Matriz(MMXM3.SA)
MRFG3= Matriz(MRFG3.SA) 
MRVE3= Matriz(MRVE3.SA)
NATU3= Matriz(NATU3.SA)
OIBR3= Matriz(OIBR3.SA) 
OIBR4= Matriz(OIBR4.SA)
PCAR4= Matriz(PCAR4.SA)
PDGR3= Matriz(PDGR3.SA) 
PETR3= Matriz(PETR3.SA)
PETR4= Matriz(PETR4.SA)
RENT3= Matriz(RENT3.SA) 
RSID3= Matriz(RSID3.SA)
SANB11= Matriz(SANB11.SA)
SBSP3= Matriz(SBSP3.SA) 
SUZB5= Matriz(SUZB5.SA)
TIMP3= Matriz(TIMP3.SA)
TRPL4= Matriz(TRPL4.SA) 
UGPA3= Matriz(UGPA3.SA)
USIM3= Matriz(USIM3.SA)
USIM5= Matriz(USIM5.SA) 
VAGR3= Matriz(VAGR3.SA)
VALE3= Matriz(VALE3.SA)
VALE5= Matriz(VALE5.SA) 
VIVT4= Matriz(VIVT4.SA)


# Colocar label nas matrizes

label = function(acao)
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