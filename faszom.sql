SELECT T1.gyarto
FROM `&_termekek` AS T1, `&_termekek` AS T2
WHERE T1.gyarto = T2.gyarto
AND T1.tipus = 'laptop' AND T2.tipus = 'nyomtato'
GROUP BY T2.gyarto;

SELECT * 
FROM `&_termekek`
JOIN `&_pc` using(modell);

SELECT * 
FROM `&_termekek`
WHERE tipus in
(SELECT tipus
FROM `&_termekek`
WHERE tipus = 'pc');

SELECT * 
FROM `&_termekek`
WHERE tipus in
(SELECT tipus
FROM `&_termekek`
WHERE tipus = 'pc');

SELECT *
FROM `&_termekek`
NATURAL JOIN
(SELECT modell, ar FROM `&_pc`
UNION
SELECT Laptop_id, ar FROM `&_laptopok`
UNION
SELECT modell, ar FROM `&_nyomtatok`) T
