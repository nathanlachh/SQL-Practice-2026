-- SQL Lesson 6: Multi-table quieries with JOINs
-- Show the sales numbers for each movie that did better internationally rather than domestically 
-- Given two tables movies and box office 
SELECT title, domestic_sales, international_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

-- SQL Lesson 7: OUTER JOINs
-- List all buildings and the distinct employee roles in each building (including empty buildings)
-- Given two tables  with asymmetric data
SELECT DISTINCT building_name, role
FROM buildings
LEFT JOIN employees
    ON buildings.building_name = employees.building;

-- SQL Lesson 8: NULLs
-- Find the names of the buildings that hold no employees 
-- Given two tables  with asymmetric data
SELECT DISTINCT building_name
FROM buildings
LEFT JOIN employees
    ON buildings.building_name = employees.building
WHERE role IS NULL;

-- SQL Lesson 9: Learning with expressions
-- List all movies and their combined sales in millions of dollars
-- Given two tables  with asymmetric data
SELECT title, (domestic_sales + international_sales) / 1000000 AS combined_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

