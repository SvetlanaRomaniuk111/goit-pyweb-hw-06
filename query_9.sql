--Знайти список курсів, які відвідує студент.
SELECT DISTINCT
	s.id AS student_id,
    s.fullname AS student_name,
    sb.name AS subject
FROM grades gr
JOIN students s ON s.id = gr.student_id
JOIN subjects sb ON sb.id = gr.subject_id
WHERE s.id = 25
ORDER BY sb.name;