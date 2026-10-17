SELECT s.name AS student_name, c.title AS course_title
FROM students AS s
INNER JOIN enrollments AS e ON e.student_id = s.id
INNER JOIN courses AS c ON c.id = e.course_id
ORDER BY student_name ASC, course_title ASC;
