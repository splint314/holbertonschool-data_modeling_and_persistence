UPDATE books
SET stock = stock + 3
WHERE stock < 5;

select * from books;