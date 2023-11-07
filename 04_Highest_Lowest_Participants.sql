/*
4. Which year saw the highest and lowest no of countries participating in olympics
*/

SELECT LowestSubquery.games  || ' - ' || Lowest_participants  AS Year_With_Lowest_participants,
	   HighestSubquery.games || ' - ' || Highest_participants AS Year_With_Highest_participants
	   
FROM
	(SELECT games, COUNT(DISTINCT noc) AS Lowest_participants
	 FROM olympics_history
	 GROUP BY games
	 ORDER BY COUNT(DISTINCT noc) ASC
	 LIMIT 1) AS LowestSubquery
	
CROSS JOIN
	(SELECT games, COUNT(DISTINCT noc) AS Highest_participants
	 FROM olympics_history
	 GROUP BY games
	 ORDER BY COUNT(DISTINCT noc) DESC
	 LIMIT 1) AS HighestSubquery;

