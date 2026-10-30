SELECT phase,complexity,COUNT(*) AS tasks,AVG(work_minutes) AS avg_work_minutes,
AVG(wait_minutes) AS avg_wait_minutes,AVG(error*1.0) AS error_rate,
AVG(CASE WHEN work_minutes+wait_minutes<=120 THEN 1.0 ELSE 0 END) AS sla_rate
FROM fact GROUP BY phase,complexity ORDER BY phase,complexity;