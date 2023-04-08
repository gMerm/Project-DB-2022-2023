-- branch
INSERT INTO branch VALUES(0001, "Korinthou", 30, "Patras");
INSERT INTO branch VALUES(0002, "Ermou", 24, "Athens");
INSERT INTO branch VALUES(0003, "Aristotelous", 8, "Thessaloniki");
INSERT INTO branch VALUES(0004, "Dimokratias", 12, "Nafplio");
INSERT INTO branch VALUES(0005, "Papandreou Andreas", 6, "Chania");

INSERT INTO branch VALUES(0006, "Maizonos", 31, "Patras");
INSERT INTO branch VALUES(0007, "Ermou", 26, "Athens");
INSERT INTO branch VALUES(0008, "Karaiskaki", 9, "Agrinio");
INSERT INTO branch VALUES(0009, "Ellispontou", 19, "Palamas");
INSERT INTO branch VALUES(0010, "Parigorias", 8, "Argos");

-- phones
INSERT INTO phones VALUES(0001, "6900000000");
INSERT INTO phones VALUES(0002, "6911111111");
INSERT INTO phones VALUES(0003, "6922222222");
INSERT INTO phones VALUES(0004, "6933333333");
INSERT INTO phones VALUES(0005, "6944444444");

INSERT INTO phones VALUES(0006, "6955555555");
INSERT INTO phones VALUES(0007, "6966666666");
INSERT INTO phones VALUES(0008, "6977777777");
INSERT INTO phones VALUES(0009, "6988888888");
INSERT INTO phones VALUES(0010, "6999999999");

--workers: drivers, guides: 1 driver, 1 guide gia kather branch
INSERT INTO worker VALUES("AB0002", "Georgios", "Mermigkis", 1500, 0001);
INSERT INTO worker VALUES("AB0003", "Dimitrios", "Giannakopoulos", 1300, 0001);

INSERT INTO worker VALUES("AB0004", "Nikolaos", "Mavrias", 1100, 0002);
INSERT INTO worker VALUES("AB0005", "Valantis", "Liakopoulos", 500, 0002);

INSERT INTO worker VALUES("AB0007", "Grigoris", "Mergkakis", 1501, 0003);
INSERT INTO worker VALUES("AB0008", "Dionisis", "Giannopoulos", 1301, 0003);

INSERT INTO worker VALUES("AB0009", "Nikiforos", "Katsonis", 1101, 0004);
INSERT INTO worker VALUES("AB0010", "Vasilis", "Balasis", 501, 0004);

INSERT INTO worker VALUES("AB0012", "Giorgos", "Kexrakos", 1503, 0005);
INSERT INTO worker VALUES("AB0013", "Leuteris", "Nikolaou", 1304, 0005);

INSERT INTO worker VALUES("AB0014", "Penny", "Vlanti", 1105, 0006);
INSERT INTO worker VALUES("AB0015", "Xristos", "Lakakis", 506, 0006);

INSERT INTO worker VALUES("AB0017", "Kyriakos", "Kyriakou", 1508, 0007);
INSERT INTO worker VALUES("AB0018", "Spuros", "Foteinos", 1309, 0007);

INSERT INTO worker VALUES("AB0019", "Pipis", "Skoteinos", 1106, 0008);
INSERT INTO worker VALUES("AB0020", "Giannis", "Lamperos", 510, 0008);

INSERT INTO worker VALUES("AB0022", "Antonis", "Remos", 2022, 0009);
INSERT INTO worker VALUES("AB0023", "Richardos", "Achileopoulos", 2000, 0009);

INSERT INTO worker VALUES("AB0024", "Ektoras", "Triantos", 2010, 0010);
INSERT INTO worker VALUES("AB0025", "Eleni", "Dimitriou", 300, 0010);

-- workers: admins, gia kathe triada vazw 1 administrator, 1 logistics, 1 accounting
-- wste kather branch na exei apo enan
INSERT INTO worker VALUES("AB0031", "Anton", "Gonzalez", 2000, 0001);
INSERT INTO worker VALUES("AB0032", "Remington", "Gibbs", 1600, 0001);
INSERT INTO worker VALUES("AB0033", "Delaney", "Frank", 1600, 0001);

INSERT INTO worker VALUES("AB0034", "Finnegan", "Stark", 2000, 0002);
INSERT INTO worker VALUES("AB0035", "Raquel", "Craig", 1600, 0002);
INSERT INTO worker VALUES("AB0036", "Gael", "Ashley", 1600, 0002);

INSERT INTO worker VALUES("AB0037", "Jaden", "Clements", 2000, 0003);
INSERT INTO worker VALUES("AB0038", "Kaitlyn", "Mckinney", 1600, 0003);
INSERT INTO worker VALUES("AB0039", "Valentino", "Sellers", 1600, 0003);

INSERT INTO worker VALUES("AB0040", "Armani", "Mcmahon", 2000, 0004);
INSERT INTO worker VALUES("AB0041", "Braylon", "Matthews", 1600, 0004);
INSERT INTO worker VALUES("AB0042", "Isaiah", "Vincent", 1600, 0004);

