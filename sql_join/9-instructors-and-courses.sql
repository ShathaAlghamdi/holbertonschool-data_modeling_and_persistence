SELECT i.name AS instructor_name, c.title AS course_title
FROM instructors AS i
LEFT JOIN courses AS c ON c.instructor_id = i.id
ORDER BY i.name ASC, c.title ASC;
