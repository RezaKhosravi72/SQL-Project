SELECT sport, COUNT(medal) AS Total_medals
FROM olympics_history

WHERE noc = 'IRI' AND (medal = 'Gold' OR medal = 'Silver' OR medal = 'Bronze') 

GROUP BY sport
ORDER BY Total_medals DESC