INSERT INTO worker VALUES("AB0043", "Lydia", "Odom", 2000, 0005);
INSERT INTO worker VALUES("AB0044", "Jabari", "Trevino", 1600, 0005);
INSERT INTO worker VALUES("AB0045", "Adriana", "Rangel", 1600, 0005);

INSERT INTO worker VALUES("AB0046", "Ashton", "Vang", 2000, 0006);
INSERT INTO worker VALUES("AB0047", "Kaden", "Eaton", 1600, 0006);
INSERT INTO worker VALUES("AB0048", "Ivan", "Berger", 1600, 0006);

INSERT INTO worker VALUES("AB0049", "Iyana", "Rubio", 2000, 0007);
INSERT INTO worker VALUES("AB0050", "Kassidy", "Tanner", 1600, 0007);
INSERT INTO worker VALUES("AB0051", "Cameron", "Ayers", 1600, 0007);

INSERT INTO worker VALUES("AB0052", "Alexa", "Galloway", 2000, 0008);
INSERT INTO worker VALUES("AB0053", "Brynn", "Garrett", 1600, 0008);
INSERT INTO worker VALUES("AB0054", "Azaria", "Levy", 1600, 0008);

INSERT INTO worker VALUES("AB0055", "Davis", "Santana", 2000, 0009);
INSERT INTO worker VALUES("AB0056", "Zavier", "Mooney", 1600, 0009);
INSERT INTO worker VALUES("AB0057", "Ellie", "Colon", 1600, 0009);

INSERT INTO worker VALUES("AB0058", "Kaiya", "Mccullough", 2000, 0010);
INSERT INTO worker VALUES("AB0059", "Cullen", "Crawford", 1600, 0010);
INSERT INTO worker VALUES("AB0060", "Catalina", "Ware", 1600, 0010);

-- admins: ana triada aforoun ena sigkekrimeno branch
INSERT INTO admin VALUES("AB0031", "ADMINISTRATIVE", "Phd: Business Administration");
INSERT INTO admin VALUES("AB0032", "ACCOUNTING", "Master: Accounting");
INSERT INTO admin VALUES("AB0033", "LOGISTICS", "Master: Logistics");

INSERT INTO admin VALUES("AB0034", "ADMINISTRATIVE", "Phd: Business Administration");
INSERT INTO admin VALUES("AB0035", "ACCOUNTING", "Master: Accounting");
INSERT INTO admin VALUES("AB0036", "LOGISTICS", "Master: Logistics");

INSERT INTO admin VALUES("AB0037", "ADMINISTRATIVE", "Phd: Business Administration");
INSERT INTO admin VALUES("AB0038", "ACCOUNTING", "Master: Accounting");
INSERT INTO admin VALUES("AB0039", "LOGISTICS", "Master: Logistics");

INSERT INTO admin VALUES("AB0040", "ADMINISTRATIVE", "Phd: Business Administration");
INSERT INTO admin VALUES("AB0041", "ACCOUNTING", "Master: Accounting");
INSERT INTO admin VALUES("AB0042", "LOGISTICS", "Master: Logistics");

INSERT INTO admin VALUES("AB0043", "ADMINISTRATIVE", "Phd: Business Administration");
INSERT INTO admin VALUES("AB0044", "ACCOUNTING", "Master: Accounting");
INSERT INTO admin VALUES("AB0045", "LOGISTICS", "Master: Logistics");

INSERT INTO admin VALUES("AB0046", "ADMINISTRATIVE", "Phd: Business Administration");
INSERT INTO admin VALUES("AB0047", "ACCOUNTING", "Master: Accounting");
INSERT INTO admin VALUES("AB0048", "LOGISTICS", "Master: Logistics");

INSERT INTO admin VALUES("AB0049", "ADMINISTRATIVE", "Phd: Business Administration");
INSERT INTO admin VALUES("AB0050", "ACCOUNTING", "Master: Accounting");
INSERT INTO admin VALUES("AB0051", "LOGISTICS", "Master: Logistics");

INSERT INTO admin VALUES("AB0052", "ADMINISTRATIVE", "Phd: Business Administration");
INSERT INTO admin VALUES("AB0053", "ACCOUNTING", "Master: Accounting");
INSERT INTO admin VALUES("AB0054", "LOGISTICS", "Master: Logistics");

INSERT INTO admin VALUES("AB0055", "ADMINISTRATIVE", "Phd: Business Administration");
INSERT INTO admin VALUES("AB0056", "ACCOUNTING", "Master: Accounting");
INSERT INTO admin VALUES("AB0057", "LOGISTICS", "Master: Logistics");

INSERT INTO admin VALUES("AB0058", "ADMINISTRATIVE", "Phd: Business Administration");
INSERT INTO admin VALUES("AB0059", "ACCOUNTING", "Master: Accounting");
INSERT INTO admin VALUES("AB0060", "LOGISTICS", "Master: Logistics");

