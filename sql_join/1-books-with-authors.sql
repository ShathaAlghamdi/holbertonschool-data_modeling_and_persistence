SELECT b.title AS title, a.name AS author_name
FROM books AS b
INNER JOIN authors AS a ON b.author_id = a.id
ORDER BY title ASC, author_name ASC;
