-- Databricks notebook source
USE brightlearn.data;

SELECT * FROM retail_sales_dataset;

--Which product categories generated more than 150,000 in total sales? 
SELECT `Product Category`,
       SUM(`Total Amount`) AS Total_sales
       FROM retail_sales_dataset
       GROUP BY `Product Category`
       HAVING Total_sales > 150000;

       SELECT `Product Category`,
       SUM(`Total Amount`) AS Total_sales
       FROM retail_sales_dataset
       GROUP BY `Product Category`
       HAVING SUM(`Total Amount`) > 150000;

     
-- Which genders generated an average transaction value above 300? 

SELECT Gender,
       AVG(`Total Amount`) AS Total_Average
FROM retail_sales_dataset
GROUP BY Gender
HAVING Total_Average > 300;

-- Find the top 5 customers with the highest total spending.

SELECT `Customer ID`,
       `Total Amount`
       FROM retail_sales_dataset
       ORDER BY `Total Amount`DESC LIMIT 5; 

-- Which product categories have more than 300 transactions? 

SELECT * FROM retail_sales_dataset
WHERE `Total Amount`>300;

--What is the highest sale amount recorded for each product category?

SELECT `Product Category`,
      MAX (`Total Amount`) AS Maximun_sale
FROM retail_sales_dataset
GROUP BY `Product Category`;

--Find the minimum sale amount for each gender. 

SELECT Gender,
       MIN(`Total Amount`) AS Minimum_sale
FROM retail_sales_dataset
GROUP BY Gender;
  
-- Show categories where the average quantity sold is greater than 2.

SELECT `Product Category` ,
       AVG(`Quantity`) AS Average_quantity
FROM retail_sales_dataset
GROUP BY `Product Category`
HAVING  Average_quantity > 2;

-- Find the total sales for customers aged between 25 and 40 who purchased Beauty or Clothing products.

SELECT `Product Category`,
       SUM(`Total Amount`) AS Total_sales
FROM retail_sales_dataset
WHERE Age BETWEEN 25 AND 40  (`Product Category` = 'Beauty' OR 'Clothing')
GROUP BY `Product Category`;


-- Which product categories have a maximum sale amount greater than 1000? 

SELECT `Product Category`,
        MAX(`Total Amount`) AS Maximum_sale
FROM retail_sales_dataset
GROUP BY `Product Category`
HAVING Maximum_sale > 1000;

-- Show the top 3 categories by average sales value, excluding customers under 25.

SELECT `Product Category`,
        AVG(`Total Amount`) AS Average_sale
FROM retail_sales_dataset
GROUP BY `Product Category`
HAVING Average_sale < 25;

