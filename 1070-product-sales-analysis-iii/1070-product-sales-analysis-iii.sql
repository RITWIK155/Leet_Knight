/* Write your T-SQL query statement below */
with cte as(
select product_id, year as first_year,DENSE_RANK() OVER (partition by product_id ORDER BY year) as rnk, quantity, price from Sales)
select product_id, first_year, quantity, price from cte where rnk = 1