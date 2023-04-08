-- triggers: 
-- 3.1.4.3: den epitrepetai h meiwsh misthou enos ypallilou: 

CREATE TRIGGER elegxos_misthou BEFORE UPDATE ON worker 
FOR EACH ROW
BEGIN 
	IF(NEW.wrk_salary < OLD.wrk_salary)
	THEN
		SIGNAL SQLSTATE VALUE '45000'
		SET MESSAGE_TEXT="Den epitrepetai h meiwsh misthou!";
	END IF;
END$

-- 3.1.4.3: den epitrepetai allagi imerominas anaxwrisis, epistrofis kai allagi kostos an uparxoun kratiseis gia
-- sigkekrimeno taksidi

CREATE TRIGGER elegxos_kratisewn BEFORE UPDATE ON trip 
FOR EACH ROW
BEGIN	
	DECLARE kratiseis INT;
	DECLARE allages INT;
	IF(NEW.tr_departure <> OLD.tr_departure || NEW.tr_return <> OLD.tr_return || NEW.tr_cost <> OLD.tr_cost)
	THEN
		SELECT COUNT(*) INTO kratiseis FROM reservation WHERE res_tr_id=NEW.tr_id;
		IF(kratiseis >=1) 
		THEN
			SIGNAL SQLSTATE VALUE '45000'
			SET MESSAGE_TEXT="Den epitrepetai h allagi imerominias kai kostous giati uparxoun kratiseis";
		ELSEIF(kratiseis < 1)
		THEN 
			SET allages=1;
		END IF;
	END IF;
END$

-- 3.1.4.1:
-- triggers gia trip
--INSERT: 

DELIMITER $
CREATE TRIGGER log_INSERT_trip AFTER INSERT ON trip
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	
	SET branch_kodikos=NEW.tr_br_code;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'INSERT', 'trip', upeuthinos);
	
END $
DELIMITER ;

--DELETE: 
DELIMITER $
CREATE TRIGGER log_DELETE_trip AFTER DELETE ON trip
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	
	SET branch_kodikos=OLD.tr_br_code;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'DELETE', 'trip', upeuthinos);
	
END $
DELIMITER ;

--UPDATE:
DELIMITER $
CREATE TRIGGER log_UPDATE_trip AFTER UPDATE ON trip
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	
	SET branch_kodikos=OLD.tr_br_code;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'UPDATE', 'trip', upeuthinos);
	
END $
DELIMITER ;

-- triggers gia reservation:
--INSERT:

DELIMITER $
CREATE TRIGGER log_INSERT_reservation AFTER INSERT ON reservation
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE taksidi int(11);
	
	SET taksidi=NEW.res_tr_id;
	
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'INSERT', 'reservation', upeuthinos);
	
END $
DELIMITER ;

--DELETE: 
DELIMITER $
CREATE TRIGGER log_DELETE_reservation AFTER DELETE ON reservation
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE taksidi int(11);
	
	SET taksidi=OLD.res_tr_id;
	
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'DELETE', 'reservation', upeuthinos);
	
END $
DELIMITER ;

--UPDATE:
DELIMITER $
CREATE TRIGGER log_UPDATE_reservation AFTER UPDATE ON reservation
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE taksidi int(11);
	
	SET taksidi=OLD.res_tr_id;
	
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'UPDATE', 'reservation', upeuthinos);
	
END $
DELIMITER ;

-- triggers gia event:
-- INSERT:

DELIMITER $
CREATE TRIGGER log_INSERT_event AFTER INSERT ON event
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE taksidi int(11);
	
	SET taksidi=NEW.ev_tr_id;
	
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'INSERT', 'event', upeuthinos);
	
END $
DELIMITER ;

--DELETE: 
DELIMITER $	
CREATE TRIGGER log_DELETE_event AFTER DELETE ON event
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE taksidi int(11);
	
	SET taksidi=OLD.ev_tr_id;
	
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'DELETE', 'event', upeuthinos);
	
END $
DELIMITER ;

