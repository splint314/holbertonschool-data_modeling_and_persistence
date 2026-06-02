update books 
set price = price - (price * 0.10)
where published_year < 2000;