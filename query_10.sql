--Список курсів, які певному студенту читає певний викладач.
SELECT DISTINCT
	s.id AS student_id,
    s.fullname AS student_name,
    t.fullname AS teacher,
    sb.name AS subject    
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN subjects sb ON sb.id = g.subject_id 
JOIN teachers t ON t.id = sb.teacher_id
WHERE s.id = 25 AND t.id = 2
ORDER BY sb.name;