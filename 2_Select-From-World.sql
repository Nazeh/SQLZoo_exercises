/* 1-Just to observe the table */
SELECT name, continent, population FROM world;

/* 2-Show the name for the countries that have a population of 
   at least 200 million */
SELECT name FROM world
WHERE population >= 200000000;

/* 3-Give the name and the per capita GDP for those countries 
   with a population of at least 200 million. */
SELECT name, gdp/population AS 'per capita GDP' FROM world
WHERE population >= 200000000;

/* 4-Show the name and population in millions 
   for the countries of the continent 'South America'. */
SELECT name, population/1000000 AS 'population Mil.' FROM world
WHERE continent = 'South America'

/* 5-Show the name and population for France, Germany, Italy */
SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy');

/* 6-Show the countries which have a name that 
   includes the word 'United' */
SELECT name FROM world
WHERE name LIKE '%United%';

/* 7-Show the countries 
   that are big by area or big by population. */
SELECT name, population, area FROM world
WHERE area > 3000000 OR population > 250000000;
   
/* 8-Show the countries that are big by area or 
   big by population but not both */
SELECT name, population, area FROM world
WHERE area > 3000000 XOR population > 250000000;
   
/* 9-For South America show population in millions and 
   GDP in billions both to 2 decimal places. */
SELECT name, ROUND(population/1000000,2) AS 'population Mil.',
       ROUND(gdp/1000000000,2) AS 'GDP Bil.' FROM world;

/* 10-show per-capita GDP for the trillion dollar 
   countries to the nearest $1000. */

/* 11-Show the name and capital where 
   the name and the capital have 
   the same number of characters. */

/* 12-Show the name and the capital where the first letters of 
   each match. Don't include countries 
   where the name and the capital are the same word. */

/* 13-Find the country that has all the vowels 
   and no spaces in its name. */
