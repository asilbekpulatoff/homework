--hw1
-- 1
select custfirstname, shipdate from customers c, orders o where c.customerid = o.customerid order by shipdate
-- 2
select v.vendname, p.productname from products p 
inner join product_vendors pv using (productnumber) 
inner join vendors v using (vendorid) where wholesaleprice < 100
-- 3
select distinct(custfirstname, empfirstname) from customers c
inner join orders o using (customerid) 
inner join employees e using (employeeid) where custlastname = emplastname
-- 4
select agtfirstname, entstagename from agents inner join engagements using (agentid)
inner join entertainers using (entertainerid) where agtzipcode = entzipcode
-- 5
select recipetitle from recipes inner join recipe_ingredients using (recipeid)
inner join ingredients using (ingredientid) where ingredientname = 'Garlic' and ingredientname = 'Beef'
-- 6
select recipetitle from recipes inner join recipe_ingredients using (recipeid)
inner join ingredients using (ingredientid) where ingredientname like 'Milk'
-- 7
select distinct(custfirstname) from customers inner join orders using (customerid)
inner join order_details using (ordernumber) 
inner join products using(productnumber) where productname like '%Mountain Bike%'