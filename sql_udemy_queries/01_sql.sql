select * from customers

select * from orders

/* Select specific columns */

select first_name , country , score from customers

/* filtering data using where clause */

select * from customers where score <> 0

select * from customers where country='Germany'


/* Order by usage */

select * from customers order by score desc  
select * from customers order by score asc


/* order by multiple columns */
select * from customers order by country asc, score desc

/* Group By */

select Country , Sum(score) from customers
group by country


/* Question */


select country, AVG(score) as avg_score from customers
WHERE score <>0
GROUP By country
HAVING avg(Score) > 430

/* Distinct */
SELECT DISTINCT COUNTRY
FROM customers

/* GET TWO MOST RECENT ORDERS */

select * from orders

select * from orders
order by order_date desc limit 2

/* Static num */

select 123 as static_num