/* TODO: needs revision */
WITH names_and_works_certain_year AS (
    SELECT p.person_id, p.name, t.title_id, t.primary_title
    FROM people as p JOIN crew as c
    JOIN titles as t 
    ON p.person_id = c.person_id AND c.title_id = t.title_id
    WHERE p.born = 1955 AND t.type = 'movie'
),
actors_ratings AS (
    SELECT name, ROUND(AVG(r.rating), 2) as rating
    FROM ratings as r JOIN names_and_works_certain_year as n
    ON r.title_id = n.title_id
    GROUP BY n.person_id
),
quartiles AS (
    SELECT *, NTILE(10) OVER (ORDER BY rating ASC) AS ratings_quartile 
    FROM actors_ratings
)
SELECT name, rating
FROM quartiles
WHERE ratings_quartile = 9
ORDER BY rating DESC, name ASC;