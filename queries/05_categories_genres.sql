-- =========================================
-- Content Categories Distribution
-- =========================================
-- Analyze the frequency of combined category entries in the dataset

SELECT
    listed_in,
    COUNT(listed_in) AS generos
FROM `netflix-496013.netflix.netflix_titles`
WHERE listed_in IS NOT NULL
GROUP BY listed_in
ORDER BY generos DESC;


-- =========================================
-- Categories Split by Content Type (Alphabetical Order)
-- =========================================
-- Separate multi-category entries using SPLIT and UNNEST

SELECT
    type,
    TRIM(Generos_separados) AS Generos_separados_corretamente,
    COUNT(*)
FROM `netflix-496013.netflix.netflix_titles`,
UNNEST(SPLIT(listed_in)) AS Generos_separados
WHERE listed_in IS NOT NULL
GROUP BY Generos_separados_corretamente, type
ORDER BY type, Generos_separados_corretamente;


-- =========================================
-- Categories Split by Content Type (Most Frequent)
-- =========================================
-- Rank separated categories by total number of titles

SELECT
    type,
    TRIM(Generos_separados) AS Generos_separados_corretamente,
    COUNT(*) AS contagem
FROM `netflix-496013.netflix.netflix_titles`,
UNNEST(SPLIT(listed_in)) AS Generos_separados
WHERE listed_in IS NOT NULL
GROUP BY Generos_separados_corretamente, type
ORDER BY type, contagem DESC;
