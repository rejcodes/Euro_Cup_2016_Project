-- 13. Write a SQL query to find all the defenders who scored a goal for their teams.
WITH p_table AS (
SELECT player_name
FROM euro_cup_2016.player_mast pm
INNER JOIN euro_cup_2016.goal_details g
ON pm.player_id = g.player_id
WHERE posi_to_play = 'FD'
GROUP BY goal_id)

SELECT *
FROM p_table
WHERE COUNT(goal_id) != 0;