/*15. List down total gold, silver and bronze medals won by each country 
corresponding to each olympic games.
*/
SELECT games, region, 
SUM(CAST( CASE medal WHEN 'Gold'   THEN '1' ELSE '0' END AS INT)) AS gold,
SUM(CAST( CASE medal WHEN 'Silver' THEN '1' ELSE '0' END AS INT)) AS silver,
SUM(CAST( CASE medal WHEN 'Bronze' THEN '1' ELSE '0' END AS INT)) AS bronze

FROM olympics_history
JOIN olympics_history_noc_regions
ON olympics_history.noc = olympics_history_noc_regions.noc

GROUP BY games, region
HAVING 
SUM(CAST( CASE medal WHEN 'Gold'   THEN '1' ELSE '0' END AS INT)) != 0 OR
SUM(CAST( CASE medal WHEN 'Silver' THEN '1' ELSE '0' END AS INT)) != 0 OR
SUM(CAST( CASE medal WHEN 'Bronze' THEN '1' ELSE '0' END AS INT)) != 0

ORDER BY games, region DESC
