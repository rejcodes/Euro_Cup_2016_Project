-- 16. Write a SQL query to find referees and the number of matches they worked in each venue.
SELECT referee_name, venue_name, COUNT(match_no) AS num_matches
FROM euro_cup_2016.match_mast mm
INNER JOIN euro_cup_2016.referee_mast rm 
ON mm.referee_id = rm.referee_id
INNER JOIN euro_cup_2016.soccer_venue sv 
ON mm.venue_id = sv.venue_id
GROUP BY referee_name, venue_name;