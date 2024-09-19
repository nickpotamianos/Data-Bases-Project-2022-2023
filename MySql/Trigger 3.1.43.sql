drop trigger if exists Newsalary;
/* Παρακάτω υλοποιούμε ένα trigger το οποίο  δεν θα επιτρέπει τη μείωση του μισθού ενός υπαλλήλου.
Συγκεκριμένα η μεταβλητή updatedsalary θέτει έναν καινιουριο μισθό σε έναν worker της βάσης δεδομένων.
Ωστόσο για να μην έχουμε έναν χαμηλότερο μισθό απο πριν χρησιμοποιούμε ένα if statement το οποίο 
καθορίζει άν ο NEW.wrk_salary που προσθέσαμε, είναι μικρότερος απο τον παλιό μισθό.ΑΝ είναι,
τότε αφήνει τον παλιό μισθό OLD.wrk_salarY ως μισθό του worker. */
DELIMITER $

	CREATE TRIGGER Newsalary BEFORE UPDATE ON worker
	FOR EACH ROW
	 BEGIN
	  SET @updatedsalary = NEW.wrk_salary;
	  IF NEW.wrk_salary < OLD.wrk_salary THEN
	   SET NEW.wrk_salary = OLD.wrk_salary;
	  END IF;
	END $
	DELIMITER ;

/* Παρακάτω επιλέγουμε σαν τιμή μια > του αρχικού μισθού  και βλέπουμε οτι γινεται update.Eαν ωστόσο προσπαθήσουμε με μια μικρότερη 
τότε η τιμή του μισθού δεν αλλαζει πράγμα που σημαίνει οτι λειτουργεί ορθά το trigger */

UPDATE worker
SET 
   wrk_salary = '1500.00'
WHERE
    wrk_AT = 'AN453827';

SELECT wrk_AT,wrk_salary, wrk_br_code
    from worker  
    WHERE
    wrk_AT = 'AN453827';