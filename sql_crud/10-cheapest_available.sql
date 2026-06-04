select title, price
from books
where stock > 0
order by price asc
limit 4;