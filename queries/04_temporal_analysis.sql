-- =========================================
-- Titles Added by Year
-- =========================================
-- Analyze the growth of the Netflix catalog over time

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
    AND type IS NOT NULL
GROUP BY ANO
ORDER BY ANO ASC;
