drop procedure if exists trip_info;

DELIMITER $$
CREATE PROCEDURE trip_info(IN br_code INT, IN start_date DATE, IN end_date DATE)
BEGIN
declare tr_seats INT(4);
declare cost float(7,2);
declare maxseats tinyint(4);
declare reservations int(200);
declare departure date;
declare return_day date;
declare driver_name varchar(20);
declare driver_lname varchar(20);
declare guide_name varchar(20);
declare guide_lname varchar(20);
CALL seats_available(br_code, start_date, end_date, tr_seats);
    SELECT  w.wrk_name, w.wrk_lname into driver_name,driver_lname         
    FROM trip t
    JOIN branch b ON b.br_code=t.tr_br_code
    JOIN driver d ON t.tr_drv_AT = d.drv_AT
    JOIN worker w ON w.wrk_AT = d.drv_AT
	WHERE b.br_code = br_code AND t.tr_departure=start_date AND t.tr_return=end_date
    GROUP BY t.tr_id;
	
    SELECT  w.wrk_name,w.wrk_lname into guide_name,guide_lname           
    FROM trip t
    JOIN branch b ON b.br_code=t.tr_br_code
    JOIN guide g ON t.tr_gui_AT = g.gui_AT
    JOIN worker w ON w.wrk_AT = g.gui_AT
    WHERE b.br_code = br_code AND t.tr_departure=start_date AND t.tr_return=end_date
    GROUP BY t.tr_id;
    
    SELECT t.tr_cost,tr_maxseats,COUNT(r.res_tr_id),tr_departure ,t.tr_return into cost,maxseats,reservations,departure,return_day
    from trip t
    JOIN branch b ON b.br_code=t.tr_br_code 
    JOIN reservation r ON r.res_tr_id = t.tr_id
    WHERE b.br_code = br_code AND t.tr_departure=start_date AND t.tr_return=end_date
	GROUP BY t.tr_id;
    select cost as Trip_Cost,maxseats as Max_Seats,reservations as Reservations, tr_seats as Available_Seats,driver_name as Driver_Name,driver_lname as Driver_Lname,
    guide_name as Guide_Name,guide_lname as guide_lname,departure as Departure_Date , return_day as Return_Day;

  
END $$
DELIMITER ;
call trip_info(2, '2024-01-04', '2024-01-08');