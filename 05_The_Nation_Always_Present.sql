/*
5. Which nation has participated in all of the olympic games
*/
SELECT region AS country, COUNT(DISTINCT games) AS Total_Games_Participated

FROM olympics_history
JOIN olympics_history_noc_regions
ON olympics_history.noc = olympics_history_noc_regions.noc  

GROUP BY region
HAVING COUNT(DISTINCT games)=51  

