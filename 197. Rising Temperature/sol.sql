SELECT w2.id AS id
FROM Weather w2
JOIN Weather w1 ON w1.recordDate = DATE_SUB(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature < w2.temperature;