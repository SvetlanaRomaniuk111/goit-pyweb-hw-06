--add_2-Оцінки студентів у певній групі з певного предмета на останньому занятті.
WITH LastLessonDate AS (
	SELECT
		MAX(gr.grade_date) AS last_date
FROM grades gr
JOIN students s ON s.id = gr.student_id
WHERE s.group_id = 3 AND gr.subject_id = 2
)
SELECT
	g.name AS group_name,
	s.fullname AS student_name,
	sb.name AS subject,
	gr.grade AS grade,
	gr.grade_date AS grade_date
FROM grades gr
JOIN students s ON gr.student_id = s.id
JOIN subjects sb ON gr.subject_id = sb.id
JOIN groups g ON s.group_id = g.id
JOIN LastLessonDate ll ON gr.grade_date = ll.last_date
WHERE s.group_id = 3 AND gr.subject_id = 2
ORDER BY s.fullname;
