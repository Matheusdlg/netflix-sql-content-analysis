-- =========================================
-- TV Shows Added by Year
-- =========================================
-- Analyze the temporal growth of TV Shows in the Netflix catalog

WITH base AS (
    SELECT
        *,
        SAFE.PARSE_DATE('%B %d, %Y', date_added) AS date_added_clean
    FROM `netflix-496013.netflix.netflix_titles`
)

SELECT
    FORMAT_DATE("%Y", base.date_added_clean) AS ANO,
    COUNT(base.date_added_clean)
FROM base
WHERE base.date_added_clean IS NOT NULL
    AND type = 'TV Show'
GROUP BY ANO
ORDER BY ANO ASC;


-- =========================================
-- Movies Added by Year
-- =========================================
-- Analyze the temporal growth of Movies in the Netflix catalog

WITH base AS (
    SELECT
        *,
        SAFE.PARSE_DATE('%B %d, %Y', date_added) AS date_added_clean
    FROM `netflix-496013.netflix.netflix_titles`
)

SELECT
    FORMAT_DATE("%Y", base.date_added_clean) AS ANO,
    COUNT(base.date_added_clean)
FROM base
WHERE base.date_added_clean IS NOT NULL
    AND type = 'Movie'
GROUP BY ANO
ORDER BY ANO ASC;
