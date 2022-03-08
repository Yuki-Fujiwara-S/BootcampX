SELECT students.name as name, 
avg(assignment_submissions.duration) as avg_assignment_duration,
avg(assignments.duration) as avg_estimated_duration 
FROM assignments
JOIN assignment_submissions ON assignment_id = assignments.id
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_assignment_duration;