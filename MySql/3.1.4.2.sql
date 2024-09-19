drop trigger if exists apotropi_allagis_hmerominias;

DELIMITER $$
CREATE TRIGGER apotropi_allagis_hmerominias
BEFORE UPDATE ON event
FOR EACH ROW
BEGIN
DECLARE reservation_count INT DEFAULT 0;
SELECT COUNT(*) INTO reservation_count
FROM reservation
INNER JOIN event
ON reservation.res_tr_id = event.ev_tr_id
WHERE event.ev_tr_id = OLD.ev_tr_id;

IF reservation_count > 0 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Dysthxws den epitrepetai h allagh hmeromhnias. ';
END IF;
END$$
DELIMITER ;


UPDATE event SET ev_start = '2024-06-01', ev_end = '2024-06-05' WHERE ev_tr_id = 1;