--Знайти студента із найвищим середнім балом з певного предмета
SELECT
    s.id AS student_id,
    s.fullname AS student_name,
    ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
WHERE g.subject_id = 1  -- Предмет, з якого ви хочете знайти середній бал
GROUP BY s.id
ORDER BY average_grade DESC
LIMIT 1;
