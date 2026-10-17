-- Courses whose enrollment count exceeds the average across all courses.
-- Include courses with zero enrollments in the average.
SELECT c.title AS course_title
FROM courses AS c
LEFT JOIN enrollments AS e ON e.course_id = c.id
GROUP BY c.id, c.title
HAVING COUNT(e.student_id) > (
    SELECT AVG(course_count)
    FROM (
        SELECT COUNT(e2.student_id) AS course_count
        FROM courses AS c2
        LEFT JOIN enrollments AS e2 ON e2.course_id = c2.id
        GROUP BY c2.id
    ) AS counts_per_course
)
ORDER BY course_title ASC;
