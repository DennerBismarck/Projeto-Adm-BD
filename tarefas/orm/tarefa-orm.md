## Scripts

- [Script de criação do banco (DDL + DML)](../t01/tarefa01-create.sql)
- [Script de povoamentodo banco](../t01/tarefa01-inserts.sql)
- [Script do programa ODBC](./odbc_program.py)
- [Script do programa ORM](./orm_program.py)

## Resumo sobre ODBC (em Python)
ODBC (Open Database Connectivity) é um padrão que permite que aplicativos acessem bancos de dados de forma independente do sistema gerenciador. Em Python, podemos usar o pacote `pyodbc` para conectar ao PostgreSQL através de uma string de conexão padronizada, facilitando o envio de comandos SQL diretamente para o banco.

## Resumo sobre ORM (em Python com SQLAlchemy)
ORM (Object Relational Mapping) é uma técnica para converter dados entre sistemas incompatíveis em linguagens orientadas a objetos. Em Python, usamos o `SQLAlchemy`, um dos frameworks ORM mais populares. Ele permite mapear classes Python para tabelas no banco de dados, abstraindo SQLs manuais e facilitando a manipulação dos dados como objetos.
