SELECT t.primary_title, r.votes
FROM ratings as r JOIN titles as t JOIN crew as c JOIN people as p
ON r.title_id = t.title_id AND t.title_id = c.title_id AND c.person_id = p.person_id
WHERE p.name LIKE '%Cruise%' AND p.born = 1962
ORDER BY votes DESC
LIMIT 10;