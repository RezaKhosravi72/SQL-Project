--18. Which countries have never won gold medal but have won silver/bronze medals?
SELECT region, 
SUM(CAST( CASE medal WHEN 'Gold'   THEN '1' ELSE '0' END AS INT)) AS gold,
SUM(CAST( CASE medal WHEN 'Silver' THEN '1' ELSE '0' END AS INT)) AS silver,
SUM(CAST( CASE medal WHEN 'Bronze' THEN '1' ELSE '0' END AS INT)) AS bronze

FROM olympics_history
JOIN olympics_history_noc_regions
ON olympics_history.noc = olympics_history_noc_regions.noc

GROUP BY region
HAVING 
SUM(CAST( CASE medal WHEN 'Gold'   THEN '1' ELSE '0' END AS INT))  = 0 AND
SUM(CAST( CASE medal WHEN 'Silver' THEN '1' WHEN 'Bronze' THEN '1' ELSE '0' END AS INT)) != 0 
--SUM(CAST( CASE medal WHEN 'Bronze' THEN '1' ELSE '0' END AS INT)) != 0

ORDER BY silver DESC
