-- Project0505.sql
-- 5.	For each customer list the number of trips they have taken.
--   Restrict the results to the 10 users who have taken the most trips.
SELECT TOP 10 U1.UserID, COUNT(Trips.UserID) AS NumTrips
FROM Trips, Users U1
WHERE U1.UserID = Trips.UserID
GROUP BY U1.UserID
ORDER BY NumTrips DESC, UserID ASC;