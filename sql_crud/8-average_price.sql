select function, avg(price) as average_price
from sales
group by function
order by average_price desc;