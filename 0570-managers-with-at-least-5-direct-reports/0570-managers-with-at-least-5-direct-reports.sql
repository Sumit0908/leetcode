# Write your MySQL query statement below
    Select e.name from Employee as e join 
    Employee as r  on e.id=r.managerId
    group by e.id,r.managerId
    having count(*)>=5;
