-- Count enrollments per course, compare with average across all courses.
-- Courses without enrollments contribute zero to that average.
SELECT c.title AS course_title
FROM courses AS c
LEFT JOIN enrollments AS e ON e.course_id = c.id
GROUP BY c.id, c.title
HAVING COUNT(e.student_id) > (
    SELECT AVG(enrollment_count)
    FROM (
        SELECT COUNT(e2.student_id) AS enrollment_count
        FROM courses AS c2
        LEFT JOIN enrollments AS e2 ON e2.course_id = c2.id
        GROUP BY c2.id
    ) AS per_course
)
ORDER BY course_title ASC;
