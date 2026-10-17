SELECT DISTINCT i.name AS instructor_name
FROM instructors AS i
INNER JOIN courses AS c ON c.instructor_id = i.id
INNER JOIN registrations AS r ON r.course_id = c.id
ORDER BY instructor_name ASC;
