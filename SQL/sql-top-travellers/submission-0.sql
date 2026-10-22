--coalesce changes null to 0
SELECT 
    users.name, 
    COALESCE(SUM(rides.distance),0) as travelled_distance
FROM users 
LEFT JOIN rides on users.id = rides.user_id
GROUP BY users.id, users.name -- duplicate names would merge without id
ORDER BY travelled_distance DESC, users.name ASC