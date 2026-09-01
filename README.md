# Netflix SQL Content Analysis
Exploratory and temporal SQL analysis of Netflix catalog data (2008–2021) using Google BigQuery.

---

## Key Findings

### 1. Movies dominate the catalog — but TV Shows are catching up

![Movies vs TV Shows](charts/chart1_distribution.png)

Netflix catalog is heavily movie-focused: **6,131 Movies (69.6%)** vs **2,676 TV Shows (30.4%)**. However, the genre trend analysis reveals that TV Shows began growing at a faster pace after 2016, suggesting a strategic shift in content investment.

---

### 2. Catalog growth accelerated sharply between 2016 and 2019

![Catalog Growth Over Time](charts/chart2_growth.png)

Netflix added content at a relatively slow pace until 2015. From 2016 onward, both Movies and TV Shows grew rapidly — with Movies peaking in 2019 at over 1,400 titles added in a single year. The 2021 data appears incomplete, likely cut off before year-end.

---

### 3. The US leads production, but international content is a key pillar

![Top 10 Countries](charts/chart3_countries.png)

The United States accounts for the largest share of titles by a significant margin. India and the United Kingdom follow as the second and third largest contributors. Notably, when counting countries individually from multi-country collaborations (via UNNEST), international participation is even broader than raw counts suggest.

---

### 4. Drama and International content dominate both Movies and TV Shows

![Top Genres by Type](charts/chart4_genres.png)

Dramas and International titles consistently rank as the top categories across both content types. Comedies rank highly for Movies, while Crime TV and Docuseries are prominent in TV Shows — reflecting different audience consumption patterns between the two formats.

---

### 5. International TV Shows started rising earlier than International Movies

![Genre Trends Over Time](charts/chart5_trends.png)

The temporal genre analysis reveals that International TV Shows began growing earlier than their Movie counterpart — indicating that Netflix's global content strategy started with serialized content before scaling to films. Dramas remained the most stable category throughout the entire period.

---

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
├── charts
│   ├── chart1_distribution.png
│   ├── chart2_growth.png
│   ├── chart3_countries.png
│   ├── chart4_genres.png
│   └── chart5_trends.png
│
└── README.md
```

---

## Dataset

- **Source:** [Netflix Movies and TV Shows — Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- **Records:** 8,807 titles
- **Period:** 2008–2021
- **Tool:** Google BigQuery

**Known limitations:**
- Missing values in `director`, `cast` and `country` columns
- Mixed duration formats between Movies and TV Shows
- No viewership or popularity metrics
- 2021 data appears incomplete

---

## SQL Skills Demonstrated

- CTEs and subqueries
- Date parsing and temporal analysis with `SAFE.PARSE_DATE` and `FORMAT_DATE`
- String manipulation with `SPLIT`, `TRIM` and `UNNEST` for multi-value columns
- `GROUP BY`, `HAVING` and aggregation functions
- Data cleaning and null value investigation
- Exploratory Data Analysis (EDA) workflow
