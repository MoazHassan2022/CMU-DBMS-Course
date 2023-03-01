SELECT DISTINCT p1.name
FROM people as p1 JOIN crew as c1 ON p1.person_id = c1.person_id
WHERE c1.title_id IN (SELECT c2.title_id 
                     FROM crew as c2 JOIN people as p2 ON c2.person_id = p2.person_id
                     WHERE p2.name = 'Khaled Mohamed' AND p2.born = 1991)
      AND (c1.category = 'actor' or c1.category = 'actress')
ORDER BY p1.name ASC;