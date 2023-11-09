/*
9. Fetch oldest athletes to win a gold medal
*/

SELECT name, cast(CASE age WHEN 'NA' THEN '0' ELSE age END AS INT) AS age,
team, sport, medal
FROM olympics_history
WHERE medal = 'Gold'
ORDER BY age DESC


/*
NULLIF() 
is used to compare two expressions. 
If the two expressions are equal, it returns NULL; 
otherwise, it returns the first expression.

COALESCE(column1, column2, column3, default_value)
COALESCE() is used to return the first non-NULL 
expression from a list of expressions.
*/