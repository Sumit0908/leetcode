# Write your MySQL query statement below
select w1.id
from weather as w1
join weather as w2
on date_sub(w1.recordDate,Interval 1 Day)=w2.recordDate
where w1.temperature>w2.temperature;