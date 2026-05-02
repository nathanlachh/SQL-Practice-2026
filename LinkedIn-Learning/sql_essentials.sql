/* 
SQL Mastery: Day 1
LinkedIn Learning
*/

/*
Composing Queries
TASK: Generate list of track name alongside their unit prices
 */
SELECT 
    t.Name AS "Track Name", 
    t.UnitPrice AS Price
FROM 
    Track AS t
ORDER BY 
    t.Name
LIMIT 20;

/*
Discovering insights in Data
TASK: Write and SQL query that selects track names, composer, and unit prices and categorizes each track based on its price
Price Categories
Budget: Tracks priced at $0.99 or less
Regular: Tracks priced between $1.00 and $1.49
Premium: Tracks priced betrween $1.50 and $1.99
Exclusive: Tracks priced above $1.99
Order by UNITPRICE in ascending order
 */
SELECT 
    t.NAME AS "Track Name",
    t.COMPOSER AS Composer,
    t.UNITPRICE AS Price,
    CASE
    WHEN t.UNITPRICE < 1.00 THEN 'Budget'
    WHEN t.UNITPRICE BETWEEN 1.00 AND 1.49 THEN 'Regular'
    WHEN t.UNITPRICE BETWEEN 1.50 AND 1.99 THEN 'Premium'
    ELSE 'Exclusive'
    END AS PriceCategory
FROM Track AS t
ORDER BY t.UNITPRICE ASC;
