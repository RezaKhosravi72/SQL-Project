/*
3. Mention the total no of nations who participated in each olympics game?
*/

SELECT games, COUNT(DISTINCT noc) FROM olympics_history
GROUP BY games
