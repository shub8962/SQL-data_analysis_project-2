use northwind;
/*                                                          ----SQL ASSIGNMENT NORTHWIND DATABASE----                                                */
-- Q1. Write a query to get Product name and quantity/unit--
select productname, quantityperunit from northwind.products;

-- Q2. Write a query to get current Product list (Product ID and name)--
select productname,productid from products where discontinued=0;

-- Q3*. Write a query to get discontinued Product list (Product ID and name)--
select productname,productid from products where discontinued =1;

-- Q4. Write a query to get most expense and least expensive Product list (name and unit price)--
select productname,unitprice from products order by unitprice desc;

-- Q5. Write a query to get Product list (id, name, unit price) where current products cost less than $20--
select productid,productname,unitprice from products where unitprice <20 and discontinued =0 order by unitprice desc;

-- Q6. Write a query to get Product list (id, name, unit price) where products cost between $15 and $25--
select productid,productname,unitprice from products where unitprice between 15 and 25 order by unitprice desc;

-- Q7. Write a query to get Product list (name, unit price) of above average price--
select productname,unitprice from products where unitprice > (select avg(unitprice) from products) order by unitprice;

-- Q8. Write a query to get Product list (name, unit price) of ten most expensive products--
select productname as 'top 10 expensive products',unitprice from products order by unitprice desc limit 10;

-- Q9. Write a query to count current and discontinued products--
select count(productname)  from products group by discontinued;

-- Q10. Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity on ordeR--
select productname,unitsonorder,unitsinstock from products where unitsinstock < unitsonorder;
