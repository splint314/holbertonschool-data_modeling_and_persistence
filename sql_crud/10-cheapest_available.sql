UPDATE books 
SET stock = stock + 3 
SELECT * FROM books
WHERE stock < 5;
SELECT * FROM books;