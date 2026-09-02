-- =========================================
-- Temporal Category Analysis - TV Shows
-- =========================================
-- Analyze category growth trends for TV Shows over time

WITH base AS (
    SELECT
        *,
        SAFE.PARSE_DATE('%B %d, %Y', date_added) AS date_added_clean
    FROM `netflix-496013.netflix.netflix_titles`
)

SELECT
    type,
    TRIM(Generos_separados) AS Generos_separados_corretamente,
    FORMAT_DATE("%Y", base.date_added_clean) AS ANO,
    COUNT(*) AS quantidade
FROM base,
UNNEST(SPLIT(listed_in)) AS Generos_separados
WHERE listed_in IS NOT NULL
    AND type = "TV Show"
GROUP BY type, Generos_separados_corretamente, ANO
ORDER BY quantidade DESC;


-- =========================================
-- Temporal Category Analysis - Movies
-- =========================================
-- Analyze category growth trends for Movies over time

WITH base AS (
    SELECT
        *,
        SAFE.PARSE_DATE('%B %d, %Y', date_added) AS date_added_clean
    FROM `netflix-496013.netflix.netflix_titles`
)

SELECT
    type,
    TRIM(Generos_separados) AS Generos_separados_corretamente,
    FORMAT_DATE("%Y", base.date_added_clean) AS ANO,
    COUNT(*) AS quantidade
FROM base,
UNNEST(SPLIT(listed_in)) AS Generos_separados
WHERE listed_in IS NOT NULL
    AND type = "Movie"
GROUP BY type, Generos_separados_corretamente, ANO
ORDER BY quantidade DESC;
