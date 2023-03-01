SELECT name, ifnull(died, strftime('%Y')) - born as age 
FROM people
WHERE born >= 1900
ORDER BY age  DESC, name  ASC
LIMIT 20;
