-- =========================================
-- Initial Exploration and Data Validation
-- =========================================


-- =========================================
-- Date Format Validation
-- =========================================
-- Validate consistency of the date_added column format

SELECT
    date_added
FROM `netflix-496013.netflix.netflix_titles`
WHERE NOT REGEXP_CONTAINS(
    date_added,
    '[A-Z][a-z]+ [0-9]{1,2}, [0-9]{4}'
)
ORDER BY date_added DESC;


-- =========================================
-- Explore Titles Added in 2021
-- =========================================
-- Convert date_added into DATE format and inspect 2021 entries

WITH base AS (
    SELECT
        *,
        SAFE.PARSE_DATE('%B %d, %Y', date_added) AS date_added_clean
    FROM `netflix-496013.netflix.netflix_titles`
)

SELECT
    FORMAT_DATE("%Y-%m-%d", base.date_added_clean) AS ANO
FROM base
WHERE FORMAT_DATE("%Y", base.date_added_clean) = '2021'
ORDER BY ANO DESC;
