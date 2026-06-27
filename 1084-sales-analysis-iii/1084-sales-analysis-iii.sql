-- /* Write your T-SQL query statement below */
-- select p.product_id, p.product_name from Product p
-- join Sales s on p.product_id = s.product_id
-- -- where s.sale_date BETWEEN '2019-01-01' and '2019-03-31'
-- Group BY p.product_id, p.product_name
-- HAVING MIN(s.sale_date) >= '2019-01-01'
--    AND MAX(s.sale_date) <= '2019-03-31';

SELECT p.product_id, p.product_name
FROM Product p
JOIN Sales s
ON p.product_id = s.product_id
WHERE p.product_id NOT IN (
    SELECT product_id
    FROM Sales
    WHERE sale_date < '2019-01-01'
       OR sale_date > '2019-03-31'
)
GROUP BY p.product_id, p.product_name;