-- Exw 10 admins typou "Administrator", enan gia kathe apo ta 10 branch 
INSERT INTO manages VALUES("AB0031", 0001);
INSERT INTO manages VALUES("AB0034", 0002);
INSERT INTO manages VALUES("AB0037", 0003);
INSERT INTO manages VALUES("AB0040", 0004);
INSERT INTO manages VALUES("AB0043", 0005);
INSERT INTO manages VALUES("AB0046", 0006);
INSERT INTO manages VALUES("AB0049", 0007);
INSERT INTO manages VALUES("AB0052", 0008);
INSERT INTO manages VALUES("AB0055", 0009);
INSERT INTO manages VALUES("AB0058", 0010);

-- se kathe branch vazw enan driver
INSERT INTO driver VALUES("AB0002", "D", "LOCAL", 10);
INSERT INTO driver VALUES("AB0004", "A", "ABROAD", 4);
INSERT INTO driver VALUES("AB0007", "B", "LOCAL", 4);
INSERT INTO driver VALUES("AB0009", "C", "ABROAD", 6);
INSERT INTO driver VALUES("AB0012", "A", "LOCAL", 8);
INSERT INTO driver VALUES("AB0014", "D", "LOCAL", 10);
INSERT INTO driver VALUES("AB0017", "A", "ABROAD", 4);
INSERT INTO driver VALUES("AB0019", "B", "LOCAL", 4);
INSERT INTO driver VALUES("AB0022", "C", "ABROAD", 6);
INSERT INTO driver VALUES("AB0024", "A", "LOCAL", 8);

-- se kather branch enan guide
INSERT INTO guide VALUES("AB0003", "Fluent, friendly, prefers winter destinations.");
INSERT INTO guide VALUES("AB0005", "I love culture and music.");
INSERT INTO guide VALUES("AB0008", "I love drugs and smoking.");
INSERT INTO guide VALUES("AB0010", "Love basketball and football.");
INSERT INTO guide VALUES("AB0013", "Social, friendly, prefers summer destinations.");
INSERT INTO guide VALUES("AB0015", "Enviroment friendly, big fan of Volleyball.");
INSERT INTO guide VALUES("AB0018", "Stable character, friendly, prefers fall destionations.");
INSERT INTO guide VALUES("AB0020", "I love physics and music.");
INSERT INTO guide VALUES("AB0023", "Big fan of religion.");
INSERT INTO guide VALUES("AB0025", "Very nice sense of humor, prefers weekend exlorations.");

-- gia tis languages
INSERT INTO languages VALUES("AB0003", "English, German, Spanish");
INSERT INTO languages VALUES("AB0005", "Eglish, French, Norwegian");
INSERT INTO languages VALUES("AB0008", "Eglish, Spanish, Norwegian");
INSERT INTO languages VALUES("AB0010", "Eglish, French, Italian");
INSERT INTO languages VALUES("AB0013", "Eglish, Greek, Norwegian");
INSERT INTO languages VALUES("AB0015", "Eglish, Chinese, French");
INSERT INTO languages VALUES("AB0018", "Eglish, French, Spanish");
INSERT INTO languages VALUES("AB0020", "Eglish, French, Albanian");
INSERT INTO languages VALUES("AB0023", "Eglish, French, German");
INSERT INTO languages VALUES("AB0025", "Eglish, Italian, Greek");

-- gia ta trips, id, departure, return,  int maxseats, float cost, int br_code, char guide, char driver
-- se kathe branch vazw 3 trips, kathe branch exei diko tou driver, diko tou guide, to prosexw
INSERT INTO trip VALUES(NULL,'2000-01-01 00:01:00','2000-01-02 01:20:00', 1, 1020.0, 0001,'AB0003','AB0002');
INSERT INTO trip VALUES(NULL,'2000-01-02 18:02:00','2000-02-03 02:30:00', 3, 2030.0, 0001,'AB0003','AB0002');
INSERT INTO trip VALUES(NULL,'2000-01-03 15:01:00','2000-03-02 03:20:00', 2, 1030.0, 0001,'AB0003','AB0002');
INSERT INTO trip VALUES(NULL,'2000-01-04 17:01:00','2000-04-02 04:20:00', 3, 1050.0, 0002,'AB0005','AB0004');
INSERT INTO trip VALUES(NULL,'2000-01-05 16:01:00','2000-05-02 05:20:00', 4, 1060.0, 0002,'AB0005','AB0004');
INSERT INTO trip VALUES(NULL,'2000-01-06 15:01:00','2000-06-02 06:20:00', 5, 1001.0, 0002,'AB0005','AB0004');
INSERT INTO trip VALUES(NULL,'2000-01-07 00:02:00','2000-07-03 07:30:00', 3, 2002.0, 0003,'AB0008','AB0007');
INSERT INTO trip VALUES(NULL,'2000-01-08 14:01:00','2000-08-02 08:20:00', 1, 1003.0, 0003,'AB0008','AB0007');
INSERT INTO trip VALUES(NULL,'2000-01-09 13:01:00','2000-09-02 09:20:00', 6, 1004.0, 0003,'AB0008','AB0007');
INSERT INTO trip VALUES(NULL,'2000-01-10 12:01:00','2000-10-02 10:20:00', 1, 1001.0, 0004,'AB0010','AB0009');
INSERT INTO trip VALUES(NULL,'2000-01-11 11:01:00','2000-11-02 11:20:00', 2, 1006.0, 0004,'AB0010','AB0009');
INSERT INTO trip VALUES(NULL,'2000-01-12 09:02:00','2000-12-03 12:30:00', 2, 2007.0, 0004,'AB0010','AB0009');

