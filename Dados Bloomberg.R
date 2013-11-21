require(xlsx)
require(matlab)


caminho = paste("/Users/Luis/Documents/GitHub/Computational-Investment/Tabelas/Parte", 1:82, ".xlsx", sep = "")
Ativos = c()
n = length(caminho)-1

for (k in 1:n)
{
  for (i in 1:20)
  {
    Temp = read.xlsx(caminho[k], i, header=FALSE)
    Temp1 = matrix(Temp[1,1])
    Temp = matrix(Temp[,2])
    if (size(Temp,1) < 8434)
    {
      Temp = matrix(,8434,)
      Temp[1] = Temp1
      Ativos = cbind(Ativos,Temp)
      print(i + (k-1)*20)          # Pra ver o progresso
      
    } else {
      Temp = matrix(Temp[2:size(Temp,1),])
      Temp[1] = Temp1
      Ativos = cbind(Ativos,Temp)
      print(i + (k-1)*20)          # Pra ver o progresso
    }
  }
}

for (j in 1:14)   # Ultima parte tem somente 14 planilhas
{
  Temp = read.xlsx(caminho[82],j,header=FALSE)
  Temp1 = matrix(Temp[1,1])
  Temp = matrix(Temp[,2])
  Temp = matrix(Temp[2:size(Temp,1),])
  Temp[1] = Temp1
  Ativos = cbind(Ativos,Temp)
  print(j)          # Pra ver o progresso
}
 
nomes = Ativos[1,]
Ativos = Ativos[-1,]


ativos = c()
for (i in 1:size(Ativos,2))
{
  temp = as.numeric(Ativos[,i])
  ativos = cbind(ativos,temp)
  print(i)
}

Ativos = ativos
colnames(Ativos) = nomes


for (i in 1:size(Ativos,2))
{
  for (k in 1:size(Ativos,1))
  {
    if(nchar(Ativos[k,i]) == 2)
    {
      Ativos[k,i] = 0
    } 
  }
  print(i)
}

soma = 0
Temp = c()
nome = c()
errados = c()
for (i in 1:size(Ativos,2))
{
  soma = 0
  for (k in 1:size(Ativos,1))
  {
    temp = Ativos[k,i]
    soma = soma + temp
  } 
  
  if (soma > 0)
  {
    Temp = cbind(Temp,ativos[,i])
    nome = c(nome, nomes[i])
  } else 
  {
    Temp1 = i
    errados = c(errados, Temp1)
  }
  print(i)
}

Ativos = Temp
colnames(Ativos) = nome

Nomes = c()
for (i in 1:length(errados))
{
  Nomes = c(Nomes,nomes[errados[i]])
}
Nomes = t(Nomes);Nomes = t(Nomes)



# write.csv(Ativos, "C:/Users/b2476514/Desktop/Dados.csv", row.names = FALSE)

