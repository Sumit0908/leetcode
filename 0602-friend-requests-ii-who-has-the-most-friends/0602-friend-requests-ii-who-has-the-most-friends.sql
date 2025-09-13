# Write your MySQL query statement below
select t.id,t.num from(
select id,sum(cnt) as num
from(
    select requester_id as id,count(*) as cnt
    from RequestAccepted
    group by requester_id
    union all
    select accepter_id as id,count(*) as cnt
    from RequestAccepted
    group by accepter_id
)as total
group by id
)as t
order by t.num desc
limit 1;

