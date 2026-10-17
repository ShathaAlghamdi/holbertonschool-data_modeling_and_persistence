SELECT c.title AS course_title
FROM courses AS c
JOIN enrollments AS e ON e.course_id = c.id
GROUP BY c.id, c.title
HAVING COUNT(*) > (
    SELECT AVG(enrollment_count)
    FROM (
        SELECT COUNT(*) AS enrollment_count
        FROM enrollments
        GROUP BY course_id
    ) AS course_counts
)
ORDER BY course_title ASC;
