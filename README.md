# Exercício de Análise Exploratória de Dados - Manipulação e Estatística em R

Este repositório contém uma solução prática focada em Análise Exploratória de Dados (AED), desenvolvida como material de estudo para exames da graduação. O foco está na manipulação de dataframes, cálculos de métricas de performance e visualização de dados utilizando a linguagem R.

## 📝 O Problema

Utilizar uma base de dados hipotética (vendas) para realizar o ciclo completo de análise de dados inicial:
1. **Amostragem Reprodutível:** Gerar um subconjunto de 200 registros para base de teste usando semente aleatória.
2. **Cálculo de Métricas:** Criar novas colunas para Venda Líquida e Lucro Total baseadas em regras de negócio.
3. **Agrupamento Estatístico:** Sumarizar lucros por categoria e calcular o ticket médio por canal de venda.
4. **Análise Visual:** Identificar padrões e outliers através de histogramas e boxplots.


# 📈 Conclusões e Insights Analíticos

## 1. Medidas de Tendência Central e Dispersão
A análise estatística revelou uma **assimetria positiva** acentuada no conjunto de dados:
* **Média:** $\approx$ R$ 4,6k
* **Mediana:** $\approx$ R$ 2,8k

A média supera consideravelmente a mediana, e o **desvio padrão elevado** (superior à própria média) confirma uma base de dados heterogênea. Isso indica que, embora 50% das transações ocorram abaixo de **R$ 2.832,69**, a presença de valores atípicos (*outliers*) eleva artificialmente o faturamento médio.

> **💡 Estratégia de Tratamento de Outliers:** > Para mitigar a variabilidade em bases de vendas assíncronas, recomenda-se a análise do **Intervalo Interquartil (IQR)**. Estratégias como a **Winsorização** (para preservar o tamanho da amostra) ou **Transformação Logarítmica** são sugeridas para reduzir a dispersão sem descartar dados reais de vendas premium.

---

## 2. Performance por Categoria e Canal

| Indicador | Descoberta Principal | Recomendação Estratégica |
| :--- | :--- | :--- |
| **Lucro Acumulado** | **Eletrônicos** lidera com > R$ 303k; **Acessórios** tem contribuição marginal. | Revisar o portfólio de Acessórios para identificar se o problema é margem baixa ou baixo giro. |
| **Ticket Médio** | **Loja Física** detém o maior valor ($\approx$ R$ 5,8k). Canais digitais estabilizam em R$ 5,1k. | Fomentar o *upselling* no digital e manter o foco em produtos de alto valor na experiência presencial. |

---

## 3. Visualização de Dados e Comportamento de Mercado

### 📊 Distribuição de Vendas (Histograma)
O modelo de negócio é caracterizado por uma **cauda longa à direita**. Aproximadamente **60% das vendas** concentram-se em valores abaixo de R$ 5.000,00, evidenciando que o volume de transações de menor valor sustenta o fluxo de caixa.

### 📦 Variabilidade por Categoria (Boxplot)
* **Informática:** Apresenta a maior variabilidade de preços do catálogo.
* **Acessórios:** Baixa variabilidade, com vendas concentradas em valores baixos e constantes.
* **Eletrônicos & Eletrodomésticos:** Exibem *outliers* significativos, representando a venda de produtos de nicho *premium*.

### 🗺️ Análise Geográfica
* **Liderança:** O estado do **Paraná** lidera o volume de vendas, seguido por Pernambuco e Bahia.
* **Oportunidade/Gargalo:** Surpreendentemente, **São Paulo e Rio de Janeiro** apresentam os menores índices de transações. 
* *Ação:* Investigar possíveis problemas logísticos, custos de frete ou forte concorrência regional nestes mercados específicos.

### 💸 Elasticidade de Desconto (Dispersão)
A análise de dispersão revelou que o percentual de desconto **não possui correlação direta** com a quantidade de itens por pedido.
* **Insight:** A demanda mostra-se **inelástica** em relação ao preço promocional no curto prazo. 
* **Risco:** Descontos agressivos podem estar apenas "canibalizando" a margem de lucro, sem gerar o aumento esperado no volume de vendas.


## 🛠️ Lógica Aplicada (Pseudocódigo)

Abaixo está a representação detalhada da lógica utilizada no script:

```text
// 1. Preparação e Amostragem
LER arquivo CSV -> DEFINIR semente (202641) -> GERAR amostra de 200 registros.

// 2. Transformação de Variáveis
venda_liquida = (preco * (1 - desconto)) * quantidade
lucro_total = venda_liquida - custo_unitario

// 3. Manipulação e Estatística
FILTRAR 'SP' -> CALCULAR Medidas Centrais.
AGRUPAR por Categoria e Canal -> SUMARIZAR Lucro e Ticket Médio.

// 4. Visualização
PLOTAR Histogramas, Boxplots e Dispersão.


## 🧰 Tecnologias Utilizadas

* **Linguagem:** R
* **Bibliotecas:** `tidyverse` (dplyr, ggplot2, forcats)

---
*Nota: Os dados utilizados neste exercício são hipotéticos, gerados por IA para fins didáticos.*