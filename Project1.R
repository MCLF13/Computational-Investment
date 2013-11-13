#Habilita o pacote quantmod
library(quantmod)
library(matlab)
library(xlsx)

#Cria um novo ambiente para armazenar os dados
stockData <- new.env() 

#Le arquivo xlsx
stockCode <- read.xlsx("/Users/Luis/Documents/GitHub/Computational-Investment/AtivosIndice.xlsx", sheetIndex=1)

#Concatena .SA
yahooCode <- paste(stockCode[,1], ".SA", sep="")

#Especifica as datas de interesse
startDate = as.Date("2000-01-01") 
endDate = as.Date("2012-12-31")

#Obtêm os dados dos ativos
ativos<-c(yahooCode)
getSymbols(ativos, src="yahoo",from=startDate,to=endDate)

#Calcula log-retorno do preço de fechamento (close)
#stockreturns <- diff(log(PETR4.SA[,4]))

#Plota gráfico ação
#plot.xts(Cl(stockreturns),major.format="%b/%d/%Y",main="PETR4",ylab="Log-return Close Price.",xlab="Time")

#Obtém o preço de mercado e calcula log-retorno
market <- c("^BVSP")
getSymbols(market, src="yahoo",from=startDate,to=endDate)
#marketreturns <- diff(log(BVSP[,4]))

#Plota gráfico mercado
#plot.xts(Cl(marketreturns),major.format="%b/%d/%Y",main="Ibovespa",ylab="Log-return Close Price.",xlab="Time")

#Rolling Mean
#a = rollmean(GOOG[,6], 20)
#print (a)
#Rolling STD
#b = runSD(GOOG[,6],n=20)
#print (b)
#Bollinger Bands
#BBands(MSFT[,4], n = 20, sd = 1)
#BBands(AAPL[,4], n = 20, sd = 1)
#d = (AAPL[,4] - a)/b

# write.table(AAPL,file="Myfile.csv",sep=",",row.names=F)

# library(tseries)
# SBUX.z = get.hist.quote(instrument="sbux", start="1993-03-01", end="2008-03-01", quote="AdjClose",
#                            provider="yahoo", origin="1970-01-01",
#                            compression="d", retclass="zoo")
# 
# write.table(SBUX.z,file="Myfile.csv",sep=",",row.names=F)
# x = merge(index(AAPL),AAPL)
# write.table(x, file="xTeste.csv", sep=",")

# > library(TTR)
# > x <- stockSymbols()
# Fetching AMEX symbols...
# Fetching NASDAQ symbols...
# Fetching NYSE symbols...
# > str(x)
# 'data.frame':   6473 obs. of  8 variables:
#   $ Symbol   : chr  "ADK" "ADK-WT" "AFP" "AIM" ...
# $ Name     : chr  "Adcare Health Systems Inc" "Adcare Health Systems Inc" "United Capital Corporation" "Aerosonic Corporation" ...
# $ LastSale : num  4.12 2.1 30 2.73 2.7 ...
# $ MarketCap: num  3.28e+07 0.00 2.68e+08 1.02e+07 9.29e+07 ...
# $ IPOyear  : num  NA NA 1973 NA NA ...
# $ Sector   : chr  "Health Care" "n/a" "Capital Goods" "Capital Goods" ...
# $ Industry : chr  "Hospital/Nursing Management" "n/a" "Metal Fabrications" "Industrial Machinery/Components" ...
# $ Exchange : chr  "AMEX" "AMEX" "AMEX" "AMEX" ...

# TTR::stockSymbols()