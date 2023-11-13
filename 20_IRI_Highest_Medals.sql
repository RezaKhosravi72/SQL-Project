--19. In which Sport/event, Iran (IRI) has won highest medals.

SELECT sport, 
SUM(CAST(CASE medal WHEN'Gold'THEN'1' WHEN'Silver'THEN'1' WHEN'Bronze'THEN'1' 
		 ELSE '0' END AS INT)) AS total_medals 

FROM olympics_history
WHERE noc = 'IRI' 
GROUP BY sport

HAVING SUM(CAST(CASE medal WHEN'Gold'THEN'1' WHEN'Silver'THEN'1' WHEN'Bronze'THEN'1'ELSE'0'END AS INT)) <> 0

ORDER BY total_medals DESC

