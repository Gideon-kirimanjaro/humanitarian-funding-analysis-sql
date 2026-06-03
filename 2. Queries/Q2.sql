-------------------------------------------------------------------------------------Q2

-- Query description
-- Funding distribution by sector.
-- Aggregates total funding by sector, ranks the top 5 highest-funded sectors,
-- and calculates each sector's percentage contribution to the overall funding total.
-- Useful for identifying where the largest share of funding is concentrated.

-------------------------------------------------------------------------------------Query
SELECT 
TOP 5 
typeName AS Sector, 
SUM(funding) AS sum_of_funding,
ROUND(SUM(funding)*100 /SUM(SUM(funding))OVER(),2)  AS funding_percentage

FROM Funding
GROUP BY typeName
ORDER BY sum_of_funding DESC