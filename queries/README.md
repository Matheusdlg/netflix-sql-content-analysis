# SQL Queries Overview

This folder contains all SQL queries developed during the exploratory analysis of the Netflix Movies and TV Shows dataset using Google BigQuery.

The queries were organized according to the analytical workflow of the project, including:

- initial exploration and validation
- content type analysis
- country and collaboration analysis
- temporal analysis
- category and genre exploration
- temporal category trends

---

## Query Structure

### 01_exploracao_inicial.sql
Initial exploration and validation queries:
- date format validation
- date conversion tests
- exploratory checks on temporal data

### 02_tipos_conteudo.sql
Analysis of Movies and TV Shows over time:
- temporal growth by content type

### 03_paises_colaboracoes.sql
Country-based analysis:
- titles by country
- international collaborations
- country participation including collaborations

### 04_analise_temporal.sql
Temporal analysis of Netflix catalog growth:
- titles added by year

### 05_categorias_generos.sql
Category and genre exploration:
- combined categories
- separated categories using SPLIT and UNNEST
- ranking of categories by frequency

### 06_analise_temporal_categorias.sql
Temporal category analysis:
- growth of Movie categories over time
- growth of TV Show categories over time
