drop procedure if exists lname_insert;


delimiter  $$

create procedure lname_insert(lname varchar(20))
Begin 
declare blname char(20);
declare bname char(20);
declare bpromo_code char(10);
DECLARE not_found INT default 0;
DECLARE bcursor CURSOR FOR
	SELECT name,last_name,promo_code_res
    FROM reservation_offers
	WHERE lname=last_name
    group by bpromo_code;

	DECLARE CONTINUE HANDLER FOR NOT FOUND
	SET not_found=1;
	
	OPEN bcursor;
	
	REPEAT
		FETCH bcursor INTO bname,blname,bpromo_code;
		SELECT name,last_name,promo_code_res
		FROM reservation_offers
		WHERE lname=last_name;
        
	UNTIL(not_found=1)
	END REPEAT;
	
	CLOSE bcursor;




End $$

delimiter ;

CALL lname_insert("Tate");