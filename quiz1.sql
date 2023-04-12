select count(recipeclassdescription) from recipe_classes 
 where recipeclassdescription = 'Main course'

select recipetitle from recipes where recipetitle not like notes

select  distinct vendname, count(productnumber) from product_vendors inner join vendors using(vendorid)
group by productnumber, vendname