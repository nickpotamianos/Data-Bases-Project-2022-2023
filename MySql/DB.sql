DROP DATABASE IF EXISTS travel_agency;

CREATE DATABASE IF NOT EXISTS travel_agency;
use travel_agency;

 create table if not exists branch(
 br_code int(11) not null auto_increment,
 br_street varchar(30) default 'unknown' not null,
 br_num int(4) default '0' not null, 
 br_city varchar(30) default 'unknown' not null,
 primary key(br_code)
);
 
create table if not exists worker(
wrk_AT char(10) default 'unknown' not null,
wrk_name varchar(20) default 'unknown' not null,
wrk_lname varchar(20) default 'unknown' not null,
wrk_salary float(7,2) default '0' not null,
wrk_br_code int(11) not null,
primary key (wrk_AT),
CONSTRAINT workbrcode FOREIGN KEY (wrk_br_code) REFERENCES branch(br_code) 
ON UPDATE CASCADE ON DELETE CASCADE
);


create table if not exists it_manager (
  it_AT char(10) not null,
  password char(100) default 'password' not null,
  start_date date not null,
  end_date date,
  primary key (it_AT),
  CONSTRAINT itat FOREIGN KEY (it_AT) REFERENCES worker(wrk_AT)
    ON UPDATE CASCADE ON DELETE CASCADE
);

 create table if not exists guide(
gui_AT char(10) not null,
gui_cv text not null,
primary key (gui_AT),
CONSTRAINT guiat FOREIGN KEY (gui_AT) REFERENCES worker(wrk_AT) 
ON UPDATE CASCADE ON DELETE CASCADE
);


create table if not exists driver(
drv_AT char(10) not null,
drv_license enum('A','B','C','D'),
drv_route enum('LOCAL','ABROAD'),
drv_experience tinyint(4) default '0' not null,
primary key(drv_AT),
CONSTRAINT drvAT FOREIGN KEY (drv_AT) REFERENCES worker(wrk_AT) 
ON UPDATE CASCADE ON DELETE CASCADE
);

create table if not exists log (
  login_AT char(10) not null,
  login_id int(11) not null auto_increment,
  login_activity varchar(500) not null,
  primary key (login_id),
  CONSTRAINT login_AT FOREIGN KEY (login_AT) REFERENCES it_manager(it_AT)
    ON UPDATE CASCADE ON DELETE CASCADE
);

create table if not exists trip(
tr_id int(11) not null auto_increment ,
tr_departure date not null, 
tr_return date not null,
tr_maxseats tinyint(4) default '0' not null,
tr_cost float(7,2) not null,
tr_br_code int (11) not null,
tr_gui_AT char(10) not null,
tr_drv_AT char(10) not null,
primary key (tr_id), 
CONSTRAINT tripcode FOREIGN KEY (tr_br_code) REFERENCES branch(br_code) 
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT guided FOREIGN KEY (tr_gui_AT) REFERENCES guide(gui_AT) 
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT drived FOREIGN KEY (tr_drv_AT) REFERENCES driver(drv_AT) 
ON UPDATE CASCADE ON DELETE CASCADE
 ) ; 

create table if not exists telephone(
ph_br_code int(11) not null ,
ph_number char(10) default'unknown' not null,
primary key (ph_number), 
CONSTRAINT phonebrcode FOREIGN KEY (ph_br_code) REFERENCES branch(br_code) 
ON UPDATE CASCADE ON DELETE CASCADE
 ) ; 

create table if not exists languages(
lng_gui_AT char(10) not null,
lng_language varchar(30) default 'unknown' not null,
primary key(lng_gui_AT,lng_language),
CONSTRAINT languiAT FOREIGN KEY (lng_gui_AT) REFERENCES guide(gui_AT) 
ON UPDATE CASCADE ON DELETE CASCADE
);

create table if not exists event(
ev_tr_id int(11) not null auto_increment,
ev_start date not null,
ev_end date not null,
ev_descr text not null,
primary key (ev_tr_id,ev_start),
CONSTRAINT eventtrid FOREIGN KEY (ev_tr_id) REFERENCES trip(tr_id) 
ON UPDATE CASCADE ON DELETE CASCADE
);

create table if not exists admin(
adm_AT char(10) not null,
adm_type enum('LOGISTICS','ADMINISTRATIVE','ACCOUNTING'),
adm_diploma varchar(200) default 'unknown' not null,
primary key(adm_AT),
CONSTRAINT admAT FOREIGN KEY (adm_AT) REFERENCES worker(wrk_AT) 
ON UPDATE CASCADE ON DELETE CASCADE
);

create table if not exists manages(
mng_adm_AT char(10) not null,
mng_br_code int(11) not null,
primary key(mng_adm_AT,mng_br_code),
CONSTRAINT mgnadmat FOREIGN KEY (mng_adm_AT) REFERENCES admin(adm_AT) 
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT mngbrcode FOREIGN KEY (mng_br_code) REFERENCES branch(br_code) 
ON UPDATE CASCADE ON DELETE CASCADE
);

create table if not exists destination(
dst_id int(11) not null auto_increment,
dst_name varchar(50) default 'unknown' not null,
dst_desc text ,
dst_rtype enum ('LOCAL','ABROAD') not null,
dst_languages varchar(30) not null,
dst_location int(11) not null,
primary key (dst_id),
CONSTRAINT dstlocation FOREIGN KEY (dst_location) REFERENCES destination(dst_id) 
ON UPDATE CASCADE ON DELETE CASCADE
);

create table if not exists travel_to(
to_tr_id int(11) not null auto_increment,
to_dst_id int(11) not null ,
to_arrival date not null,
to_departure date not null,
primary key (to_tr_id,to_dst_id),
CONSTRAINT todstid FOREIGN KEY (to_dst_id) REFERENCES destination(dst_id) 
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT totripid FOREIGN KEY (to_tr_id) REFERENCES trip(tr_id) 
ON UPDATE CASCADE ON DELETE CASCADE
);

create table if not exists reservation(
res_tr_id int(11) not null auto_increment,
res_seatnum tinyint(11) default '0' not null,
res_name varchar(20) default 'unknown' not null,
res_lname varchar(20) default 'unknown' not null,
res_isadult enum ('ADULT','MINOR') not null,
primary key (res_tr_id),
CONSTRAINT restrid FOREIGN KEY (res_tr_id) REFERENCES trip(tr_id) 
ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS offers (
  promo_code char(10) NOT NULL,
  start_date date NOT NULL,
  expiry_date date NOT NULL,
  cost float(7,2) NOT NULL,
  dst_id int(11) NOT NULL,
  PRIMARY KEY (promo_code),
  CONSTRAINT dest FOREIGN KEY (dst_id) REFERENCES destination(dst_id)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE reservation_offers (
  booking_code INT(11) NOT NULL AUTO_INCREMENT,
  name CHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  promo_code_res CHAR(10) NOT NULL,
  down_payment FLOAT(7,2) NOT NULL,
  PRIMARY KEY (booking_code),
  CONSTRAINT offers FOREIGN KEY (promo_code_res) REFERENCES offers(promo_code)
	ON UPDATE CASCADE ON DELETE CASCADE
);
create index res_name_idx 
on reservation_offers(name);
create index res_lname_idx 
on reservation_offers(last_name);
create index res_payment_idx 
on reservation_offers(down_payment);

