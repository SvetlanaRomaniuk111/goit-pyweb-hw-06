--Знайти список курсів, які відвідує студент.
SELECT DISTINCT
	s.id AS student_id,
    s.fullname AS student_name,
    sb.name AS subject
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN subjects sb ON sb.id = g.subject_id 
WHERE s.id = 25
ORDER BY sb.name;