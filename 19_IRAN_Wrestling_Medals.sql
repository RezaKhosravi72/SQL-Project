--19. Iran	Event	Wrestling	Tatal_Medals
SELECT team, games, sport,
SUM(CAST(CASE medal WHEN 'Gold' THEN '1' WHEN 'Silver' THEN '1' 
		            WHEN 'Bronze' THEN '1' ELSE '0' END AS INT)) AS total_medals 

FROM olympics_history
WHERE noc = 'IRI'
GROUP BY team, games, sport 
HAVING sport = 'Wrestling'
ORDER BY games DESC