SELECT day, count(assignments), sum(assignments.duration) as total_duration
FROM assignments
GROUP BY day
ORDER BY day;