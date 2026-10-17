-- Include courses even when they have no enrollments.
SELECT c.title AS course_title,
       s.name AS student_name
FROM courses AS c
LEFT JOIN enrollments AS e ON e.course_id = c.id
LEFT JOIN students AS s ON s.id = e.student_id
ORDER BY course_title ASC, student_name ASC;