--UPDATE:
DELIMITER $	
CREATE TRIGGER log_UPDATE_event AFTER UPDATE ON event
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE taksidi int(11);
	
	SET taksidi=OLD.ev_tr_id;
	
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'UPDATE', 'event', upeuthinos);
	
END $
DELIMITER ;

-- triggers gia travel_to:
-- INSERT:

DELIMITER $
CREATE TRIGGER log_INSERT_travel_to AFTER INSERT ON travel_to
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE taksidi int(11);
	
	SET taksidi=NEW.to_tr_id;
	
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'INSERT', 'travel_to', upeuthinos);
	
END $
DELIMITER ;

--DELETE:
DELIMITER $
CREATE TRIGGER log_DELETE_travel_to AFTER DELETE ON travel_to
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE taksidi int(11);
	
	SET taksidi=OLD.to_tr_id;
	
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'DELETE', 'travel_to', upeuthinos);
	
END $
DELIMITER ;

--UPDATE:
DELIMITER $
CREATE TRIGGER log_UPDATE_travel_to AFTER UPDATE ON travel_to
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE taksidi int(11);
	
	SET taksidi=OLD.to_tr_id;
	
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'UPDATE', 'travel_to', upeuthinos);
	
END $
DELIMITER ;

-- triggers gia destination
--INSERT:

DELIMITER $
CREATE TRIGGER log_INSERT_destination AFTER INSERT ON destination
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE travel int(11);
	DECLARE taksidi int(11);
	
	SET travel=NEW.dst_location;
	SELECT to_tr_id INTO taksidi FROM travel_to WHERE to_dst_id=travel;
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'INSERT', 'destination', upeuthinos);
	
END $
DELIMITER ;

--DELETE:
DELIMITER $
CREATE TRIGGER log_DELETE_destination AFTER DELETE ON destination
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE travel int(11);
	DECLARE taksidi int(11);
	
	SET travel=OLD.dst_location;
	SELECT to_tr_id INTO taksidi FROM travel_to WHERE to_dst_id=travel;
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'DELETE', 'destination', upeuthinos);
	
END $
DELIMITER ;

--UPDATE:
DELIMITER $
CREATE TRIGGER log_UPDATE_destination AFTER UPDATE ON destination
FOR EACH ROW
BEGIN 
	DECLARE upeuthinos char(10);
	DECLARE branch_kodikos int(11);
	DECLARE travel int(11);
	DECLARE taksidi int(11);
	
	SET travel=OLD.dst_location;
	SELECT to_tr_id INTO taksidi FROM travel_to WHERE to_dst_id=travel;
	SELECT tr_br_code INTO branch_kodikos FROM trip WHERE tr_id=taksidi;
	
	SELECT wrk_AT INTO upeuthinos
	FROM worker
	INNER JOIN IT_worker ON worker.wrk_AT=IT_worker.IT_AT
	WHERE wrk_br_code=branch_kodikos;
	
	INSERT INTO log VALUES(NULL, 'UPDATE', 'destination', upeuthinos);
	
END $
DELIMITER ;




drop trigger if exists IT_worker_insert;
DELIMITER $
CREATE TRIGGER IT_worker_insert AFTER INSERT ON IT_worker
FOR EACH ROW
BEGIN
	DECLARE tautotita char(10);
	DECLARE pass varchar(10);
	
	SELECT wrk_lname INTO tautotita 
	FROM worker
	WHERE wrk_AT=new.IT_AT;

	SET pass = NEW.password;
	
	INSERT INTO login_credentials VALUES(tautotita, pass);
	
END $



DELIMITER $
CREATE TRIGGER zitoumeno BEFORE INSERT ON reservation 
FOR EACH ROW
BEGIN
DECLARE val INT;
CALL elegxos(NEW.res_tr_id, val);

IF(val=0) THEN
SIGNAL SQLSTATE VALUE '45000'
SET MESSAGE_TEXT = "Den yparxoun diathesimes theseis gia to sigkekrimeno taksidi!";
END IF;

END$
DELIMITER ;
