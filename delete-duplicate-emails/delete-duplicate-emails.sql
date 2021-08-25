
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


/* 셀프조인 사용하기
DELETE
FROM Prson p1
    INNER JOIN Person p2 ON p1.Email = p2.Email
WHERE p1.Id > p2.Id
*/