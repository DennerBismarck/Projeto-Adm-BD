# Funções de Janela (Window Functions) no PostgreSQL

As **funções de janela** (ou window functions) são um recurso poderoso do PostgreSQL (e de outros sistemas SQL modernos) que permite executar cálculos sobre um conjunto de linhas relacionadas à linha atual, sem precisar agrupar os resultados. Isso possibilita a geração de análises avançadas e agregações sem perder a granularidade dos dados originais.

## Principais Características

- **Análise sobre Partições:**  
  Você pode definir uma “janela” (window) que particiona os dados com base em uma ou mais colunas. Dessa forma, a função é aplicada a cada partição de dados separadamente.

- **Ordenação Interna:**  
  Dentro de cada partição, é possível especificar uma ordem. Essa ordenação é especialmente útil para funções que dependem da sequência, como `ROW_NUMBER()`, `RANK()`, `LEAD()` e `LAG()`.

- **Manutenção dos Dados Originais:**  
  Ao contrário de funções de agregação clássicas (como `SUM()`, `AVG()`, etc.), as funções de janela não reduzem o número de linhas retornadas. Em vez disso, elas acrescentam informações calculadas a cada linha.

## Sintaxe Básica

A estrutura geral de uma função de janela é:

```sql
função() OVER (
  [PARTITION BY coluna1, coluna2, ...]
  [ORDER BY coluna3, coluna4, ...]
  [outras opções de frame]
)
