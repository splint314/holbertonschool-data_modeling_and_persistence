update books 
set price = price - (price * 0.10)
where genre = 'Tech' and stock > 5; 