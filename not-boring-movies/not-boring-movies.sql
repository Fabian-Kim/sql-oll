# Write your MySQL query statement below

SELECT id, movie, description, rating
FROM cinema
WHERE
    MOD(id, 2) = 1
    # id % 2 = 1
    and description != "boring"
ORDER BY rating DESC
    ;