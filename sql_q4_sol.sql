-- 4. Write a SQL query to compute a list showing the number of substitutions that happened in various stages of play for the entire tournament.
SELECT play_schedule, play_half, COUNT(*) AS num_subs
FROM euro_cup_2016.player_in_out
GROUP BY play_schedule, play_half;