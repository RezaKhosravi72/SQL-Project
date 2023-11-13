/*16. Identify which country won the most gold, 
most silver and most bronze medals in each olympic games.
*/
SELECT 
t1.team || ' - ' || t1.medals AS Most_Gold,
t2.team || ' - ' || t2.medals AS Most_silver,
t3.team || ' - ' || t3.medals AS Most_bronze
FROM

	(SELECT team, COUNT(medal) AS medals
	FROM olympics_history
	WHERE medal = 'Gold'
	GROUP BY team
	ORDER BY medals DESC
	LIMIT 1
	) AS t1
CROSS JOIN
	(SELECT team, COUNT(medal) AS medals
	FROM olympics_history
	WHERE medal = 'Silver'
	GROUP BY team
	ORDER BY medals DESC
	LIMIT 1
	) AS t2
CROSS JOIN
	(SELECT team, COUNT(medal) AS medals
	FROM olympics_history
	WHERE medal = 'Bronze'
	GROUP BY team
	ORDER BY medals DESC
	LIMIT 1
	) AS t3
	