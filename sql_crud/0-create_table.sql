CREATE TABLE book (
    id TEXT PRIMARY KEY,
    title TEXT,
    author TEXT,
    genre TEXT,
    price REAL NOT NULL,
    stock INTEGER,
    publication_year INTEGER
);