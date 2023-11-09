/*
8. Fetch the total no of sports played in each olympic games.
*/
SELECT games, COUNT(DISTINCT sport) AS total_num_sports
FROM olympics_history
GROUP BY games
ORDER BY games DESC
