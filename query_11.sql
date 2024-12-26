--add_1-Середній бал, який певний викладач ставить певному студентові.
SELECT 
	t.fullname AS teacher,
	s.fullname AS student,
	ROUND(AVG(g.grade), 2) AS average_grade
FROM teachers t
JOIN subjects sb ON t.id = sb.teacher_id
JOIN grades g ON sb.id = g.subject_id
JOIN students s ON s.id = g.student_id
WHERE t.id = 3 AND s.id = 15
GROUP BY t.fullname , s.fullname;