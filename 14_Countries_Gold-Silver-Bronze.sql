/*14. List down total gold, silver and bronze medals won by each country.
*/
SELECT
region,
SUM(CAST(CASE medal WHEN 'Gold'   THEN '1' ELSE '0' END AS INT)) AS gold,
SUM(CAST(CASE medal WHEN 'Silver' THEN '1' ELSE '0' END AS INT)) AS silver,
SUM(CAST(CASE medal WHEN 'Bronze' THEN '1' ELSE '0' END AS INT)) AS bronze

FROM olympics_history AS oh
JOIN olympics_history_noc_regions AS ohnr
ON oh.noc = ohnr.noc

GROUP BY region
ORDER BY gold DESC