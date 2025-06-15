select a1.machine_id,
ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
from ACTIVITY as a1
join ACTIVITY as a2
on a1.machine_id=a2.machine_id
AND
 a1.activity_type="start" and a2.activity_type="end"
GROUP BY a1.machine_id;
