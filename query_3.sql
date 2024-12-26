--Знайти середній бал у групах з певного предмета
SELECT
    gr.name AS group_name,
    sb.name AS subject,
    ROUND(AVG(g.grade), 2) AS average_grade   
FROM groups gr
JOIN students s ON gr.id = s.group_id
JOIN grades g ON s.id = g.student_id
JOIN subjects sb ON g.subject_id = sb.id
WHERE g.subject_id = 2  -- Предмет, з якого ви хочете знайти середній бал
GROUP BY gr.name, sb.name
ORDER BY average_grade DESC;
