-- Project0506.sql
-- 6.	For each age group (year) among customers, list the average 
--  ride duration among all trips customers of that age group took.  
SELECT TOP 10 (2019-BirthYear) AS Age, AVG(TripDuration) AS AverageTripDurationPerAgeGroup
FROM Trips
INNER JOIN Users
ON Trips.UserID = Users.UserID 
GROUP BY (2019-BirthYear)
ORDER BY AverageTripDurationPerAgeGroup DESC ;