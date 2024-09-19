drop procedure if exists seats_available;

DELIMITER $$
CREATE PROCEDURE seats_available(IN br_code INT, IN start_date DATE, IN end_date DATE,OUT available_seats int(4))
BEGIN 
Select tr_maxseats - count(r.res_tr_id) into available_seats
	FROM trip t
    JOIN branch b ON b.br_code = t.tr_br_code
    JOIN reservation r ON t.tr_id = r.res_tr_id
    WHERE (b.br_code = br_code AND t.tr_departure = start_date AND t.tr_return=end_date)
    GROUP BY t.tr_id;
END $$
DELIMITER ;
