-- COUNT(e.student_id) returns zero for courses with no enrollments.
SELECT c.title AS course_title,
       COUNT(e.student_id) AS enrollment_count
FROM courses AS c
LEFT JOIN enrollments AS e ON e.course_id = c.id
GROUP BY c.id, c.title
ORDER BY enrollment_count DESC, course_title ASC;
