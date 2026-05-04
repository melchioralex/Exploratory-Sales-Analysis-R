dad=read.csv(file.choose(), header=T, sep=",", dec="."); dad
attach(dad)
head(dad)
dim(dad)
str(dad)
set.seed(202641)
sorteio41=sample(1:1000, 200, replace=T)
sorteio41
dad41=dad[sorteio41, ]
head(dad41)
dim(dad41)
str(dad41)
# Sem especificar o C:\, o R salva na pasta atual (geralmente Documentos)
write.table(dad41, "dad41-base_prova.csv", sep = ",", dec = ".", row.names = FALSE)
dad=read.csv(file.choose(), header=T, sep=",", dec=".")
attach(dad)
head(dad)
dim(dad)
str(dad)
dad$venda_liquida <-(preco_unitario_base * (1 - percentual_desconto)) * quantidade


dad$lucro_total <- (venda_liquida - custo_unitario)
head(dad)
install.packages("tidyverse")
library(tidyverse)
filter( dad, estado_cliente == 'SP')
mean(venda_liquida)
median(venda_liquida)
sd(venda_liquida)



resumo_categoria <- dad %>%
group_by(categoria) %>%
summarise(lucro_acumulado = sum(lucro_total, na.rm = TRUE)) %>%
arrange(desc(lucro_acumulado))
resumo_categoria

resumo_canal_venda <- dad %>%
group_by(canal_venda) %>%
summarise(ticket_medio = mean(preco_unitario_base * quantidade, na.rm = TRUE)) %>%
arrange(desc(ticket_medio))
resumo_canal_venda
hist(venda_liquida)
library(ggplot2)
ggplot(data = dad, aes(x = categoria, y = venda_liquida, fill = categoria)) +
geom_boxplot() +
labs(title = "Distribuição de Venda Líquida por Categoria",
x = "Categoria",
y = "Valor de Venda Líquida") +
theme_minimal()
ggplot(dad, aes(x = fct_infreq(estado_cliente))) +
geom_bar(fill = "steelblue") +
labs(
title = "Contagem de Vendas por Estado",
x = "Estado do Cliente",
y = "Quantidade de Vendas")




x=percentual_desconto
y=quantidade
plot(x,y)
