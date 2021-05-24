# Write your MySQL query statement below

SELECT S.buyer_id
FROM Product P INNER JOIN Sales S
ON P.product_id = S.product_id
GROUP BY S.buyer_id
HAVING SUM(CASE WHEN P.product_name = "S8" THEN 1 ELSE 0 END) > 0
AND
SUM(CASE WHEN P.product_name = "iPhone" THEN 1 ELSE 0 END) = 0;