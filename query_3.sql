--Знайти середній бал у групах з певного предмета
SELECT
    g.name AS group_name,
    sb.name AS subject,
    ROUND(AVG(gr.grade), 2) AS average_grade
FROM groups g
JOIN students s ON g.id = s.group_id
JOIN grades gr ON s.id = gr.student_id
JOIN subjects sb ON gr.subject_id = sb.id
WHERE gr.subject_id = 1  -- Предмет, з якого ви хочете знайти середній бал
GROUP BY g.name, sb.name
ORDER BY average_grade DESC;