INSERT INTO trip VALUES(NULL,'2000-01-13 08:01:00','2000-01-04 13:20:00', 1, 1008.0, 0005,'AB0013','AB0012');
INSERT INTO trip VALUES(NULL,'2000-01-14 08:01:00','2000-01-06 14:20:00', 4, 1008.0, 0005,'AB0013','AB0012');
INSERT INTO trip VALUES(NULL,'2000-01-15 07:01:00','2000-01-12 15:20:00', 7, 1009.0, 0005,'AB0013','AB0012');
INSERT INTO trip VALUES(NULL,'2000-01-16 00:01:00','2000-01-03 16:20:00', 2, 1200.0, 0006,'AB0015','AB0014');
INSERT INTO trip VALUES(NULL,'2000-01-17 05:02:00','2000-01-04 17:30:00', 4, 2300.0, 0006,'AB0015','AB0014');
INSERT INTO trip VALUES(NULL,'2000-01-18 07:01:00','2000-01-06 18:20:00', 2, 1400.0, 0006,'AB0015','AB0014');
INSERT INTO trip VALUES(NULL,'2000-01-19 06:01:00','2000-01-06 19:20:00', 3, 1600.0, 0007,'AB0018','AB0017');
INSERT INTO trip VALUES(NULL,'2000-01-20 05:01:00','2000-01-09 20:20:00', 3, 1700.0, 0007,'AB0018','AB0017');
INSERT INTO trip VALUES(NULL,'2000-01-21 04:01:00','2000-01-02 21:20:00', 6, 2000.0, 0007,'AB0018','AB0017');
INSERT INTO trip VALUES(NULL,'2000-01-22 03:02:00','2000-01-03 22:30:00', 7, 3000.0, 0008,'AB0020','AB0019');
INSERT INTO trip VALUES(NULL,'2000-01-23 02:01:00','2000-01-03 23:20:00', 8, 5000.0, 0008,'AB0020','AB0019');
INSERT INTO trip VALUES(NULL,'2000-01-24 01:01:00','2000-01-08 00:20:00', 8, 4000.0, 0008,'AB0020','AB0019');

INSERT INTO trip VALUES(NULL,'2000-01-25 03:01:00','2000-01-11 01:20:00', 9, 6000.0, 0009,'AB0023','AB0022');
INSERT INTO trip VALUES(NULL,'2000-01-26 02:01:00','2000-01-05 02:20:00', 2, 7000.0, 0009,'AB0023','AB0022');
INSERT INTO trip VALUES(NULL,'2000-01-27 01:02:00','2000-01-06 03:30:00', 3, 7001.0, 0009,'AB0023','AB0022');
INSERT INTO trip VALUES(NULL,'2000-01-28 03:01:00','2000-01-09 04:20:00', 2, 8000.0, 0010,'AB0025','AB0024');
INSERT INTO trip VALUES(NULL,'2000-01-29 02:01:00','2000-01-07 05:20:00', 1, 9000.0, 0010,'AB0025','AB0024');
INSERT INTO trip VALUES(NULL,'2000-01-30 01:01:00','2000-01-08 06:20:00', 4, 9010.0, 0010,'AB0025','AB0024');

