--Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
--and their respective average city populations (CITY.Population) rounded down to the nearest integer.

--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.


select ct.continent,floor(avg(c.population)) from country ct
join city c on ct.code=c.countrycode
group by ct.continent;
