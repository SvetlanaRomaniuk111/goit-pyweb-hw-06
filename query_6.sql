--Знайти список студентів у певній групі.
SELECT
	s.fullname AS student_name,
	g.name AS group_name
FROM groups g
JOIN students s ON g.id = s.group_id
WHERE g.id = 3
ORDER BY s.fullname ASC;

