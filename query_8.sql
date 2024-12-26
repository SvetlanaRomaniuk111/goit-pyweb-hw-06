--Знайти середній бал, який ставить певний викладач зі своїх предметів.
SELECT 
	t.fullname AS teacher,
	sb.name AS subject,
	ROUND(AVG(g.grade), 2) AS average_grade
FROM teachers t
JOIN subjects sb ON t.id = sb.teacher_id
JOIN grades g ON sb.id = g.subject_id
WHERE t.id = 2
GROUP BY t.fullname , sb.name
ORDER BY average_grade DESC;