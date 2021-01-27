-- Project0504.sql
-- 4.	For each StationID, retrieve the number of trips taken 
-- from that station and to that station (as separate values).
SELECT TOP 10 StationID, 
    (SELECT COUNT(FromStation) FROM Trips WHERE FromStation = StationID) AS NumTripsFrom, 
    (SELECT COUNT(ToStation) FROM Trips WHERE ToStation = StationID) AS NumTripsTo
FROM Stations 
GROUP BY StationID
ORDER BY ((SELECT COUNT(FromStation) FROM Trips WHERE FromStation = StationID) +  (SELECT COUNT(ToStation) FROM Trips WHERE ToStation = StationID)) DESC, StationID ASC; 
