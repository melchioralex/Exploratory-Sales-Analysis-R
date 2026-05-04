# Exercício de Análise Exploratória de Dados - Manipulação e Estatística em R

Este repositório contém uma solução prática focada em Análise Exploratória de Dados (AED), desenvolvida como material de estudo para exames da graduação. O foco está na manipulação de dataframes, cálculos de métricas de performance e visualização de dados utilizando a linguagem R.

## 📝 O Problema

Utilizar uma base de dados hipotética (vendas) para realizar o ciclo completo de análise de dados inicial:
1. **Amostragem Reprodutível:** Gerar um subconjunto de 200 registros para base de teste usando semente aleatória.
2. **Cálculo de Métricas:** Criar novas colunas para Venda Líquida e Lucro Total baseadas em regras de negócio.
3. **Agrupamento Estatístico:** Sumarizar lucros por categoria e calcular o ticket médio por canal de venda.
4. **Análise Visual:** Identificar padrões e outliers através de histogramas e boxplots.

## 🛠️ Lógica Aplicada (Pseudocódigo)

Abaixo está a representação detalhada da lógica utilizada no script:
```text
ÍNDICE

// 1. Preparação e Amostragem
LER arquivo CSV via seleção manual (file.choose)
ANEXAR dataframe à memória (attach)
EXIBIR estrutura e dimensões (head, dim, str)

DEFINIR semente aleatória (202641)
GERAR vetor de sorteio (200 números entre 1 e 1000 com reposição)
CRIAR novo dataframe 'dad41' baseado no sorteio
EXPORTAR 'dad41' para novo arquivo CSV

// 2. Transformação de Variáveis (Feature Engineering)
CALCULAR venda_liquida:
    (preco_unitario_base * (1 - percentual_desconto)) * quantidade
CALCULAR lucro_total:
    (venda_liquida - custo_unitario)

// 3. Manipulação com Tidyverse e Estatística
FILTRAR dados onde estado_cliente é igual a 'SP'
CALCULAR média, mediana e desvio padrão da venda_liquida

AGRUPAR por categoria:
    CALCULAR soma do lucro_total (removendo valores nulos)
    ORDENAR por lucro de forma decrescente

AGRUPAR por canal_venda:
    CALCULAR média do ticket (preco_base * quantidade)
    ORDENAR por ticket de forma decrescente

// 4. Visualização de Dados
GERAR Histograma da venda_liquida
CRIAR Boxplot (venda_liquida vs categoria) com tema minimalista
CRIAR Gráfico de Barras (contagem de vendas por estado)
    ORDENAR barras por frequência (fct_infreq)
GERAR Gráfico de Dispersão (percentual_desconto vs quantidade)

## 🧰 Tecnologias Utilizadas

* **Linguagem:** R
* **Bibliotecas:** `tidyverse` (dplyr, ggplot2, forcats)

---
*Nota: Os dados utilizados neste exercício são hipotéticos, gerados por IA para fins didáticos.*