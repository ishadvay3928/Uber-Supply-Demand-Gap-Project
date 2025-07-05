-- LOAD THE DATASET

DROP TABLE IF EXISTS UberRequestData;

CREATE TABLE UberRequestData (
    RequestId VARCHAR(20),
    PickupPoint VARCHAR(50),
    DriverId VARCHAR(20),
    Status VARCHAR(50),
    RequestTimestamp VARCHAR(30),
    DropTimestamp VARCHAR(30),
    Hour VARCHAR(5),
    Minute VARCHAR(5),
    Second VARCHAR(5)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Uber Request Clean Data.csv'
INTO TABLE UberRequestData
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(RequestId, PickupPoint, DriverId, Status, RequestTimestamp, DropTimestamp, Hour, Minute, Second);

-- Advance Quering 

-- Peak Hours with Highest Trip Cancellations
SELECT Hour, COUNT(*) AS cancellation_count
FROM uberrequestdata
WHERE Status = 'Cancelled'
GROUP BY Hour
ORDER BY cancellation_count DESC
LIMIT 5;

-- Driver Availability for Each Pickup Point
SELECT 
	 PickupPoint,
    COUNT(DriverId) AS available_drivers
FROM uberrequestdata
WHERE Status = 'Trip Completed'
GROUP BY PickupPoint;

-- Requests Without Assigned Drivers

SELECT *
FROM uberrequestdata
WHERE DriverId IS NULL;

-- Hourly Distribution of All Requests

SELECT 
    Hour,
    COUNT(*) AS total_requests
FROM uberrequestdata
GROUP BY Hour
ORDER BY Hour desc;

-- Top 5 Hours With Most “No Cars Available”
SELECT 
  Hour,
  COUNT(*) AS NoCarsCount
FROM UberRequestData
WHERE Status = 'No Cars Available' AND Hour != 'NA'
GROUP BY Hour
ORDER BY NoCarsCount DESC
LIMIT 5;

-- Most Common Status per Hour
SELECT Hour, Status, COUNT(*) AS count
FROM uberrequestdata
GROUP BY Hour, Status
ORDER BY Hour, count DESC;

-- Cancellation Rate per Pickup Point
SELECT 
    PickupPoint,
    ROUND(
        SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 
        2
    ) AS cancellation_rate_percentage
FROM uberrequestdata
GROUP BY PickupPoint;

-- Total Requests Per Day 
SELECT 
  DATE(STR_TO_DATE(RequestTimestamp, '%d-%m-%Y %H:%i:%s')) AS RequestDate,
  COUNT(*) AS TotalRequests
FROM UberRequestData
WHERE RequestTimestamp != 'NA'
GROUP BY RequestDate
ORDER BY RequestDate;

-- Number of Trips Completed by Each Driver
SELECT 
  DriverId,
  COUNT(*) AS CompletedTrips
FROM UberRequestData
WHERE Status = 'Trip Completed' AND DriverId != 'NA'
GROUP BY DriverId
ORDER BY CompletedTrips DESC;


-- Trip Completion % by Hour
SELECT 
  Hour,
  ROUND(SUM(CASE WHEN Status = 'Trip Completed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS CompletionRate
FROM UberRequestData
WHERE Hour != 'NA'
GROUP BY Hour
ORDER BY CompletionRate DESC;










