# Tutorial de como baixar e utilizar a ferramenta PowerBI e PostgreSQL para elaborar um datawarehouse.
## Passo 1: Baixar a ferramenta neste [link](https://powerbi.microsoft.com/pt-br/get-started/)
![powerbi](https://user-images.githubusercontent.com/40072444/74465561-640d7d80-4e74-11ea-8987-18c8fc7743fc.png)
## Passo 2: Baixar PostgreSQL neste [link](https://www.postgresql.org/).
![postgre](https://user-images.githubusercontent.com/40072444/74467224-6d4c1980-4e77-11ea-90d6-a03146cba087.png)
## Passo 3: Instale as duas ferramentas na sua máquina, o processo é simples, basta clicar em next até finalizar a instalação.
#### Dica: Se houver alguma dúvida sobre como instalar do Postgre assista esse [vídeo](https://www.youtube.com/watch?v=His77sqWfGU)
## Passo 4 Criação do banco de dados
### Passo 4.1 Abra o pgAdmin
#### Passo 4.2 Aqui iremos utilizar um star schema referente a despesas de um suposto orgão do governo (O sql está disponível no repositório), crie um novo banco de dados.
![createbanco](https://user-images.githubusercontent.com/40072444/74472957-8fe33000-4e81-11ea-8fa4-77137136fa0b.png)
#### Passo 4.3 Escreva o nome do banco a se criado e salve
![createbanco2](https://user-images.githubusercontent.com/40072444/74473330-32031800-4e82-11ea-92cf-2b56b51fc22a.png)
### Passo 4.4 Abra a QueryTool Copie o SQL que está no repositório e gere o banco
![querytool](https://user-images.githubusercontent.com/40072444/74473813-07fe2580-4e83-11ea-9a41-a8ad8e90b4da.png)
![querytool2](https://user-images.githubusercontent.com/40072444/74474107-91adf300-4e83-11ea-92d6-940fa79718d6.png)
### 4.5 Abrir no PowerBI, clique em obter dados e selecione Banco de Dados Postgres
![fonte dos dados](https://user-images.githubusercontent.com/40072444/74480084-09cde600-4e8f-11ea-9193-d661c3f61a33.png)
### 4.6 Pronto agora Você pode fazer as consultas desejadas através do Power BI selecionando as tabelas que deseja vizualizar, Exemplo:
![vizualizar dados](https://user-images.githubusercontent.com/40072444/74481013-b52b6a80-4e90-11ea-8272-284a6bcc3fcf.png)
