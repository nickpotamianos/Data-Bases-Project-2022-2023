/*grigoris*/

insert into branch values
(null,'Stratigou sarafi','7','Athina'),
(null,'Platia olgas','12','Patra'),
(null,'Thoukididou','15','Athina');

insert into worker values
('AM105533','Andreas','Papadopoulos','1000',1),
('AM451123','Adonis','Pomonis','600',2),
('AM156445','Mixalis','Mprakopoulos','800.2',3),
('AM684567','Giorgos','Samopoulos','1100',1),
('AU777394','Dimitris','Tzavaras','1500.4',2),
('AO789024','Damian','Prosadelis','3000',3),
('AM756432','Aimilios','Katsidis','1400',1),
('AL454563','Xristos','Prasinos','1050.5',2),
('AP739182','Leonidas','Saxovts','760',3),
('AM866469','Marios','Kepelek','1500',1),
('AU777393','Grigoris','Loco','760',2),
('AU777395','Paul','Miller','3760',2);

insert into guide values
('AM105533','GUIDE:douleutaras'),
('AM451123','GUIDE:neos stin douleia'),
('AM156445','GUIDE:Xrizei veltioseis');

insert into destination values
(null,'Warsaw',' HISTORICAL CITY ','abroad','Polish',1),
(null,'Salonika',' SECOND BIGGEST CITY IN GREECE ','local','GREEK',2),
(null,'Munich',' BEAUTIFULL CITY IN GERMANY ','abroad','German',3);

insert into driver values
('AM684567','B','LOCAL','8'),
('AU777394','B','ABROAD','5'),
('AO789024','B','ABROAD','3');

insert into trip values
(null,'2023-06-14','2023-06-25','80','2000.00',1,'AM105533','AM684567'),
(null,'2023-02-05','2023-07-05','80','1000',2,'AM451123','AU777394'),
(null,'2023-03-11','2023-04-10','80','4555.34',3,'AM156445','AO789024');

insert into travel_to values
(null,1,'2023-06-14','2023-06-25'),
(null,2,'2023-02-05','2023-07-05'),
(null,3,'2023-03-11','2023-04-10');

insert into reservation values
(null,'45','Babis','Skepatzis','adult'),
(null,'46','Hlias','Skepatzis','minor'),
(null,'47','Andereas','Anastasiadis','minor');

insert into telephone values
(1,2103507855),
(2,2556025561),
(3,2103334514);

insert into languages values
('AM105533','FRENCH, POLISH'),
('AM451123','GREEK,GERMAN'),
('AM156445','GERMAN');

insert into event values
(1,'2023-06-14','2023-06-25','trip to Poland'),
(2,'2023-02-05','2023-07-05','trip to Salonika'),
(3,'2023-03-11','2023-04-10','trip to Munich');

insert into admin values
('AM756432','ADMINISTRATIVE','Administation'),
('AL454563','ADMINISTRATIVE','MBA Global'),
('AP739182','ADMINISTRATIVE','Administation'),
('AM866469','LOGISTICS','Logistics'),
('AU777393','ACCOUNTING','Accounting school');

insert into manages values
('AM756432',1),
('AL454563',2),
('AP739182',3);

INSERT INTO offers (promo_code, start_date, expiry_date, cost, dst_id) VALUES 
('LOCAL2', '2023-06-01', '2023-07-30', 230.01, 1),
('ABROAD3', '2023-08-01', '2023-09-30', 340.01, 2),
('ABROAD8', '2023-09-01', '2023-10-30', 590.01, 3);

INSERT INTO it_manager (it_AT, password, start_date, end_date)
VALUES ('AU777395', 'password123', '2022-07-01', '2022-07-30');
INSERT INTO log (login_AT,login_id, login_activity)
VALUES ('AU777395', '2', 'Created a new trip');