-- gia ta event
INSERT INTO event VALUES(NULL, '2000-02-01 00:01:00', '2001-01-02 01:10:00', 'Party'); 
INSERT INTO event VALUES(NULL, '2000-03-01 00:02:00', '2002-01-02 01:20:00', 'Rock Party');
INSERT INTO event VALUES(NULL, '2000-04-01 00:03:00', '2003-01-02 01:30:00', 'Festival');
INSERT INTO event VALUES(NULL, '2000-05-01 00:04:00', '2004-01-02 01:40:00', 'Cinema');
INSERT INTO event VALUES(NULL, '2000-06-01 00:05:00', '2005-01-02 01:50:00', 'Dancing');
INSERT INTO event VALUES(NULL, '2000-07-01 00:06:00', '2006-01-02 01:59:00', 'Pole Dancing');
INSERT INTO event VALUES(NULL, '2000-08-01 00:07:00', '2007-01-02 01:00:00', 'Theatre');
INSERT INTO event VALUES(NULL, '2000-09-01 00:08:00', '2008-01-02 02:00:00', 'Sports Day');
INSERT INTO event VALUES(NULL, '2000-10-01 00:09:00', '2009-01-02 03:20:00', 'Pool Party');
INSERT INTO event VALUES(NULL, '2000-11-01 00:10:00', '2010-01-02 04:00:00', 'Beach Party');
INSERT INTO event VALUES(NULL, '2000-01-01 00:21:00', '2000-02-02 05:20:00', 'Tommoroland');
INSERT INTO event VALUES(NULL, '2000-01-02 00:22:00', '2000-03-02 06:20:00', 'Students party');
INSERT INTO event VALUES(NULL, '2000-01-03 00:23:00', '2000-04-02 07:20:00', 'Party'); 
INSERT INTO event VALUES(NULL, '2000-01-04 00:24:00', '2000-05-02 08:20:00', 'Rock Party');
INSERT INTO event VALUES(NULL, '2000-01-05 00:25:00', '2000-06-02 09:20:00', 'Festival');
INSERT INTO event VALUES(NULL, '2000-01-06 00:26:00', '2000-07-02 10:20:00', 'Cinema');
INSERT INTO event VALUES(NULL, '2000-01-07 00:27:00', '2000-08-02 11:20:00', 'Dancing');
INSERT INTO event VALUES(NULL, '2000-01-08 00:28:00', '2000-09-02 12:20:00', 'Pole Dancing');
INSERT INTO event VALUES(NULL, '2000-01-09 00:29:00', '2000-10-02 13:20:00', 'Theatre');
INSERT INTO event VALUES(NULL, '2000-01-10 00:30:00', '2000-11-02 14:20:00', 'Sports Day');
INSERT INTO event VALUES(NULL, '2000-01-11 00:31:00', '2000-12-02 15:20:00', 'Pool Party');
INSERT INTO event VALUES(NULL, '2000-01-12 00:32:00', '2000-01-03 16:20:00', 'Beach Party');
INSERT INTO event VALUES(NULL, '2000-01-13 00:33:00', '2000-01-04 17:20:00', 'Students party'); 
INSERT INTO event VALUES(NULL, '2000-01-14 00:34:00', '2000-01-05 18:20:00', 'Rock Party');
INSERT INTO event VALUES(NULL, '2000-01-15 00:35:00', '2000-01-06 19:20:00', 'Festival');
INSERT INTO event VALUES(NULL, '2000-01-16 00:36:00', '2000-01-07 20:20:00', 'Tommoroland');
INSERT INTO event VALUES(NULL, '2000-01-17 00:37:00', '2000-01-08 21:20:00', 'Dancing');
INSERT INTO event VALUES(NULL, '2000-01-18 00:38:00', '2000-01-09 22:20:00', 'Pole Dancing');
INSERT INTO event VALUES(NULL, '2000-01-19 00:39:00', '2000-01-10 23:20:00', 'Tommoroland');
INSERT INTO event VALUES(NULL, '2000-01-20 00:40:00', '2000-01-11 00:20:00', 'Sports Day');

-- gia to reservation, mia kratimeni thesi se kathe trip.
INSERT INTO reservation VALUES(1, 1, 'Mitsos', 'Papantwniou', 'ADULT');
INSERT INTO reservation VALUES(2, 3, 'Giwrgos', 'Papatrexas', 'MINOR');
INSERT INTO reservation VALUES(3, 7, 'Dimitris', 'Kwnstadaras', 'ADULT');
INSERT INTO reservation VALUES(4, 2, 'Panagiota', 'Dimitriou', 'MINOR');
INSERT INTO reservation VALUES(5, 5, 'Panagiotis', 'Eksintaris', 'ADULT');
INSERT INTO reservation VALUES(6, 2, 'Nikolas', 'Sarantaris', 'MINOR');
INSERT INTO reservation VALUES(7, 5, 'Maria', 'Ioannou', 'ADULT');
INSERT INTO reservation VALUES(8, 7, 'Giannis', 'Antetokounmpo', 'MINOR');
INSERT INTO reservation VALUES(9, 9, 'Achileas', 'Paparis', 'ADULT');
INSERT INTO reservation VALUES(10, 10, 'Ektoras', 'Troias', 'MINOR');
INSERT INTO reservation VALUES(11, 2, 'Andreas', 'Mousatos', 'ADULT');
INSERT INTO reservation VALUES(12, 4, 'Antonis', 'Antoniou', 'ADULT');
INSERT INTO reservation VALUES(13, 6, 'Labros', 'Kupraiou', 'MINOR');
INSERT INTO reservation VALUES(14, 7, 'Paris', 'Papaxatzis', 'ADULT');
INSERT INTO reservation VALUES(15, 1, 'Grigoris', 'Theologos', 'MINOR');
INSERT INTO reservation VALUES(16, 8, 'Marios', 'Takis', 'ADULT');
INSERT INTO reservation VALUES(17, 9, 'Martha', 'Karagianni', 'ADULT');
INSERT INTO reservation VALUES(18, 2, 'Mika', 'Iliopoulou', 'MINOR');
INSERT INTO reservation VALUES(19, 8, 'Lilian', 'Kalantzi', 'ADULT');
INSERT INTO reservation VALUES(20, 9, 'Vasilis', 'Xristodoulou', 'MINOR');
INSERT INTO reservation VALUES(21, 6, 'Xristos', 'Giannakopoulos', 'ADULT');
INSERT INTO reservation VALUES(22, 4, 'Stamatis', 'Dimitriou', 'ADULT');
INSERT INTO reservation VALUES(23, 3, 'Giorgos', 'Megalooikonomou', 'MINOR');
INSERT INTO reservation VALUES(24, 1, 'Nikos', 'Stagakis', 'ADULT');
INSERT INTO reservation VALUES(25, 3, 'Leuteris', 'Vakoulis', 'MINOR');
INSERT INTO reservation VALUES(26, 1, 'Savvas', 'Tomaras', 'ADULT');
INSERT INTO reservation VALUES(27, 2, 'Kyriakos', 'Galanos', 'ADULT');
INSERT INTO reservation VALUES(28, 7, 'Pipis', 'Tsoukala', 'MINOR');
INSERT INTO reservation VALUES(29, 2, 'Spuraklas', 'Gianni', 'ADULT');
INSERT INTO reservation VALUES(30, 11, 'Giotara', 'Papatrixa', 'MINOR');

