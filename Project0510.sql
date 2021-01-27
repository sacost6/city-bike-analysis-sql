-- Project0510.sql
-- 10.	Compute for each trip the average speed of the bicyclist, by taking the 
--  distance travelled computed in the previous question (which is in miles) and 
--  divide by the length in hours (the length is stored in seconds).  For the 10 
--  fastest trips, return the trip ID, bike ID, and the speed as mph.
SELECT TOP 10 TripID, BikeID,
    SQRT(SQUARE(69*((SELECT Latitude FROM Stations WHERE StationID = FromStation) - (SELECT Latitude FROM Stations WHERE StationID = ToStation))) + 
    SQUARE(52*((SELECT Longitude FROM Stations WHERE StationID = FromStation) - (SELECT Longitude FROM Stations WHERE StationID = ToStation)))) / NULLIF((TripDuration * 1.0/3600 * 1.0), 0.0)
AS mph
FROM Trips ORDER BY MPH DESC; 