/* Write your T-SQL query statement below */
select p.product_id, p.product_name from Product p
join Sales s on p.product_id = s.product_id
-- where s.sale_date BETWEEN '2019-01-01' and '2019-03-31'
Group BY p.product_id, p.product_name
HAVING MIN(s.sale_date) >= '2019-01-01'
   AND MAX(s.sale_date) <= '2019-03-31';