-- gia to destination
INSERT INTO destination VALUES(NULL, 'Jamaika', 'exotic place', 'ABROAD', 'Jamaican', 1);
INSERT INTO destination VALUES(NULL, 'Tinos', 'exotic island', 'LOCAL', 'Greek', 2);
INSERT INTO destination VALUES(NULL, 'Texas', 'perfect place for 2 weeks', 'ABROAD', 'English', 3);
INSERT INTO destination VALUES(NULL, 'Athens', 'nice capital of Greece', 'LOCAL', 'Greek', 4);
INSERT INTO destination VALUES(NULL, 'Houston', ' a usual american state', 'ABROAD', 'English', 5);
INSERT INTO destination VALUES(NULL, 'Milos', 'romantic island', 'LOCAL', 'Greek', 6);
INSERT INTO destination VALUES(NULL, 'Toronto', 'exotic place in the winter', 'ABROAD', 'English', 7);
INSERT INTO destination VALUES(NULL, 'Andros', 'big island for tour', 'LOCAL', 'Greek', 8);
INSERT INTO destination VALUES(NULL, 'Brazilia', 'football lovers', 'ABROAD', 'Brazilian', 9);
INSERT INTO destination VALUES(NULL, 'Thessaloniki', 'winter destination', 'LOCAL', 'Greek', 10);
INSERT INTO destination VALUES(NULL, 'Mexico', 'very nice place to visit', 'ABROAD', 'Spanish', 11);
INSERT INTO destination VALUES(NULL, 'Naxos', 'perfect beaches', 'LOCAL', 'Greek', 12);
INSERT INTO destination VALUES(NULL, 'Madrid', 'the capital of Spain!', 'ABROAD', 'Spanish', 13);
INSERT INTO destination VALUES(NULL, 'Paros', 'place for young people and couples', 'LOCAL', 'Greek', 14);
INSERT INTO destination VALUES(NULL, 'Berlin', 'the best european clubs', 'ABROAD', 'German', 15);
INSERT INTO destination VALUES(NULL, 'Ios', 'the best place to party', 'LOCAL', 'Greek', 16);
INSERT INTO destination VALUES(NULL, 'Vienna', 'romantic place', 'ABROAD', 'German', 17);
INSERT INTO destination VALUES(NULL, 'Nafplio', 'historical nice place', 'LOCAL', 'Greek', 18);
INSERT INTO destination VALUES(NULL, 'Dortmund', 'for the real fans of dortmund f.c.', 'ABROAD', 'German', 19);
INSERT INTO destination VALUES(NULL, 'Leukas', 'blue fantastic water of the beach', 'LOCAL', 'Greek', 20);
INSERT INTO destination VALUES(NULL, 'Paris', 'romantic capital of Franch', 'ABROAD', 'French', 21);
INSERT INTO destination VALUES(NULL, 'Kefalonia', 'chill island in Ionio', 'LOCAL', 'Greek', 22);
INSERT INTO destination VALUES(NULL, 'Milan', 'where the shopping starts!', 'ABROAD', 'Italian', 23);
INSERT INTO destination VALUES(NULL, 'Kerkura', 'the best place for party and late night walks', 'LOCAL', 'Greek', 24);
INSERT INTO destination VALUES(NULL, 'Rome', 'touristic area', 'ABROAD', 'Italian', 25);
INSERT INTO destination VALUES(NULL, 'Zakinthos', 'very nice places to explore', 'LOCAL', 'Greek', 26);
INSERT INTO destination VALUES(NULL, 'Barcelona', 'a classic european city', 'ABROAD', 'Spain', 27);
INSERT INTO destination VALUES(NULL, 'Olympos', 'winter climbing', 'LOCAL', 'Greek', 28);
INSERT INTO destination VALUES(NULL, 'Hawai', 'the magic of the nature', 'ABROAD', 'English', 29);
INSERT INTO destination VALUES(NULL, 'Syros', 'the perfect greek chill island', 'LOCAL', 'Greek', 30);

