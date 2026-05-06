-- SQL Lesson 10: Queries with Aggregates (Pt.1)
-- For each role, find the average number of years employed by employees in that role
SELECT role, AVG(Years_Employed) AS average_years
FROM employees
GROUP BY role;

-- SQL Lesson 11: Queries with Aggregates (Pt.2)
-- Find the total number of years employed by all Engineers
SELECT role, SUM(Years_Employed) AS Total_Years
FROM employees
GROUP BY role
HAVING role = 'Engineer';

-- SQL Lesson 12: Order of execution of a Query
-- Find the total domestic and international sales that can be attributed to each director
SELECT Director, SUM(Domestic_sales + International_sales) AS total_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
    GROUP BY Director
