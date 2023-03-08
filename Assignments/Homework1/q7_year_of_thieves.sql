WITH certain_premiered_work AS (
    SELECT
        premiered
    FROM titles
    WHERE primary_title = 'Army of Thieves'
)
SELECT COUNT(DISTINCT t.title_id)
FROM titles as t, certain_premiered_work as c
WHERE t.premiered = c.premiered;