# Write your MySQL query statement below
(select u.name as results from 
users u join MovieRating mr on 
mr.user_id=u.user_id
group by u.name,u.user_id
order by count(mr.movie_id) desc,u.name asc
limit 1
)
union all
(select mo.title as results
from Movies mo
join MovieRating mr on
mo.movie_id=mr.movie_id
where mr.created_at between '2020-02-01' and '2020-02-29'
group by mo.movie_id,mr.movie_id

order by avg(mr.rating) desc,mo.title asc
limit 1
)

