/*
10. Find the Ratio of male and female athletes participated in all olympic games.
    select concat('1 : ', round(max_cnt.cnt::decimal/min_cnt.cnt, 2)) as ratio
	CONCAT('1 : ', ROUND(max_cnt/min_cnt, 2)) AS ratio
*/


SELECT
male_numbers, female_numbers, 
'1 : ' || ROUND(male_numbers/female_numbers, 2) AS Female_vs_Male
FROM
(
SELECT
CAST(COUNT(CASE WHEN sex = 'M' THEN 1 END) AS DECIMAL(10,2)) AS male_numbers,
CAST(COUNT(CASE WHEN sex = 'F' THEN 1 END) AS DECIMAL(10,2)) AS female_numbers
FROM olympics_history
) t
