/*
--SELECT * FROM secondrenamedoc
SELECT * FROM firstrenamedoc
--SELECT * FROM secondrenamedoc
SELECT * FROM firstrenamedoc
SELECT * FROM firstrenamedoc
SELECT * FROM secondrenamedoc
SELECT * FROM PortfolioProject..secondrenamedoc
SELECT COUNT(*) FROM firstrenamedoc
SELECT COUNT (*) FROM secondrenamedoc
SELECT COUNT (*) FROM secondrenamedoc AS secondtablecount

--SELECT country_code, Date_reported, AFR
*/

select * 
FROM PortfolioProject..firstrenamedoc

-- Looking for Death cummullative percentage

SELECT Name, WHO_Region, Cases_cumulative_total, Deaths_cumulative_total, Deaths_cumulative_total_per_100000_population, (Deaths_cumulative_total/ NULLIF(Cases_cumulative_total, 0))*100 as DeathPercentage
FROM PortfolioProject..firstrenamedoc
ORDER BY 1,2

--Looking for country with the highest Death rate compared to Population

SELECT Name, Max(Deaths_cumulative_total) AS HighestInfectionCount, Cases_cumulative_total
FROM PortfolioProject..firstrenamedoc
GROUP BY Name, Who_Region, Cases_cumulative_total
ORDER BY 1,2

-- Showing countries with the highest death count per population
Select Name, Max(Deaths_cumulative_total_per_100000_population)f
FROM PortfolioProject..firstrenamedoc
Group by Name


--  Let's BREAK THINGS DOWN BY CONTINENT
SELECT WHO_region, MAX(Cast( Deaths_newly_reported_in_last_7_days_per_100000_population as int)) as DeathsMax
FROM PortfolioProject..firstrenamedoc
Group by WHO_Region

SELECT *
FROM PortfolioProject..secondrenamedoc sec
JOIN PortfolioProject..firstrenamedoc fir
ON fir.Name = sec.Country
AND fir.Who_Region = sec.Who_Region


SELECT *
FROM PortfolioProject..secondrenamedoc
