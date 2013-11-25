load("/Users/Luis/Documents/GitHub/Computational-Investment/Dados Bloomberg.RData")   # Carrega dados sem ter que rodar a programação
require(xlsx)
require(matlab)

Data = read.csv("F:/GitHub/Computational-Investment/Tabelas/Datas.csv") # Pegar Datas
Data = matrix(Data[,1])
# caminho = paste("/Users/Luis/Documents/GitHub/Computational-Investment/Tabelas/Parte", 1:82, ".xlsx", sep = "")
# Ativos = c()
# n = length(caminho)-1
# 
# for (k in 1:n)
# {
#   for (i in 1:20)     # Ler arquivos XLSX
#   {
#     Temp = read.xlsx(caminho[k], i, header=FALSE)
#     Temp1 = matrix(Temp[1,1])
#     Temp = matrix(Temp[,2])
#     if (size(Temp,1) < 8434)       # Para pegar o dado mesmo que esteja com problemas
#     {
#       Temp = matrix(,8434,)
#       Temp[1] = Temp1
#       Ativos = cbind(Ativos,Temp)
#       print(i + (k-1)*20)          # Pra ver o progresso
#       
#     } else {
#       Temp = matrix(Temp[2:size(Temp,1),])
#       Temp[1] = Temp1
#       Ativos = cbind(Ativos,Temp)
#       print(i + (k-1)*20)          # Pra ver o progresso
#     }
#   }
# }
# 
# for (j in 1:14)   # Ultima parte tem somente 14 planilhas
# {
#   Temp = read.xlsx(caminho[82],j,header=FALSE)
#   Temp1 = matrix(Temp[1,1])
#   Temp = matrix(Temp[,2])
#   Temp = matrix(Temp[2:size(Temp,1),])
#   Temp[1] = Temp1
#   Ativos = cbind(Ativos,Temp)
#   print(j)          # Pra ver o progresso
# }
# 
# nomes = Ativos[1,]          # Colcar label
# Ativos = Ativos[-1,]

Ativos = read.csv("F:/GitHub/Computational-Investment/Dados.csv")
nomes = colnames(Ativos)


ativos = c()
for (i in 1:ncol(Ativos))            # Transformar a matriz em numerica
{
  temp = as.numeric(Ativos[,i])
  ativos = cbind(ativos,temp)
  print(i)
}

Ativos = ativos      # Transformar Ativos em numerica
colnames(Ativos) = nomes          # Colcar label


for (i in 1:ncol(Ativos))        # Trocar "NA" por 0
{
  for (k in 1:nrow(Ativos))
  {
    if(nchar(Ativos[k,i]) == 2)
    {
      Ativos[k,i] = 0
    } 
  }
  print(i)
}


Temp = c()
nome = c()
errados = c()
for (i in 1:ncol(Ativos))         # Excluir coluna se sua soma for 0 (se nao houver dados)
{
  soma = 0
  for (k in 1:nrow(Ativos))
  {
    temp = Ativos[k,i]
    soma = soma + temp
  } 
  
  if (soma > 0)
  {
    Temp = cbind(Temp,ativos[,i])
    nome = c(nome, nomes[i])          # Colocar label
  } else 
  {
    Temp1 = i
    errados = c(errados, Temp1)        # Ver quais ativos deram erro
  }
  print(i)
}

Ativos = Temp
n = c()
Temp = c()
n_errados = c()
for (k in 1:nrow(Ativos))         # Excluir linha se sua soma for 0 (se nao houver dados)
{
  soma = 0
  for (i in 1:ncol(Ativos))
  {
    temp = Ativos[k,i]
    soma = soma + temp
  } 
  
  if (soma > 0)
  {
    Temp = rbind(Temp,ativos[k,])
    n = c(n,k)          # Colocar label
  } else 
  {
    Temp1 = k
    n_errados = c(n_errados, Temp1)        # Ver quais ativos deram erro
  }
  print(k)
}

# colnames(Ativos) = nome               # Colocar label

# Nomes = c()
# for (i in 1:length(errados))         # Nome dos ativos que deram erro
# {
#   Nomes = c(Nomes,nomes[errados[i]])
# }
# Nomes = t(Nomes);Nomes = t(Nomes)


Ativos = cbind(Data, Ativos)         # Colocar data na matrix Ativos

Data_T = Data[n]
# Temp = cbind(Data_T, Temp)





write.csv(Ativos, "/Users/Luis/Documents/GitHub/Computational-Investment/Dados Bloomberg.csv", row.names = FALSE) # Para visualização
write.csv(ativos, "/Users/Luis/Documents/GitHub/Computational-Investment/Dados.csv", row.names = FALSE)    # Para calculo 
