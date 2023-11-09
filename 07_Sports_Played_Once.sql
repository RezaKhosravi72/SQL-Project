/*
7. Which Sports were just played only once in the olympics.
*/
SELECT t1.*, t2.games
FROM(
	SELECT sport, COUNT(DISTINCT games) AS num_of_plays
	FROM olympics_history
	GROUP BY sport
	HAVING COUNT(DISTINCT games)=1
) AS t1 
JOIN(
	SELECT DISTINCT games, sport
	FROM olympics_history
) AS t2 ON t1.sport = t2.sport
ORDER BY t1.sport
