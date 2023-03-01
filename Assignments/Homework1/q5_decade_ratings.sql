SELECT (CAST(FLOOR(t.premiered / 10) * 10 AS VARCHAR) || 's') as decade, 
ROUND(AVG(r.rating), 2) as avg_rating, 
MAX(r.rating) as top_rating,
MIN(r.rating) as min_rating,
COUNT(t.premiered)
FROM titles as t JOIN ratings as r 
ON t.title_id = r.title_id
WHERE t.premiered IS NOT NULL 
GROUP BY decade
ORDER BY avg_rating DESC, decade ASC;