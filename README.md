# Netflix SQL Content Analysis
Exploratory and temporal SQL analysis of Netflix content (2008–2021) using Google BigQuery.

## Project Overview

This project explores the Netflix Movies and TV Shows dataset through SQL analysis using Google BigQuery.

The analysis focuses on understanding:
- catalog growth over time
- differences between Movies and TV Shows
- international expansion of Netflix content
- content categories and distribution
- temporal trends in the platform catalog

The project was developed as part of a data analytics portfolio focused on SQL and exploratory data analysis.

## Objectives

The main goals of this project were:

- practice SQL using a real-world dataset
- improve exploratory data analysis skills
- perform temporal and categorical analysis on Netflix content
- identify trends in Movies and TV Shows over time
- explore international expansion patterns in the Netflix catalog
- develop a structured portfolio project using Google BigQuery

## Dataset Information

- Dataset: Netflix Movies and TV Shows
- Source: [Kaggle Dataset](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- Total records: 8,807
- Main tool used: Google BigQuery
- Main content types:
  - Movies
  - TV Shows

The dataset contains information about Netflix titles, including:
- content type
- title
- director
- cast
- country
- date added to Netflix
- release year
- rating
- duration
- listed categories

Some important limitations and observations identified during the analysis:
- missing values in director and cast
- mixed duration formats between Movies and TV Shows
- small inconsistencies involving rating and duration columns
- absence of popularity or audience metrics

## Tools Used

- SQL
- Google BigQuery
- Kaggle Dataset
- GitHub
- Markdown

- ## Project Structure

## Project Structure

```
netflix-sql-analysis
│
├── queries
│   ├── 01_exploracao_inicial.sql
│   ├── 02_tipos_conteudo.sql
│   ├── 03_paises_colaboracoes.sql
│   ├── 04_analise_temporal.sql
│   ├── 05_categorias_generos.sql
│   └── 06_analise_temporal_categorias.sql
│
├── insights
│   └── analise_final.md
│
└── README.md
```

## Main Analysis Performed

The project includes the following analysis stages:

- initial exploration and dataset validation
- identification of missing values and inconsistencies
- analysis of Movies vs TV Shows distribution
- temporal analysis of Netflix catalog growth
- country and international collaboration analysis
- category and content distribution analysis
- temporal evolution of content categories
- comparison between Movies and TV Shows over time

## Key Insights

- Movies represent the majority of Netflix content in the dataset.
- Netflix catalog growth accelerated significantly between 2016 and 2020.
- International content became one of the strongest categories on the platform.
- International TV Shows started growing earlier than International Movies.
- Dramas appeared as one of the dominant categories for both Movies and TV Shows.
- Movies and TV Shows showed different growth patterns and category distributions.
- The dataset structure revealed important limitations, including missing values and mixed duration formats.

## SQL Skills Demonstrated

- SELECT, WHERE and ORDER BY
- GROUP BY and HAVING
- Common Table Expressions (CTEs)
- Date functions and temporal analysis
- String manipulation with SPLIT and TRIM
- UNNEST for handling multi-value columns
- Data cleaning and null value investigation
- Aggregation and categorical analysis
- Exploratory Data Analysis (EDA)

## Limitations of the Dataset

Some limitations identified during the analysis:

- missing values in director, cast and country columns
- mixed duration formats between Movies and TV Shows
- small inconsistencies involving rating and duration fields
- absence of popularity, rating score or audience engagement metrics
- the dataset represents catalog information only, not viewership data
- 2021 data appears incomplete, likely ending before the full year

## Possible Extensions

Possible future improvements for the project:

- create visualizations and dashboards based on the SQL analysis
- perform deeper genre trend analysis
- integrate the project with Python or Power BI
- compare Netflix catalog growth across countries
- build automated data cleaning workflows

## Final Conclusion

This project helped strengthen SQL and exploratory data analysis skills through the investigation of Netflix catalog data using Google BigQuery.

The analysis combined data cleaning, temporal exploration, categorical analysis and interpretation of dataset limitations to build a complete portfolio project focused on real analytical workflows.
