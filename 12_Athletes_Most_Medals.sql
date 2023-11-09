/*12. Fetch the top 5 athletes who have won the most medals (gold/silver/bronze).
*/
SELECT name, team, COUNT(Medal) AS total_medals
FROM olympics_history
WHERE Medal = 'Gold' OR Medal = 'Silver' OR Medal = 'Bronze'
GROUP BY name, team
ORDER BY total_medals DESC
LIMIT 5