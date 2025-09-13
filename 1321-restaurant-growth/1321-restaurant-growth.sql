select c1.visited_on,sum(t.amount) as amount,round(sum(t.amount)/7,2) as average_amount
from (
    select visited_on,sum(amount) as amount
    from customer
    group by visited_on
) c1
join(  select visited_on,sum(amount) as amount
    from customer
    group by visited_on
  

)t
on t.visited_on between date_sub(c1.visited_on,INTERVAL 6 DAY) and c1.visited_on
group by c1.visited_on
  HAVING COUNT(DISTINCT t.visited_on) = 7
order by c1.visited_on asc;