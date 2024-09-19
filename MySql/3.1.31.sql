
Drop procedure if exists addDriver;

DELIMITER $$

CREATE PROCEDURE addDriver(IN driverID char(10), IN fname varchar(20), IN lname varchar(20), IN salary float, IN driverlicense enum('A','B','C','D'), IN routeType enum('LOCAL','ABROAD'), IN monthsExp tinyint) 
BEGIN  
    DECLARE minDrivers int;  
    DECLARE minBranchID int;   

    SELECT MIN(numDrivers) INTO minDrivers
    FROM (SELECT br_code, COUNT(drv_AT) as numDrivers
          FROM driver d 
          JOIN worker w ON w.wrk_AT=d.drv_AT
          JOIN branch b ON b.br_code=wrk_br_code
          GROUP BY br_code) as temp;

    SELECT br_code INTO minBranchID
    FROM (SELECT br_code, COUNT(drv_AT) as numDrivers
          FROM driver d 
          JOIN worker w ON w.wrk_AT=d.drv_AT
          JOIN branch b ON b.br_code=wrk_br_code
          GROUP BY br_code) as temp
    WHERE numDrivers = minDrivers
    LIMIT 1;

    INSERT INTO worker (wrk_AT, wrk_name, wrk_lname, wrk_salary, wrk_br_code) 
    VALUES (driverID, fname, lname, salary, minBranchID);  

    INSERT INTO driver (drv_AT, drv_license, drv_route, drv_experience) 
    VALUES (driverID, driverlicense, routeType, monthsExp); 
END $$

DELIMITER ;


CALL addDriver('AM111112', 'Dionisis', 'Dionysiou', 1000.00, 'B', 'ABROAD', 6);
/*AFTER THE INSERT, OUTPUT:*/
SELECT br_code, COUNT(drv_AT) as numDrivers 
  FROM driver d join   worker w  
  ON w.wrk_AT=d.drv_AT
  join branch b 
  ON b.br_code=wrk_br_code
  GROUP BY br_code
  Order by br_code;