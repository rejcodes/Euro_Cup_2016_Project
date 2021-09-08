-- 18. Write a SQL query to find the highest number of foul cards given in one match.
SELECT md.match_no, COUNT(kick_id) AS num_penalties
FROM euro_cup_2016.match_details md
INNER JOIN euro_cup_2016.penalty_shootout ps
ON md.match_no = ps.match_no
GROUP BY md.match_no
ORDER BY num_penalties DESC
LIMIT 1;