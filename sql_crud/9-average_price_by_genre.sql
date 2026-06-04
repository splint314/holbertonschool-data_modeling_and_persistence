select genre, avg(price) as average_price
from books
group by genre;