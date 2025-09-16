# Write your MySQL query statement below
WITH top_salaries AS (
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary,
        DENSE_RANK() OVER (
            PARTITION BY e.departmentId 
            ORDER BY e.salary DESC
        ) AS rnk
    FROM Employee e
    JOIN Department d
        ON e.departmentId = d.id
)
SELECT 
    Department,
    Employee,
    salary
FROM top_salaries
WHERE rnk <= 3;
