-- 12. Write a SQL query that returns the total number of goals scored by each position on each country’s team. Do not include positions which scored no goals.
SELECT COUNT(goal_id), posi_to_play, country_name
FROM euro_cup_2016.player_mast pm
INNER JOIN euro_cup_2016.goal_details g
ON pm.player_id = g.player_id
INNER JOIN euro_cup_2016.soccer_country sc
ON pm.team_id = sc.country_id
GROUP BY posi_to_play, country_name;