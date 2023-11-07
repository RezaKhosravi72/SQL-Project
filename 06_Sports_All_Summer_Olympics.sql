/*
6. Identify the sport which was played in all summer olympics.
*/
SELECT sport, COUNT(DISTINCT games) as num_of_games
FROM olympics_history

WHERE season = 'Summer'

GROUP BY sport

HAVING COUNT(DISTINCT games) = (SELECT COUNT(DISTINCT games) FROM olympics_history WHERE season = 'Summer');
