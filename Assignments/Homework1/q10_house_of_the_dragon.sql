/* TODO: needs revision */

WITH secondary_titles as (
    SELECT t.primary_title as name, a.title as secondary_title
    FROM titles as t JOIN akas as a
    ON t.title_id = a.title_id
    where t.primary_title = 'House of the Dragon' AND t.type = 'tvSeries'
    GROUP BY t.primary_title, a.title
    ORDER BY a.title
), 
titles_sequenced as (
    SELECT ROW_NUMBER() OVER (ORDER BY secondary_titles.name asc) as seqnum, secondary_titles.secondary_title as secondary_title
    FROM secondary_titles
),
summed as (
    SELECT seqnum, secondary_title
    FROM titles_sequenced
    where seqnum = 1
    UNION ALL
    SELECT titles_sequenced.seqnum, s.secondary_title || ', ' || titles_sequenced.secondary_title
    FROM titles_sequenced JOIN summed as s
    ON titles_sequenced.seqnum = s.seqnum + 1
)
SELECT secondary_title FROM summed
ORDER BY seqnum DESC
LIMIT 1;