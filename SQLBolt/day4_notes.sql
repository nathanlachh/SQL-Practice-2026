-- SQL Lesson 13: Inserting Rows
-- Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
INSERT INTO movies
VALUES (4, "Toy Story 4", "John Lasseter", 2015, 90);
-- Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table. 
INSERT INTO boxoffice
VALUES (4, 8.7, 340000000, 270000000);

-- SQL Lesson 14: Updating Rows
-- Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich 
UPDATE movies
SET title = "Toy Story 3",
    director = "Lee Unkrich"
WHERE id = 11;

-- SQL Lesson 15: Deleting Rows
-- This database is getting too big, lets remove all movies that were released before 2005.
DELETE FROM movies
WHERE year < 2005;

-- SQL Lesson 16: Creating Tables
-- Create a new table named Database with the following columns:
-- Name A string (text) describing the name of the database
-- Version A number (floating point) of the latest version of this database
-- Download_count An integer count of the number of times this database was downloaded
-- This table has no constraints. 
CREATE TABLE database (
    name TEXT,
    version FLOAT,
    download_count INTEGER,
);

-- SQL Lesson 17: Altering Tables
-- Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in. 
ALTER TABLE movies
ADD Aspect_ratio FLOAT;
-- Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English. 
ALTER TABLE movies
ADD language TEXT
  DEFAULT English;

-- SQL Lesson 18: Dropping tables;
-- Drop the movies table
DROP TABLE movies;
