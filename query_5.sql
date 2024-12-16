--Знайти які курси читає певний викладач.
SELECT
    t.fullname AS teacher,
    s.name AS subject
FROM teachers t
JOIN subjects s ON t.id = s.teacher_id
WHERE t.id = 2;  -- Замість 1 підставте ID викладача, курси якого ви хочете знайти


