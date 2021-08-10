DELETE
FROM person
WHERE Id NOT IN 
(
SELECT sub.min_id
FROM
(
SELECT Email, MIN(id) AS min_id
FROM Person
GROUP BY Email
    ) sub
    )