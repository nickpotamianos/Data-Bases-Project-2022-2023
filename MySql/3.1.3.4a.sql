drop procedure if exists payment_insert;


delimiter  $$

create procedure payment_insert(var1 float(7.2), var2 float (7.2))
Begin 
declare bname char(20);
declare blname char(20);
DECLARE not_found INT default 0;
DECLARE bcursor CURSOR FOR
	SELECT name,last_name
    FROM reservation_offers
	WHERE down_payment between var1 AND var2;

	DECLARE CONTINUE HANDLER FOR NOT FOUND
	SET not_found=1;
	
	OPEN bcursor;
	
	REPEAT
		FETCH bcursor INTO bname,blname;
		SELECT name, last_name
		FROM reservation_offers
		WHERE down_payment between var1 AND var2;
    
	UNTIL(not_found=1)
	END REPEAT;
	
	CLOSE bcursor;




End $$

delimiter ;

CALL payment_insert("50","200");
