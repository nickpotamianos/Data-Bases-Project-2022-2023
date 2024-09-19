/*AFTER THE INSERT, OUTPUT:(run the 3.1.31 first)*/
SELECT br_code, COUNT(drv_AT) as numDrivers 
  FROM driver d join   worker w  
  ON w.wrk_AT=d.drv_AT
  join branch b 
  ON b.br_code=wrk_br_code
  GROUP BY br_code
  Order by br_code;