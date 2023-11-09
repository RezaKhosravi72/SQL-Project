/*11. Fetch the top 5 athletes who have won the most gold medals.
*/
SELECT name, team, COUNT(Medal) AS total_gold_medal
From olympics_history
WHERE Medal = 'Gold'
GROUP BY name, team
ORDER BY total_gold_medal DESC
LIMIT 5