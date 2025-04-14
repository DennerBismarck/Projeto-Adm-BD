## NATURAL JOIN

O **NATURAL JOIN** é um tipo de junção que automaticamente combina colunas entre duas tabelas que possuam o mesmo nome e tipo de dado. Ou seja, ele busca por colunas comuns entre as tabelas e realiza a junção usando essas colunas, sem que seja necessário especificá-las manualmente.

### Pontos importantes:

- **Sem repetição de colunas:**  
  As colunas que são usadas na junção aparecem apenas uma vez no resultado final, evitando duplicação.
  
- **Cuidado com os nomes das colunas:**  
  Se as tabelas tiverem colunas com o mesmo nome que não devam ser comparadas, o uso do `NATURAL JOIN` pode levar a resultados inesperados, já que ele as utiliza automaticamente.

- **Query mais limpa:**  
  Em situações em que as tabelas foram projetadas para ter chaves com nomes idênticos, o `NATURAL JOIN` torna a consulta mais curta e legível.

### Exemplo de NATURAL JOIN

Suponha que existam as seguintes tabelas:

- **funcionario**:
  - `codigo`
  - `nome`
  - `cod_depto`

- **departamento**:
  - `codigo`
  - `descricao`

Se ambas as tabelas possuem a coluna `codigo` e queremos combinar os registros com base nesse atributo, podemos escrever:

```sql
SELECT *
FROM funcionario
NATURAL JOIN departamento;
```

## CROSS JOIN

O **CROSS JOIN** é uma operação em SQL que realiza o *produto cartesiano* entre duas tabelas. Isso significa que cada linha da primeira tabela é combinada com todas as linhas da segunda tabela, resultando em um conjunto de resultados cujo número de linhas é o produto do número de linhas das tabelas envolvidas.

### Pontos importantes

- **Produto Cartesiano:**  
  Se a primeira tabela possui _m_ registros e a segunda possui _n_ registros, o resultado do `CROSS JOIN` terá _m × n_ registros.

- **Sem condição de junção:**  
  Diferentemente de outras junções (como `INNER JOIN` ou `LEFT JOIN`), o `CROSS JOIN` não precisa de uma cláusula `ON` ou `USING` para combinar as linhas. Ele combina todas as linhas independentemente de qualquer condição.

- **Cuidado com o tamanho do resultado:**  
  Em bases de dados grandes, o resultado de um `CROSS JOIN` pode ser muito volumoso, consumindo muitos recursos e tempo de processamento.

### Exemplo Prático

Imagine que temos duas tabelas: 

- A tabela **cores** com as colunas `cor` e `hex`:

  | cor      | hex     |
  |----------|---------|
  | Vermelho | #FF0000 |
  | Verde    | #00FF00 |

- A tabela **tamanhos** com as colunas `tamanho` e `descricao`:

  | tamanho | descricao |
  |---------|-----------|
  | Pequeno | P         |
  | Grande  | G         |

Queremos combinar todas as cores com todos os tamanhos. Veja como isso é feito com `CROSS JOIN`:

```sql
SELECT cores.cor, tamanhos.tamanho
FROM cores
CROSS JOIN tamanhos;
