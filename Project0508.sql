-- Project0508.sql
-- 8.	For each hour of the day, list the percentage of bikes checked out during --  that hour relative to the other hours of the day.
SELECT StartingHour, ROUND((COUNT(BikeID)1.0/(SELECT COUNT(*) FROM Trips)*1.0)*100w.0,2) AS Percentage
FROM Trips
GROUP BY StartingHour;