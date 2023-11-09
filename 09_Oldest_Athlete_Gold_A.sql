/*
9. Fetch oldest athletes to win a gold medal
*/
SELECT *
FROM(
	 SELECT *,
	 RANK() OVER (ORDER BY CAST(COALESCE(NULLIF(age, 'NA'), '0') AS INT) DESC) AS rnk
	 FROM olympics_history
	 WHERE medal = 'Gold'
) AS ranking
WHERE rnk = 1


/*
NULLIF() 
is used to compare two expressions. 
If the two expressions are equal, it returns NULL; 
otherwise, it returns the first expression.

COALESCE(column1, column2, column3, default_value)
COALESCE() is used to return the first non-NULL 
expression from a list of expressions.
*/