-- gia to travel_to
INSERT INTO travel_to VALUES(0001, 1, '2000-02-01 00:01:00', '2000-02-01 00:01:00');
INSERT INTO travel_to VALUES(0002, 2, '2001-02-01 00:01:00', '2005-02-01 00:01:00');
INSERT INTO travel_to VALUES(0003, 3, '2002-02-01 00:01:00', '2006-02-01 00:01:00');
INSERT INTO travel_to VALUES(0004, 4, '2003-02-01 00:01:00', '2007-02-01 00:01:00');
INSERT INTO travel_to VALUES(0005, 5, '2004-02-01 00:01:00', '2008-02-01 00:01:00');
INSERT INTO travel_to VALUES(0006, 6, '2000-03-01 00:01:00', '2000-08-01 00:01:00');
INSERT INTO travel_to VALUES(0007, 7, '2001-04-01 00:01:00', '2005-09-01 00:01:00');
INSERT INTO travel_to VALUES(0008, 8, '2002-05-01 00:01:00', '2006-10-01 00:01:00');
INSERT INTO travel_to VALUES(0009, 9, '2003-06-01 00:01:00', '2007-11-01 00:01:00');
INSERT INTO travel_to VALUES(0010, 10, '2004-07-01 00:01:00', '2008-12-01 00:01:00');
INSERT INTO travel_to VALUES(0011, 11, '2000-02-02 00:01:00', '2000-02-07 00:01:00');
INSERT INTO travel_to VALUES(0012, 12, '2001-02-03 00:01:00', '2005-02-08 00:01:00');
INSERT INTO travel_to VALUES(0013, 13, '2002-02-04 00:01:00', '2006-02-09 00:01:00');
INSERT INTO travel_to VALUES(0014, 14, '2003-02-05 00:01:00', '2007-02-10 00:01:00');
INSERT INTO travel_to VALUES(0015, 15, '2004-02-06 00:01:00', '2008-02-11 00:01:00');
INSERT INTO travel_to VALUES(0016, 16, '2000-05-01 00:01:00', '2000-10-01 00:01:00');
INSERT INTO travel_to VALUES(0017, 17, '2001-06-01 00:01:00', '2005-11-01 00:01:00');
INSERT INTO travel_to VALUES(0018, 18, '2002-07-01 00:01:00', '2006-12-01 00:01:00');
INSERT INTO travel_to VALUES(0019, 19, '2003-08-01 00:01:00', '2007-01-01 00:01:00');
INSERT INTO travel_to VALUES(0020, 20, '2004-09-01 00:01:00', '2008-02-01 00:01:00');
INSERT INTO travel_to VALUES(0021, 21, '2000-02-03 00:01:00', '2000-02-08 00:01:00');
INSERT INTO travel_to VALUES(0022, 22, '2001-02-04 00:01:00', '2005-02-09 00:01:00');
INSERT INTO travel_to VALUES(0023, 23, '2002-02-05 00:01:00', '2006-02-10 00:01:00');
INSERT INTO travel_to VALUES(0024, 24, '2003-02-06 00:01:00', '2007-02-11 00:01:00');
INSERT INTO travel_to VALUES(0025, 25, '2004-02-07 00:01:00', '2008-02-21 00:01:00');
INSERT INTO travel_to VALUES(0026, 26, '2000-02-01 00:01:00', '2000-03-01 00:01:00');
INSERT INTO travel_to VALUES(0027, 27, '2001-04-01 00:01:00', '2005-05-01 00:01:00');
INSERT INTO travel_to VALUES(0028, 28, '2002-06-01 00:01:00', '2006-07-01 00:01:00');
INSERT INTO travel_to VALUES(0029, 29, '2003-08-01 00:01:00', '2007-09-01 00:01:00');
INSERT INTO travel_to VALUES(0030, 30, '2004-10-01 00:01:00', '2008-11-01 00:01:00');

INSERT INTO worker VALUES("AB0061", "Stanton", "Espinoza", 3000, 0001);
INSERT INTO worker VALUES("AB0062", "Joseph", "Larson", 3000, 0002);
INSERT INTO worker VALUES("AB0063", "Leslie", "Lin", 3000, 0003);
INSERT INTO worker VALUES("AB0064", "Micheal", "Fisher", 3000, 0004);
INSERT INTO worker VALUES("AB0065", "Jenny", "Hardin", 3000, 0005);
INSERT INTO worker VALUES("AB0066", "Blanche", "Mathis", 3000, 0006);
INSERT INTO worker VALUES("AB0067", "Janette", "Decker", 3000, 0007);
INSERT INTO worker VALUES("AB0068", "Susan", "Murray", 3000, 0008);
INSERT INTO worker VALUES("AB0069", "Benedict", "Rivas", 3000, 0009);
INSERT INTO worker VALUES("AB0070", "Rene", "Steele", 3000, 0010);

