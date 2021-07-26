#중복제거

SELECT email
    #, COUNT(ID) AS cnt
FROM person
GROUP BY Email
HAVING COUNT(id) >=2
;