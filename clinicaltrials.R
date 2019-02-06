setwd('/Users/fsmoura/Desktop/clinicaltrials/')

dados = read.csv("caumo.csv", sep = ",", header = TRUE)
dim(dados)
head(dados)
View(dados)
table(dados$Status)
table(dados$Conditions)
table(dados$Phases)
plot(dados$Status)

total = NULL
loop = c(1:14)
list.files()
for(i in loop){
  dado = paste(i, ".csv", sep = "")
  print(dado)
  dados = read.csv(dado, sep = ",", header = TRUE)
  total = rbind(total, dados)
}
total = as.data.frame(total)
dim(total)
head(total)
View(total)
table(total$Status)
baplot(total$Status)
a = table(total$Status)
a = as.data.frame(a)
class(a)
barplot(a, main="Car Distribution", horiz=TRUE)


library(ggplot2)

# Use the mtcars dataset.
head(a)




ggplot(a, aes(x = Var1, y = Freq)) + 
  geom_bar(stat = "identity", fill = "orange",  las = 5) + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + 
  xlab("54 projetos PPGCM na base clinicaltrails.org") + ylab("Total") + 
  ggtitle("Estatus dos projetos Cadastrados")


b = as.data.frame(table(total$Phases))
b
b = b[-c(6), ] 
b
ggplot(b, aes(x = Var1, y = Freq)) + 
  geom_bar(stat = "identity", fill = "green",  las = 5) + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + 
  xlab("54 projetos PPGCM na base clinicaltrails.org") + ylab("Total No. Fatalities") + 
  ggtitle("Fases dos projetos Cadastrados")


b = as.data.frame(table(total$Conditions))
b
b = b[-c(6), ] 
b
ggplot(b, aes(x = Var1, y = Freq)) + 
  geom_bar(stat = "identity", fill = "pink",  las = 5) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 0)) + 
  xlab("54 projetos PPGCM na base clinicaltrails.org") + ylab("Total") + 
  ggtitle("Condições dos projetos Cadastrados")


b = as.data.frame(table(total$Study.Type))
b
ggplot(b, aes(x = Var1, y = Freq)) + 
  geom_bar(stat = "identity", fill = "blue",  las = 5) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 0)) + 
  xlab("54 projetos PPGCM na base clinicaltrails.org") + ylab("Total") + 
  ggtitle("Tipo de estudo dos projetos Cadastrados")


b = as.data.frame(table(total$Study.Designs))
b
ggplot(b, aes(x = Var1, y = Freq)) + 
  geom_bar(stat = "identity", fill = "magenta",  las = 5) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 0)) + 
  xlab("54 projetos PPGCM na base clinicaltrails.org") + ylab("Total") + 
  ggtitle("Fases dos projetos Cadastrados")
