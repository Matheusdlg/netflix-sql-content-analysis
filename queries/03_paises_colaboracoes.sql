-- =========================================
-- Titles by Country
-- =========================================
-- Analyze the number of titles associated with each country entry

SELECT
    country,
    COUNT(country) AS quantidade_por_pais
FROM `netflix-496013.netflix.netflix_titles`
GROUP BY country
ORDER BY quantidade_por_pais;


-- =========================================
-- International Collaborations
-- =========================================
-- Identify titles produced through collaborations between multiple countries

SELECT
    country,
    COUNT(country) AS Quantidade_producoes_por_pais
FROM `netflix-496013.netflix.netflix_titles`
WHERE country IS NOT NULL
    AND country LIKE '%,%'
GROUP BY country
ORDER BY Quantidade_producoes_por_pais DESC;


-- =========================================
-- Country Participation Including Collaborations
-- =========================================
-- Split country collaborations to count each country individually

SELECT
    TRIM(country_individual) AS country_correto,
    COUNT(country_individual) AS contador
FROM `netflix-496013.netflix.netflix_titles`,
UNNEST(SPLIT(country, ',')) AS country_individual
WHERE country IS NOT NULL
GROUP BY country_correto
ORDER BY contador DESC;
