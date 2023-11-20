-- index isbn column in books table to optimize book search with ISBN
CREATE INDEX idx_isbn ON Books(isbn);

-- to view the indexes on a table
SHOW INDEXES from Books;

-- to drop and index
ALTER TABLE Books
DROP INDEX idx_isbn;