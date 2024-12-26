--add_2-Оцінки студентів у певній групі з певного предмета на останньому занятті.
SELECT s.id AS student_id , s.fullname AS student, gr.name AS groups, sb.name AS subjects, g.grade, g.grade_date AS last_date
FROM grades g
JOIN students s ON g.student_id = s.id
JOIN subjects sb ON g.subject_id = sb.id
JOIN groups gr ON s.group_id = gr.id
WHERE g.subject_id = 4 AND s.group_id = 3 AND g.grade_date = (
	SELECT MAX(g.grade_date) AS last_date
	FROM grades g
	JOIN students s ON s.id = g.student_id 
	WHERE g.subject_id = 4 AND s.group_id = 3
);
