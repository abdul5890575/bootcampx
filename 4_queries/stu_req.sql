SELECT students.name, COUNT(assistance_requests.student_id) as total_assistanc
FROM assistance_requests
JOIN students ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name