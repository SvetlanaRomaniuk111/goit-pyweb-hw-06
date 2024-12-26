--Знайти список студентів у певній групі.
SELECT 
	s.id AS student_id, 
	s.fullname AS student_name, 
	gr.name AS group_name
FROM groups gr 
JOIN students s ON gr.id = s.group_id 
WHERE gr.id = 3
ORDER BY s.id ASC;

