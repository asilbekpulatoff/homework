1
select  distinct vendname, count(productnumber) from product_vendors inner join vendors using(vendorid)
group by productnumber, vendname
2
select count(recipeclassdescription)from recipe_classes 
 where recipeclassdescription = 'Main course' group by recipeclassdescription
3
select teamname, bowlerlastname from bowlers inner join teams using (teamid) where teamid in (3, 4, 5) 
and bowlerlastname like 'H%'
4
select recipetitle from recipes where notes is null
group by recipetitle