# Projeto Oficina - Modelo de Banco de Dados

## Contexto do Projeto

Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica.
Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões periódicas.
Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra.
O valor de cada peça também irá compor a OS. O cliente autoriza a execução dos serviços.
A mesma equipe avalia e executa os serviços.
Os mecânicos possuem código, nome, endereço e especialidade.
Cada OS possui: número, data de emissão, um valor, status e uma data para conclusão dos trabalhos.

Este projeto apresenta o modelo relacional de um sistema para gerenciamento de uma oficina mecânica, incluindo scripts SQL, diagrama visual e documentação DBML.

## Estrutura do Projeto

  Script SQL para criação das tabelas e relacionamentos no MySQL.

  Modelo DBML para visualização e documentação do banco de dados.

  Arquivo de modelo do MySQL Workbench para edição e geração de diagramas.

  Imagem do diagrama do banco de dados.

## Diagrama Visual

![Diagrama do Projeto Oficina](Projeto%20oficina.png)

## Entidades Principais
- **ItemPeca**: Peças utilizadas em cada ordem.

## Relacionamentos

- Cada veículo pertence a um cliente.
- Cada mecânico pertence a uma equipe.
- Cada ordem de serviço está vinculada a um veículo e a uma equipe.
- Cada ordem pode conter múltiplos serviços e peças.

## Como Utilizar

1. Importe o arquivo `modelo_oficina_mysql.sql` no MySQL Workbench para criar o banco de dados.
2. Utilize o arquivo `Oficina.mwb` para visualizar e editar o modelo no MySQL Workbench.
3. Consulte o arquivo `modelo_oficina.dbml` para documentação e geração de diagramas em outras ferramentas.
4. Veja o diagrama visual em `Projeto oficina.png`.

> By CBS construido no VScode com auxílio do Copilot

# Workshop Project - Database Model (English Versio)

## Project Context

System for controlling and managing the execution of work orders in a mechanical workshop.
Customers bring vehicles to the workshop for repairs or periodic maintenance.
Each vehicle is assigned to a team of mechanics who identify the services to be performed and fill out a work order (OS) with a delivery date.
From the work order, the value of each service is calculated by consulting a labor reference table.
The value of each part also composes the work order. The customer authorizes the execution of the services.
The same team evaluates and performs the services.
Mechanics have code, name, address, and specialty.
Each work order has: number, issue date, value, status, and a completion date.

This project presents the relational model of a system for managing a mechanical workshop, including SQL scripts, visual diagram, and DBML documentation.

## Project Structure

- **modelo_oficina_mysql.sql**  
  SQL script for creating tables and relationships in MySQL.

- **modelo_oficina.dbml**  
  DBML model for database visualization and documentation.

- **Oficina.mwb**  
  MySQL Workbench model file for editing and generating diagrams.

- **Projeto oficina.png**  
  Database diagram image.

## Visual Diagram

![Workshop Project Diagram](Projeto%20oficina.png)

## Main Entities

- **Cliente (Customer)**: Workshop customers registration.
- **Veiculo (Vehicle)**: Vehicles belonging to customers.
- **Equipe (Team)**: Workshop work teams.
- **Mecanico (Mechanic)**: Mechanics, linked to teams.
- **Servico (Service)**: Services offered by the workshop.
- **Peca (Part)**: Parts used in services.
- **OrdemServico (WorkOrder)**: Work orders generated for vehicles.
- **ItemServico (ServiceItem)**: Services performed in each order.
- **ItemPeca (PartItem)**: Parts used in each order.

## Relationships

- Each vehicle belongs to a customer.
- Each mechanic belongs to a team.
- Each work order is linked to a vehicle and a team.
- Each order can contain multiple services and parts.

## How to Use

1. Import the `modelo_oficina_mysql.sql` file into MySQL Workbench to create the database.
2. Use the `Oficina.mwb` file to view and edit the model in MySQL Workbench.
3. Check the `modelo_oficina.dbml` file for documentation and diagram generation in other tools.
4. View the visual diagram in `Projeto oficina.png`.

> by CBS built in VSCode with Copilot assistance