/* 
SQL Mastery: Day 1
Practicing the core syntax for data retrieval and filtering.
Bridging the gap between R (Econometrics) and SQL production code.
*/

-- SQL Lesson 1: SELECT queries
-- Find the title and year of each film
SELECT title, year
FROM movies;

-- SQL Lesson 2: Queries with Constraints (pt.1)
-- Finding movies not released in years between 2000 and 2010
SELECT title, year
FROM movies
WHERE year BETWEEN 2000 and 2010;

-- SQL Lesson 3: Queries with Constraints (pt.2)
-- Find all the movies not directed by John Lasseter
SELECT title, director
FROM movies
WHERE director != "John Lasseter";

-- SQL Lesson 4: Filtering and sorting query results
-- List the last four Pixar movies released (ordered from most recent to least)
SELECT DISTINCT director
FROM movies
ORDER BY director ASC;
