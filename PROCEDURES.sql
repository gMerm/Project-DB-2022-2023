-- 3.1.3.1 Procedure: 

DELIMITER $
CREATE PROCEDURE odigos(IN tautotita char(10), IN onoma varchar(20), IN eponymo varchar(20), IN misthos float(7,2), IN adeia ENUM('A', 'B', 'C', 'D'), IN dromologio ENUM('LOCAL', 'ABROAD'), IN empeiria tinyint(4))
BEGIN
	DECLARE branch_code int(11);
	DECLARE noumero INT; 
	
	SELECT MIN(num) INTO noumero
	FROM (SELECT COUNT(dr.drv_AT) num FROM branch b INNER JOIN worker w ON b.br_code=w.wrk_br_code
	INNER JOIN driver dr ON w.wrk_AT=dr.drv_AT
	GROUP BY b.br_code) AS sub;
	
	SELECT branch.br_code INTO branch_code
	FROM branch INNER JOIN worker ON branch.br_code=worker.wrk_br_code
	INNER JOIN driver ON worker.wrk_AT=driver.drv_AT
	GROUP BY branch.br_code HAVING count(driver.drv_AT)=noumero;
	
	select noumero, branch_code;
	INSERT INTO worker VALUES(tautotita, onoma, eponymo, misthos, branch_code);
	INSERT INTO driver VALUES(tautotita, adeia, dromologio, empeiria);
	SELECT 'Eginan ta insert';
END$
DELIMITER ;

-- 3.1.3.2 Procedure: 
drop procedure if exists trips_check;
DELIMITER $
CREATE PROCEDURE trips_check(IN katastima int(11), IN date_ena DATE, IN date_dyo DATE)
BEGIN
	DECLARE imerominia_anaxorisis DATE;         -- imerominia anaxorisis ekastote trip
	DECLARE kratiseis INT;						-- gia na krataw ta reservations kai na vriskw kenes theseis
	DECLARE imerominia_epistrofis DATE;
	DECLARE kostos float(7,2);
	DECLARE megistes_theseis tinyint(4);
	DECLARE free_theseis tinyint(4);
	DECLARE onoma_odigou varchar(20);
	DECLARE eponymo_odigou varchar(20);
	DECLARE onoma_guide varchar(20);
	DECLARE eponymo_guide varchar(20);
	
	DECLARE epistrofi_trip_id int(11);			-- gia ton cursor
	DECLARE flag INT DEFAULT 0;
	
	DECLARE trip_cursor CURSOR FOR
	SELECT tr_id FROM trip WHERE trip.tr_br_code=katastima;
	
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag=1;
	OPEN trip_cursor;
	
	REPEAT 
		FETCH trip_cursor INTO epistrofi_trip_id;
		IF(flag=0) THEN
			SELECT tr_departure INTO imerominia_anaxorisis FROM trip WHERE tr_id=epistrofi_trip_id;						-- departure date kathe trip
			
			IF(imerominia_anaxorisis BETWEEN date_ena AND date_dyo) THEN												-- elegxos gia imerominies
				SELECT tr_departure, tr_return, tr_cost, tr_maxseats INTO imerominia_anaxorisis, imerominia_epistrofis, kostos, megistes_theseis 
				FROM trip WHERE tr_id=epistrofi_trip_id;
				
				SELECT COUNT(*) INTO kratiseis FROM reservation WHERE reservation.res_tr_id=epistrofi_trip_id;
				SET free_theseis=megistes_theseis-kratiseis;
				
				SELECT worker.wrk_name, worker.wrk_lname INTO onoma_odigou, eponymo_odigou
				FROM worker INNER JOIN driver ON worker.wrk_AT=driver.drv_AT
				INNER JOIN trip ON driver.drv_AT=trip.tr_drv_AT
				WHERE trip.tr_id=epistrofi_trip_id;
				
				SELECT worker.wrk_name, worker.wrk_lname INTO onoma_guide, eponymo_guide
				FROM worker INNER JOIN guide ON worker.wrk_AT=guide.gui_AT
				INNER JOIN trip ON guide.gui_AT=trip.tr_gui_AT
				WHERE trip.tr_id=epistrofi_trip_id;
				
				SELECT imerominia_anaxorisis, imerominia_epistrofis, kratiseis, kostos, megistes_theseis, free_theseis, onoma_odigou, eponymo_odigou, onoma_guide, eponymo_guide;
			ELSE
				SELECT "Den yparxoun diathesima taksidia stis imerominies sas gia to sigkekrimeno branch";
			END IF;
			
		END IF;
	UNTIL(flag=1)
	END REPEAT;
	CLOSE trip_cursor;
END$	
DELIMITER ;

