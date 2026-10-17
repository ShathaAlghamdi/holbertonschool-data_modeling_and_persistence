SELECT c.title AS course_title
FROM courses AS c
LEFT JOIN assignments AS a ON a.course_id = c.id
GROUP BY c.id, c.title
HAVING COUNT(a.id) > (
    SELECT AVG(assignment_count)
    FROM (
        SELECT COUNT(a2.id) AS assignment_count
        FROM courses AS c2
        LEFT JOIN assignments AS a2 ON a2.course_id = c2.id
        GROUP BY c2.id
    ) AS course_counts
)
ORDER BY course_title ASC;
