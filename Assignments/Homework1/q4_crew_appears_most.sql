SELECT p.name, COUNT(c.person_id) as num_appearances
FROM crew as c JOIN people as p ON c.person_id = p.person_id
GROUP BY p.name
ORDER BY num_appearances DESC
LIMIT 20;