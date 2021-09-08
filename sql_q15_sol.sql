-- 15. Write a SQL query to find the referees who booked the most number of players.
SELECT referee_name, COUNT(match_no) AS players_booked 
FROM euro_cup_2016.referee_mast rm 
LEFT JOIN euro_cup_2016.soccer_country sc
ON rm.country_id = sc.country_id
LEFT JOIN euro_cup_2016.player_booked pb
ON sc.country_id = pb.team_id
GROUP BY referee_name
ORDER BY players_booked DESC
LIMIT 1;