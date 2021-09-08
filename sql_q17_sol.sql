-- 17. Write a SQL query to find the country where the most assistant referees come from, and the count of the assistant referees.
SELECT country_name, COUNT(ass_ref_id) AS num_ast_referees
FROM euro_cup_2016.soccer_country sc
INNER JOIN euro_cup_2016.asst_referee_mast arm
ON sc.country_id = arm.country_id
GROUP BY country_name
ORDER BY num_ast_referees DESC
LIMIT 1;