SELECT teachers.name, COUNT(assistance_requests.teacher_id)
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm'
