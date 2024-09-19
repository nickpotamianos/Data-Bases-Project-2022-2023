insert into branch values
(null,'Sarantaporou','5','Patra'),
(null,'Vallianou','16','Athina'),
(null,'Themistokleos','45','Thesaloniki');

insert into worker values
('AM103312','Nikolas','Potamianos','1200.32',1),
('AN451278','Grigoris','Tzwrtzakis','750',2),
('AN156511','Andreas','Katsaros','1100.76',3),
('AM682486','Xristos','Vroutsis','1020.75',1),
('AT875394','Andrew','Tate','2500.68',2),
('AL745624','Giannis','Leivadiwtis','1550.86',3),
('AM785239','Romanos','Potamianos','1650.32',1),
('AN457823','Giwrgos','Samaras','860.42',2),
('AM739182','Alexandros','Panagiwtou','920.32',3),
('AM852469','Dimitris','Sklavenitis','1321.32',1),
('AM852470','Petros','Rallis','800',2),
('AM852471','Donald','Trump','4800',3);

insert into guide values
('AM103312','GUIDE:douleve sezon stin mikono'),
('AN451278','GUIDE:ptixia ksenes glwsses'),
('AN156511','GUIDE:25 xronia sta touristika');

insert into destination values
(null,'Delfoi',' Near Parnassos, historical city ','local','GREEK',1),
(null,'California',' Where palmtrees meet Hollywood ','abroad','English',2),
(null,'Parnasos',' Trip to the snowcenter of the mountain ','local','GREEK',3);

insert into driver values
('AM682486','A','LOCAL','10'),
('AT875394','B','ABROAD','4'),
('AL745624','D', 'LOCAL','5');

insert into trip values
(null,'2023-07-15','2023-07-24','80','1576.56',1,'AM103312','AM682486'),
(null,'2023-03-06','2023-06-25','80','6243.00',2,'AN451278','AT875394'),
(null,'2023-01-26','2023-02-08','80','3226.56',3,'AN156511','AL745624');

insert into travel_to values
(null,1,'2023-07-15','2023-07-24'),
(null,2,'2023-03-06','2023-06-25'),
(null,3,'2023-01-26','2023-02-08');

insert into reservation values
(null,'23','Dionisis','Mavrotsoukalos','adult'),
(null,'24','Markos','Mavrotsoukalos','minor'),
(null,'25','Spyros','Mavrotsoukalos','adult');

insert into telephone values
(1,2103507829),
(2,2296025561),
(3,2108924514);

insert into languages values
('AM103312','ENGLISH, GREEK'),
('AN451278','GREEK'),
('AN156511','FRENCH');

insert into event values
(null,'2023-07-15','2023-07-24','trip to England'),
(null,'2023-03-06','2023-06-25','trip to Delfoi'),
(null,'2023-01-26','2023-02-08','trip to Paris');

insert into admin values
('AM785239','LOGISTICS','BA (Hons) Business Management'),
('AN457823','ADMINISTRATIVE','MBA Global'),
('AM739182','ACCOUNTING','BA (Hons) Business Management (Marketing)'),
('AM852469','ADMINISTRATIVE','MSc Human Resource Management'),
('AM852470','ADMINISTRATIVE','BA (Hons) Business Management (Finance)');

insert into manages values
('AN457823',1),
('AM852469',2),
('AM852470',3);

INSERT INTO offers (promo_code, start_date, expiry_date, cost, dst_id) VALUES 
('LOCAL4', '2023-05-01', '2023-06-30', 160.01, 1),
('ABROAD6', '2023-07-01', '2023-08-01', 310.01, 2),
('ABROAD13', '2023-09-01', '2023-10-15', 260.01, 3);

INSERT INTO it_manager (it_AT, password, start_date, end_date)
VALUES ('AM852471', 'password123', '2022-09-01', '2022-09-30');
INSERT INTO log (login_AT,login_id, login_activity)
VALUES ('AM852471', '3', 'Created a new trip');