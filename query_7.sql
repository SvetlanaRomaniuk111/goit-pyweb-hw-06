--Знайти оцінки студентів у окремій групі з певного предмета.
SELECT 
	s.id AS student_id, 
	s.fullname AS student_name, 
	gr.name AS group_name, 
	sb.name AS subject, g.grade
FROM groups gr 
JOIN students s ON gr.id = s.group_id
JOIN grades g ON s.id = g.student_id
JOIN subjects sb ON g.subject_id = sb.id
WHERE g.subject_id = 5 AND s.group_id = 2
ORDER BY s.id ASC;
