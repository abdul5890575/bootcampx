SELECT avg(completed_at - started_at) as average_time, cohorts.name 
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name 
ORDER BY average_time;