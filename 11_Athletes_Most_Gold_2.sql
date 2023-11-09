/*11. Fetch the top 5 athletes who have won the most gold medals.
*/
SELECT name, team, COUNT(CASE WHEN Medal='Gold' THEN '1' END) AS total_gold_medal
From olympics_history
GROUP BY name, team
ORDER BY total_gold_medal DESC
LIMIT 5