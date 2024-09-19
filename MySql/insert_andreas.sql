insert into branch values
(null,'Grhgoriou E','39','Patra'),
(null,'Dexamenis','90','Athina'),
(null,'Parnithos','22','Athina'),
(null,'Xarilaou Trikoupi','8','Athina'),
(null,'Gerokostopoulou','11','Patra'),
(null,'Papapetrou','88','Athina'),
(null,'Agiou Petrou','39','Thesaloniki'),
(null,'Trigkaki ','22','Aridea'),
(null,'Poukevil','10','Patra'),
(null,'Papaknstantinoy','6','Athina');


insert into worker values
('AN106490','Giannis','Mprakopoulos','1000.2',1),
('AN453827','Mike','Mprakopoulos','1300.12',2),
('AM204846','Hlias','Tzoydas','500.7',3),
('AM105796','Kostas','Mpompoles','900.22',4),
('AM393749','Antonio','Pomonio','500.1',5),
('AL592038','Mark','Zukenberg','900.34',6),
('AM405909','Elon Musk','JR','2000.2',7),
('AN709385','Tristian','Tate','2000.4',8),
('AM686735','Nikos','Mpantounas','1220.88',9),
('AM808640','Marinos','Mavrigiannakis','1100.22',10),
('AM111111', 'Petros', 'Petrou', 1000.00, 1),
('AM222222', 'Nikos', 'Nikou', 1200.00, 2),
('AM333333', 'Giannis', 'Giannou', 1500.00, 3),
('AM444444', 'Sothrhs', 'Sothriou', 800.00, 4),
('AU555555', 'Andreas', 'Andreou', 1200.00, 5),
('AO666666', 'Antonis', 'Antoniou', 1500.00, 6),
('AM777777', 'Xristina', 'Xristinou', 1000.00, 7),
('AL888888', 'Ioanna', 'Ioannou', 800.00, 8),
('AP999999', 'Xrhstos', 'Xrhstou', 1200.00, 9),
('AM000000', 'Giorgos', 'Giorgou', 1500.00, 10),
('AM145643','Sakis','Karpas','1200.32',1),
('AM145642','Alekos','Karpas','750',2),
('AN235456','Panagioths','Patsidis','1100.76',3),
('AM878768','Alexandros','Karatzas','1020.75',4),
('AH565467','Anastasis','Koutsougeorgou','2500.68',5),
('AU876545','Mpampis','Fesatoglou','1550.86',6),
('AH221159','Andreas','Avraam','1650.32',7),
('AH364412','Xrstos','Toymanidis','860.42',8),
('AP889980','Themis','Boltsis','920.32',9),
('AU103540','Giorgos','Gatsos','1321.32',10),
('AM111110','Jordan','Peterson','1400.00',1),
('AM222220','Rick','Morty','1500.00',2),
('AM333330','Andrew','Tate','1600.00',3),
('AM444440','Tristian','Tate','1700.00',4);



insert into guide values
('AN106490','GUIDE:Empistos sto tmhma tou'),
('AN453827','GUIDE:De leei polla'),
('AM204846','GUIDE:Fernei touristes'),
('AM105796','GUIDE:Eixe kone sthn etairia'),
('AM393749','GUIDE:Thrylos se allh zoi'),
('AL592038','GUIDE:Eixe diko tou taksidiotiko'),
('AM405909','GUIDE:Polla xronia ston xoro'),
('AN709385','GUIDE:Kleinei ta kalytera deals'),
('AM686735','GUIDE:metaptyxiako sta touristika'),
('AM808640','GUIDE:25 xronia sta touristika');


insert into destination values
(null,'Epidavros','Northeastern Side Of Peloponnese ','local','GREEK',1),
(null,'Acropolis','Center of Athens ','local','GREEK',2),
(null,'Kalavryta',' Mountainous Town in Peloponnese','local','GREEK',3),
(null,'Mykhnes',' Ancient City of Argolida','local','GREEK',4),
(null,'Amsterdam','Capital city of Netherlands ','abroad','ENGLISH',5),
(null,'London','Capital city of England ','abroad','ENGLISH',6),
(null,'Berlin','Capital city of Germany ','abroad','GERMAN',7),
(null,'Barcelona','Beautiful city in Spain','abroad','SPANISH',8),
(null,'New York','Beautiful city in Spain ','abroad','ENGLISH',9),
(null,'Tokyo','Capital city of Japan ','abroad','JAPANESE',10);


insert into driver values
('AM145643','B','LOCAL','8'),
('AM145642','B','LOCAL','5'),
('AN235456','B','LOCAL','3'),
('AM878768','D','LOCAL','2'),
('AH565467','C','ABROAD','8'),
('AU876545','B','ABROAD','5'),
('AH221159','A','ABROAD','3'),
('AH364412','D','ABROAD','6'),
('AP889980','A','ABROAD','8'),
('AU103540','B','ABROAD','9');

