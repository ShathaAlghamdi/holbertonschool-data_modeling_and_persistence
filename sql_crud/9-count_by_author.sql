SELECT author, COUNT(*) AS total_books
FROM books
GROUP BY author;