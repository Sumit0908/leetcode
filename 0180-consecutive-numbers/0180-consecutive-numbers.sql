# Write your MySQL query statement below
SELECT distinct num AS ConsecutiveNums
FROM logs l1
WHERE num = (
    SELECT l2.num 
    FROM logs l2
    WHERE l2.id = l1.id + 1
)
AND num = (
    SELECT l3.num 
    FROM logs l3
    WHERE l3.id = l1.id + 2
);
