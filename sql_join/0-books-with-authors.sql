-- Show every author and their books, including authors with no books.
SELECT a.name AS author_name,
       b.title AS title
FROM authors AS a
LEFT JOIN books AS b ON b.author_id = a.id
ORDER BY author_name ASC, title ASC;
