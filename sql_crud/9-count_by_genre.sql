from books
select genre, sum(stock) as total_stock
group by genre