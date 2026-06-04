select genre, sum(stock) as total_stock
from books
group by genre
order by total_stock desc;