drop procedure if exists vasilias;
DELIMITER $
CREATE PROCEDURE vasilias(IN onoma varchar(20), IN eponymo varchar(20))
BEGIN
	DECLARE katastima INT;
	DECLARE onoma_administrator_katastimatos VARCHAR(25);
	DECLARE eponymo_administrator_katastimatos VARCHAR(25);
	DECLARE tautotita_eisodou char(10);

	SELECT worker.wrk_br_code INTO katastima FROM worker WHERE worker.wrk_name=onoma AND worker.wrk_lname=eponymo;
	
	SELECT worker.wrk_name, worker.wrk_lname INTO onoma_administrator_katastimatos, eponymo_administrator_katastimatos
	FROM worker INNER JOIN admin ON worker.wrk_AT=admin.adm_AT
	INNER JOIN manages ON admin.adm_AT=manages.mng_adm_AT
	INNER JOIN branch ON manages.mng_br_code=branch.br_code
	WHERE worker.wrk_br_code=katastima AND adm_type='ADMINISTRATIVE';
	
	SELECT worker.wrk_AT INTO tautotita_eisodou FROM worker WHERE worker.wrk_name=onoma AND worker.wrk_lname=eponymo;
	
	
	IF((onoma LIKE onoma_administrator_katastimatos) AND (eponymo LIKE eponymo_administrator_katastimatos)) THEN
		SELECT 'De mporei na ginei diagrafi tou administrator';
	ELSE
		DELETE FROM admin WHERE adm_AT=tautotita_eisodou;
		SELECT "Egine h diagrafi";
	END IF;
	
END$
DELIMITER ;	

drop procedure if exists kratiseis;
DELIMITER $
CREATE PROCEDURE kratiseis(IN timi_ena float(7,2), IN timi_dyo float(7,2))
BEGIN
	
	SELECT pelatis_lname, pelatis_first_name
	FROM reservation_offers 
	WHERE prokatavoli BETWEEN timi_ena AND timi_dyo;
	
END $
delimiter ;

CREATE INDEX onomata ON reservation_offers(pelatis_first_name, pelatis_lname);

-- 3.1.3.4b Procedure:	
drop procedure if exists epitheta;
DELIMITER $
CREATE PROCEDURE epitheta(IN eponymo varchar(20))
BEGIN
block1: BEGIN

		DECLARE epistrofi_first_name varchar(20);
		DECLARE flag1 INT DEFAULT 0;
	
		DECLARE bcursor CURSOR FOR
		SELECT pelatis_first_name FROM reservation_offers WHERE pelatis_lname=eponymo;
	
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag1=1;
		OPEN bcursor;
	
		REPEAT
			FETCH bcursor INTO epistrofi_first_name;

block2: BEGIN
		
		DECLARE epistrofi_offer varchar(20);
		DECLARE flag2 INT DEFAULT 0;
		
		DECLARE lcursor CURSOR FOR
		SELECT offer_id FROM reservation_offers where pelatis_lname=eponymo AND pelatis_first_name=epistrofi_first_name;
		
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag2=1;
		OPEN lcursor;
		
		REPEAT
			FETCH lcursor INTO epistrofi_offer;
			IF(flag1=0) THEN
				SELECT epistrofi_first_name, eponymo, epistrofi_offer;
				INSERT INTO temp2_epitheta VALUES(NULL, epistrofi_first_name, eponymo, epistrofi_offer);
			END IF;
			UNTIL(flag2=1)
		END REPEAT;
		
		CLOSE lcursor;
		END block2;
		
		UNTIL(flag1=1)
		END REPEAT;
	
		CLOSE bcursor;
		END block1;
END $
DELIMITER ;
			
			
-- hash:
CREATE INDEX onomata_offers ON reservation_offers(pelatis_first_name, pelatis_lname, offer_id);

--PROCEDURE GIA TRUNCATE KAI EKTYPWSH STO GUI
drop procedure if exists procedure_epitheta;
DELIMITER $
CREATE PROCEDURE procedure_epitheta()
BEGIN

SELECT * FROM temp2_epitheta;

TRUNCATE temp2_epitheta;

END$
delimiter ;

--PROCEDURE GIA TRUNCATE KAI EKTYPWSH STO GUI
drop procedure if exists procedure_trips_check;
DELIMITER $
CREATE PROCEDURE procedure_trips_check()
BEGIN

SELECT * FROM temp1_trips_check;

TRUNCATE temp1_trips_check;

END$
delimiter ;

-- PROCEDURE GIA MAXSEATS:

DELIMITER $
CREATE PROCEDURE elegxos(IN kodikos_trip INT, OUT flag INT)
BEGIN
DECLARE arithmos_kratisewn INT;
DECLARE megistes_theseis INT;
DECLARE theseis_pou_apomenoun INT;

SELECT COUNT(*) INTO arithmos_kratisewn 
FROM reservation
WHERE res_tr_id=kodikos_trip;

SELECT tr_maxseats INTO megistes_theseis
FROM trip WHERE tr_id=kodikos_trip;

SET theseis_pou_apomenoun = megistes_theseis - arithmos_kratisewn;

IF(theseis_pou_apomenoun > 0)
THEN 
SET flag=1;
ELSEIF(theseis_pou_apomenoun <=0)
THEN 
SET flag=0;
END IF;
END$
DELIMITER ;
