SELECT c.title AS course_title, a.title AS assignment_title
FROM courses AS c
LEFT JOIN assignments AS a ON a.course_id = c.id
ORDER BY c.title ASC, a.title ASC;
