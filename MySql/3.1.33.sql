drop procedure if exists delete_admin;

DELIMITER $$

create procedure delete_admin (IN name char(20),IN lname char(20) )
BEGIN
    DECLARE worker_type enum('LOGISTICS','ADMINISTRATIVE','ACCOUNTING');
	SELECT adm_type INTO worker_type
    FROM worker w join admin a 
    on w.wrk_AT=a.adm_AT
    WHERE name = wrk_name AND wrk_lname = lname;
    
    IF worker_type IN ('LOGISTICS', 'ACCOUNTING')  THEN
    DELETE w, a
	FROM worker w
	JOIN admin a ON w.wrk_AT = a.adm_AT
	WHERE name=wrk_name AND lname=wrk_lname ;
	SELECT CONCAT(name, ' ', lname, ' Admin deleted deleted.') AS message ;
    ELSEIF worker_type = 'ADMINISTRATIVE' THEN
        SELECT CONCAT(name, ' ', lname, ' is Administrative of a branch and cannot be deleted.') AS message ;
	ELSE 
    SELECT CONCAT(name, ' ', lname, ' is not an admin.') AS message ;
	END IF;
END $$
DELIMITER ;

call delete_admin("Jordan","Peterson");