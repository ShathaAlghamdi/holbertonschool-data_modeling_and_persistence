SELECT c.title AS course_title, i.name AS instructor_name
FROM courses AS c
LEFT JOIN instructors AS i ON c.instructor_id = i.id
ORDER BY c.title ASC;
