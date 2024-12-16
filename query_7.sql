--Знайти оцінки студентів у окремій групі з певного предмета.
SELECT
	s.fullname AS student_name,
	g.name AS group_name,
	sb.name AS subject,
	gr.grade AS grade
FROM groups g
JOIN students s ON g.id = s.group_id
JOIN grades gr ON s.id = gr.student_id
JOIN subjects sb ON gr.subject_id = sb.id
WHERE gr.subject_id = 5 AND s.group_id = 2
ORDER BY s.fullname ASC;
