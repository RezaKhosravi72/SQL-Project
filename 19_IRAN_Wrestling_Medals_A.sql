SELECT team, games, sport, COUNT(medal) AS Total_medals
FROM olympics_history

WHERE noc = 'IRI' AND (medal = 'Gold' OR medal = 'Silver' OR medal = 'Bronze') 

GROUP BY team, games, sport
HAVING sport = 'Wrestling'
ORDER BY games DESC