INSERT INTO IT_worker VALUES("AB0061", "k1292", "2019-01-20", "2023-01-20");
INSERT INTO IT_worker VALUES("AB0062", "a7621", "2017-03-24", "2021-03-24");
INSERT INTO IT_worker VALUES("AB0063", "i8213", "2016-01-20", "2024-04-20");
INSERT INTO IT_worker VALUES("AB0064", "a3214", "2018-03-21", "2021-08-29");
INSERT INTO IT_worker VALUES("AB0065", "a5221", "2016-05-10", "2019-04-02");
INSERT INTO IT_worker VALUES("AB0066", "l0924", "2017-09-12", "2021-05-24");
INSERT INTO IT_worker VALUES("AB0067", "b2421", "2020-01-10", "2024-11-17");
INSERT INTO IT_worker VALUES("AB0068", "w2245", "2016-09-11", "2021-08-19");
INSERT INTO IT_worker VALUES("AB0069", "r2156", "2021-01-10", "2024-12-17");
INSERT INTO IT_worker VALUES("AB0070", "u7777", "2014-09-11", "2021-08-19");

INSERT INTO offers VALUES(NULL, "2023-01-15", "2023-01-21", 300.0, 10);	--xeimwniatiko, thessaloniki
INSERT INTO offers VALUES(NULL, "2023-06-15", "2023-06-29", 800.0, 2);  --kalokairino, tinos
INSERT INTO offers VALUES(NULL, "2023-09-02", "2023-09-11", 600.0, 13); --fthinopwro, madrid

INSERT INTO worker VALUES("AB0071", "Leona", "Buchanan", 3000, 0001);
INSERT INTO worker VALUES("AB0072", "Penelope", "Waters", 3000, 0002);
INSERT INTO worker VALUES("AB0073", "Cai", "Mclaughlin", 3000, 0003);
INSERT INTO worker VALUES("AB0074", "Veronica", "Russell", 3000, 0004);
INSERT INTO worker VALUES("AB0075", "Alex", "Farmer", 3000, 0005);
INSERT INTO worker VALUES("AB0076", "Sofia", "Escobar", 3000, 0006);
INSERT INTO worker VALUES("AB0077", "Keisha", "Cohen", 3000, 0007);
INSERT INTO worker VALUES("AB0078", "Alan", "Hale", 3000, 0008);
INSERT INTO worker VALUES("AB0079", "Anoushka", "Meyers", 3000, 0009);

INSERT INTO driver VALUES("AB0071", "D", "LOCAL", 10);
INSERT INTO driver VALUES("AB0072", "A", "ABROAD", 4);
INSERT INTO driver VALUES("AB0073", "B", "LOCAL", 4);
INSERT INTO driver VALUES("AB0074", "C", "ABROAD", 6);
INSERT INTO driver VALUES("AB0075", "A", "LOCAL", 8);
INSERT INTO driver VALUES("AB0076", "D", "LOCAL", 10);
INSERT INTO driver VALUES("AB0077", "A", "ABROAD", 4);
INSERT INTO driver VALUES("AB0078", "B", "LOCAL", 4);
INSERT INTO driver VALUES("AB0079", "C", "ABROAD", 6);

INSERT INTO worker VALUES("AB0080", "Velma", "Kaufman", 2000, 0001);
INSERT INTO worker VALUES("AB0081", "Sallie", "Roach", 2000, 0002);
INSERT INTO worker VALUES("AB0082", "Leonardo", "Branch", 2000, 0003);
INSERT INTO worker VALUES("AB0083", "Ayub", "Hamilton", 2000, 0004);

INSERT INTO admin VALUES("AB0080", "ADMINISTRATIVE", "Phd: Dokimastikos");
INSERT INTO admin VALUES("AB0081", "ADMINISTRATIVE", "Phd: Dokimastikos");
INSERT INTO admin VALUES("AB0082", "ADMINISTRATIVE", "Phd: Dokimastikos");
INSERT INTO admin VALUES("AB0083", "ADMINISTRATIVE", "Phd: Dokimastikos");

INSERT INTO login_credentials VALUES("Espinoza", "k1292");
INSERT INTO login_credentials VALUES("Larson", "a7621");
INSERT INTO login_credentials VALUES("Lin", "i8213");
INSERT INTO login_credentials VALUES("Fisher", "a3214");
INSERT INTO login_credentials VALUES("Hardin", "a5221");
INSERT INTO login_credentials VALUES("Mathis", "l0924");
INSERT INTO login_credentials VALUES("Decker", "b2421");
INSERT INTO login_credentials VALUES("Murray", "w2245");
INSERT INTO login_credentials VALUES("Rivas", "r2156");
INSERT INTO login_credentials VALUES("Steele", "u7777");

INSERT INTO worker VALUES("AB0100", "DOKIMI", "1", 3000, 0010);
INSERT INTO IT_worker VALUES("AB0100", "1", "2019-01-20", "2023-01-20");
INSERT INTO login_credentials VALUES("1", "1");

-- gia kathe offer thelw 20000 reservation_offers, sinolo: 60000, prokatavoli 50-200 euro
-- ftiaxnw csv file 

LOAD DATA INFILE 'C:/uni/dedomena.csv' INTO TABLE reservation_offers
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';
