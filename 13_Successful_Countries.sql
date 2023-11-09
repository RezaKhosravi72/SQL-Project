/*13.Fetch the top 5 most successful countries in olympics. 
Success is defined by no of medals won.
*/
SELECT region, COUNT(medal) AS total_medals
FROM olympics_history
JOIN olympics_history_noc_regions
ON olympics_history.noc = olympics_history_noc_regions.noc

WHERE Medal = 'Gold' OR Medal = 'Silver' OR Medal = 'Bronze'
GROUP BY region
ORDER BY total_medals DESC
LIMIT 5