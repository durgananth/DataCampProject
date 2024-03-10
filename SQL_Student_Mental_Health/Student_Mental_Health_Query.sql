-- Question: Is International students length of stay affect their Mental health?
-- Answer: Query the Length of Stay and Avg scores of mental health in Desc order
SELECT "stay",
	ROUND(AVG(todep),2) AS average_phq,
	ROUND(AVG(tosc),2) AS average_scs,
	ROUND(AVG(toas),2) AS average_as,
	COUNT(inter_dom) AS count_int
FROM "students.csv"
WHERE "stay" IS NOT NULL AND inter_dom = 'Inter' 
GROUP BY "stay"
ORDER BY "stay" DESC;