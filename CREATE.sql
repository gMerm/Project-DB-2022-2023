CREATE TABLE branch(
	br_code int(11) NOT NULL,
	br_street varchar(30) DEFAULT "unknown",
	br_num int(4) DEFAULT NULL,
	br_city VARCHAR(30) DEFAULT "unknown",
	PRIMARY KEY(br_code)
);
	
CREATE TABLE phones(
	ph_br_code int(11) NOT NULL,
	ph_number char(10) NOT NULL,
	PRIMARY KEY(ph_br_code, ph_number),	
	CONSTRAINT foreign_ph_br_code FOREIGN KEY (ph_br_code) REFERENCES branch(br_code)
	ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE worker(
	wrk_AT char(10) NOT NULL,
	wrk_name varchar(20) DEFAULT "unknown",
	wrk_lname varchar(20) DEFAULT "unknown",
	wrk_salary float(7,2),
	wrk_br_code int(11), 													
	PRIMARY KEY(wrk_AT),
	CONSTRAINT foreign_wrk_br_code FOREIGN KEY (wrk_br_code) REFERENCES branch(br_code)
	ON DELETE CASCADE ON UPDATE CASCADE	
);

CREATE TABLE driver(
	drv_AT char(10) NOT NULL,
	drv_license ENUM('A', 'B', 'C', 'D'),
	drv_route ENUM('LOCAL', 'ABROAD'),
	drv_experience tinyint(4), 
	PRIMARY KEY(drv_AT),
	CONSTRAINT foreign_drv_AT FOREIGN KEY (drv_AT) REFERENCES worker(wrk_AT)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE admin(
	adm_AT char(10) NOT NULL,
	adm_type ENUM('LOGISTICS', 'ADMINISTRATIVE', 'ACCOUNTING'),
	adm_diploma varchar(200),
	PRIMARY KEY(adm_AT),
	CONSTRAINT foreign_adm_AT FOREIGN KEY (adm_AT) REFERENCES worker(wrk_AT)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE guide(
	gui_AT char(10) NOT NULL,
	gui_cv text,
	PRIMARY KEY(gui_AT),
	CONSTRAINT foreign_gui_AT FOREIGN KEY (gui_AT) REFERENCES worker(wrk_AT)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE languages(
	lng_gui_AT char(10) NOT NULL,
	lng_language varchar(30) NOT NULL,
	PRIMARY KEY(lng_gui_AT, lng_language),
	CONSTRAINT foreign_lang_gui_AT FOREIGN KEY (lng_gui_AT) REFERENCES guide(gui_AT)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE manages(
	mng_adm_AT char(10) NOT NULL,
	mng_br_code int(11) NOT NULL,
	PRIMARY KEY(mng_adm_AT, mng_br_code),
	CONSTRAINT foreign_mng_adm_AT FOREIGN KEY (mng_adm_AT) REFERENCES admin(adm_AT)
	ON DELETE CASCADE ON UPDATE CASCADE,		
	CONSTRAINT foreign_mng_br_code FOREIGN KEY (mng_br_code) REFERENCES branch(br_code)
	ON DELETE CASCADE ON UPDATE CASCADE	
);

CREATE TABLE trip(
	tr_id int(11) NOT NULL AUTO_INCREMENT,
	tr_departure datetime DEFAULT NULL,
	tr_return datetime DEFAULT NULL,
	tr_maxseats tinyint(4) DEFAULT NULL,
	tr_cost float(7,2) DEFAULT NULL,
	tr_br_code int(11) NOT NULL,
	tr_gui_AT char(10) NOT NULL,
	tr_drv_AT char(10) NOT NULL,
	PRIMARY KEY(tr_id),
	CONSTRAINT foreign_tr_br_code FOREIGN KEY (tr_br_code) REFERENCES branch(br_code)
	ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT foreign_tr_gui_AT FOREIGN KEY (tr_gui_AT) REFERENCES guide(gui_AT)
	ON DELETE CASCADE ON UPDATE CASCADE,	
	CONSTRAINT foreign_tr_drv_AT FOREIGN KEY (tr_drv_AT) REFERENCES driver(drv_AT)
	ON DELETE CASCADE ON UPDATE CASCADE		
);

CREATE TABLE event(
	ev_tr_id int(11) NOT NULL AUTO_INCREMENT,
	ev_start datetime NOT NULL,
	ev_end datetime DEFAULT NULL,
	ev_descr text,
	PRIMARY KEY (ev_tr_id, ev_start),
	CONSTRAINT foreign_ev_tr_id FOREIGN KEY (ev_tr_id) REFERENCES trip(tr_id)
	ON DELETE CASCADE ON UPDATE CASCADE		
);

CREATE TABLE reservation(
	res_tr_id int(11) NOT NULL,
	res_seatnum tinyint(4) NOT NULL,
	res_name varchar(20) DEFAULT "unknown",
	res_lname varchar(20) DEFAULT "unknown",
	res_isadult ENUM('ADULT', 'MINOR'),
	PRIMARY KEY (res_tr_id, res_seatnum),
	CONSTRAINT foreign_res_tr_id FOREIGN KEY (res_tr_id) REFERENCES trip(tr_id)
	ON DELETE CASCADE ON UPDATE CASCADE	
);

CREATE TABLE destination(
	dst_id int(11) NOT NULL AUTO_INCREMENT,
	dst_name varchar(50) DEFAULT "unknown",
	dst_descr text,
	dst_rtype ENUM('LOCAL', 'ABROAD'),
	dst_language varchar(30) DEFAULT "unknown",
	dst_location int(11) NOT NULL,
	PRIMARY KEY (dst_id),
	CONSTRAINT foreign_dst_location FOREIGN KEY (dst_location) REFERENCES destination(dst_id)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE travel_to(
	to_tr_id int(11) NOT NULL, 
	to_dst_id int(11) NOT NULL,
	to_arrival datetime DEFAULT NULL,
	to_departure datetime DEFAULT NULL,
	PRIMARY KEY(to_tr_id, to_dst_id),
	CONSTRAINT foreign_to_dst_id FOREIGN KEY (to_dst_id) REFERENCES destination(dst_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT foreign_to_tr_id FOREIGN KEY (to_tr_id) REFERENCES trip(tr_id)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IT_worker(
	IT_AT char(10) NOT NULL,
	password varchar(10) DEFAULT "password",
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	PRIMARY KEY(IT_AT),
	CONSTRAINT foreign_IT_AT FOREIGN KEY (IT_AT) REFERENCES worker(wrk_AT)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE offers(
	id_prosforas int(11) NOT NULL AUTO_INCREMENT,
	possible_start DATE NOT NULL,
	possible_end DATE NOT NULL,
	cost_per_human float(7,2) NOT NULL,
	destination_id int(11) NOT NULL,
	PRIMARY KEY(id_prosforas),
	UNIQUE(id_prosforas),
	CONSTRAINT foreign_destination_id FOREIGN KEY (destination_id) REFERENCES destination(dst_id)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE reservation_offers(
	id_kratisis_prosforas int(11) AUTO_INCREMENT,
	pelatis_lname varchar(20) NOT NULL,
	pelatis_first_name varchar(20) NOT NULL,
	offer_id int(11) NOT NULL,
	prokatavoli float(7,2) NOT NULL,
	PRIMARY KEY(id_kratisis_prosforas),
	CONSTRAINT foreign_offer_id FOREIGN KEY (offer_id) REFERENCES offers(id_prosforas)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE log(
	arithmos_log int(11) AUTO_INCREMENT,
	energeia ENUM('INSERT', 'UPDATE', 'DELETE'),
	pinakas ENUM('trip', 'reservation', 'event', 'travel_to', 'destination'),
	id_IT_worker char(10) NOT NULL,
	PRIMARY KEY(arithmos_log),
	CONSTRAINT foreign_id_IT_worker FOREIGN KEY (id_IT_worker) REFERENCES IT_worker(IT_AT)
	ON DELETE CASCADE ON UPDATE CASCADE	
);

CREATE TABLE login_credentials(
	login_username varchar(20),
	login_password varchar(10),
	PRIMARY KEY(login_password)
);


CREATE table temp1_trips_check(
	
	ID INT AUTO_INCREMENT,
	anaxorisi DATE,
	epistrofi DATE,
	sinolo_kratisewn INT,
	kostos FLOAT(7,2),
	megistes_theseis INT,
	free_theseis INT,
	onoma_odigou VARCHAR(20),
	eponymo_odigou VARCHAR(20),
	onoma_guide VARCHAR(20),
	eponymo_guide VARCHAR(20),
	PRIMARY KEY(ID)
);

CREATE table temp2_epitheta(
	
	ID INT AUTO_INCREMENT,
	onoma VARCHAR(20),
	eponymo VARCHAR(20),
	offer INT,
	PRIMARY KEY(ID)
);







