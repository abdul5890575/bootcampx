SELECT assignments.id, name, chapter, day ,COUNT(assignment_id) as total_requests
FROM  assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP By assignments.id
ORDER BY total_requests DESC