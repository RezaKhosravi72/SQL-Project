/*
4. Which year saw the highest and lowest no of countries participating in olympics
*/

SELECT games ||' - '|| COUNT(DISTINCT noc) AS Highest_participants 
FROM olympics_history
GROUP BY games
ORDER BY COUNT(DISTINCT noc) DESC
LIMIT 1