insert into trip values
(null,'2024-01-09','2024-01-13','80','200.00',1,'AN106490','AM145643'),
(null,'2024-01-04','2024-01-08','80','650.00',2,'AN453827','AM145642'),
(null,'2024-01-13','2024-01-17','80','350.00',3,'AM204846','AN235456'),
(null,'2024-01-19','2024-01-23','80','350.99',4,'AM105796','AM878768'),
(null,'2024-03-22','2024-03-28','100','600.00',5,'AM393749','AH565467'),
(null,'2024-03-25','2024-03-30','100','600.00',6,'AL592038','AU876545'),
(null,'2024-03-27','2024-03-31','100','750.00',7,'AM405909','AH221159'),
(null,'2024-03-27','2024-03-31','100','800.00',8,'AN709385','AH364412'),
(null,'2024-06-03','2024-06-13','100','800.00',9,'AM686735','AP889980'),
(null,'2024-06-09','2024-06-19','100','1000.00',10,'AM808640','AU103540');


insert into travel_to values
(null,1,'2024-01-09','2024-01-13'),
(null,2,'2024-01-04','2024-01-08'),
(null,3,'2024-01-13','2024-01-17'),
(null,4,'2024-01-19','2024-01-23'),
(null,5,'2024-03-22','2024-03-28'),
(null,6,'2024-03-25','2024-03-30'),
(null,7,'2024-03-27','2024-03-31'),
(null,8,'2024-03-27','2024-03-31'),
(null,9,'2024-06-03','2024-06-13'),
(null,10,'2024-06-09','2024-06-19');


insert into reservation values
(null,'60','Leo','Messi','adult'),
(null,'61','Neymar','JR','adult'),
(null,'62','Cristiano','Ronaldo','adult'),
(null,'63','Kevin','De Bruyne','adult'),
(null,'64','Luis','Suarez','adult'),
(null,'65','Kylian','Mbappe','adult'),
(null,'66','Lautaro','Martinez','adult'),
(null,'67','Erling','Haaland','adult'),
(null,'68','Ngolo','Kante','adult'),
(null,'69','Robert','Lewangoalski','adult');


insert into telephone values
(1,2102812929),
(2,2130503831),
(3,2103456960),
(4,2123437680),
(5,2189881120),
(6,2170303046),
(7,2160778910),
(8,2145654778),
(9,2166345567),
(10,2109234532);


insert into languages values
('AN106490','ENGLISH,GREEK'),
('AN453827','GREEK'),
('AM204846','GREEK'),
('AM105796','GREEK,FRENCH'),
('AM393749','GERMAN'),
('AL592038','PORTUGUESE,ENGLISH'),
('AM405909','SPANISH'),
('AN709385','ENGLISH,GREEK'),
('AM686735','ENGLISH'),
('AM808640','FRENCH,GREEK');


insert into event values
(null,'2024-01-09','2024-01-13','trip to Epidavros'),
(null,'2024-01-04','2024-01-08','trip to Akropolis'),
(null,'2024-01-13','2024-01-17','trip to Kalavryta'),
(null,'2024-01-19','2024-01-23','trip to Mykhnes'),
(null,'2024-03-22','2024-03-28','trip to Amsterdam'),
(null,'2024-03-25','2024-03-30','trip to London'),
(null,'2024-03-27','2024-03-31','trip to Munich'),
(null,'2024-03-27','2024-03-31','trip to Barchelona'),
(null,'2024-06-03','2024-06-13','trip to New York'),
(null,'2024-06-09','2024-06-19','trip to Tokyo');

insert into admin values
('AM111111','ADMINISTRATIVE',' Bachelor of Business Administration (BBA)& in Accounting'),
('AM222222','ADMINISTRATIVE',' Bachelor in Business Administration(BBA)'),
('AM333333','ADMINISTRATIVE',' Bachelor in Business Administration(BBA)'),
('AM444444','ADMINISTRATIVE',' Bachelor of Business Administration (BBA) in Accounting'),
('AU555555','ADMINISTRATIVE',' Bachelor of Business Administration (BBA)& in Accounting'),
('AO666666','ADMINISTRATIVE',' Bachelor in Business Administration(BBA)'),
('AM777777','ADMINISTRATIVE',' Bachelor in Business Administration(BBA)'),
('AL888888','ADMINISTRATIVE',' Bachelor in Business Administration(BBA)'),
('AP999999','ADMINISTRATIVE',' Bachelor in Business Administration(BBA)'),
('AM000000','ADMINISTRATIVE',' Bachelor of Business Administration (BBA)& in Accounting'),
('AM111110','LOGISTICS' ,'Logistics and Supply Chain Management '),
('AM222220','LOGISTICS','Logistics and Supply Chain Management '),
('AM333330','ACCOUNTING','International Negotiation & Business Development '),
('AM444440','ACCOUNTING','International Negotiation & Business Development ');

insert into manages values
('AM111111',1),
('AM222222',2),
('AM333333',3),
('AM444444',4),
('AU555555',5),
('AO666666',6),
('AM777777',7),
('AL888888',8),
('AP999999',9),
('AM000000',10);


INSERT INTO offers (promo_code, start_date, expiry_date, cost, dst_id) VALUES 
('LOCAL1', '2023-06-01', '2023-07-30', 260.01, 1),
('ABROAD4', '2023-08-01', '2023-09-30', 410.01, 4),
('ABROAD9', '2023-09-01', '2023-10-30', 660.01, 9);



INSERT INTO it_manager (it_AT, password, start_date, end_date)
VALUES ('AN453827', 'password123', '2022-06-01', '2022-06-30');
INSERT INTO log (login_AT,login_id, login_activity)
VALUES ('AN453827', '1', 'Created a new trip');