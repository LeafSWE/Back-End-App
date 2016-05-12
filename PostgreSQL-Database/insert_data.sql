-- COSA MANCA:
--
-- 1. AGGIORNARE LE LONGDESC
-- 2. AGGIORNARE DIMENSIONE MAPPA



-- UUID: f7826da6-4fa2-4e98-8024-bc5b71e0893e

-- Building 
	INSERT INTO "Building" VALUES (0, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 'Torre Archimede', 'Edificio in cui è situato il Dipartimento di Matematica.', '07.30 - 19.00. Dal lunedì al venerdì.', 'Via Trieste 63 - 35121 Padova', '1', '16 KB');
	
-- ROI
	-- Beacon entrate piano terra
	INSERT INTO "ROI" VALUES (0, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 00000),
	(1, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 00001),
	(2, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 00002),
	(3, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 00003),

	-- Beacon 1° piano
	(4, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 01000),
	(5, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 01001),
	(6, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 01002),
	(7, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 01003),

	-- Beacon scale 1° piano
	(8, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 01004),
	(9, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 01005),
	(10, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 01006),
	(11, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 01007);

-- Category
	INSERT INTO "Category" VALUES (0, 'Aule'),
	(1, 'Toilette'),
	(2, 'Entrate');
	-- (3, 'Uffici'),
	-- (4, 'Zone relax'),
	-- (5, 'Aule studio'),
	-- (6, 'Biblioteche'),
	-- (7, 'Laboratori');
	
-- POI
	INSERT INTO "POI" VALUES (0, '1A150', 'Posti disponibili: 150.', 0),
	(1, '1AD100', 'Posti disponibili: 100.', 0),
	(2, '1C150', 'Posti disponibili: 150.', 0),
	(3, '1BC45', 'Posti disponibili: 45.', 0),
	(4, '1BC50', 'Posti disponibili: 50.', 0),	

	(5, 'Toilette donne 1AD', 'Disponibili servizi per disabili.', 1),
	(6, 'Toilette donne 1BC', 'Disponibili servizi per disabili.', 1),
	(7, 'Toilette uomini 1AD', 'Disponibili servizi per disabili.', 1),
	(8, 'Toilette uomini 1BC', 'Disponibili servizi per disabili.', 1),
	
	(9, 'Entrata torre A', '' , 2),
	(10, 'Entrata torre B', '' , 2),
	(11, 'Entrata torre C', '' , 2),
	(12, 'Entrata torre D', '' , 2);

	--(13, '2AB40', 'Posti disponibili: 40.', 0),
	--(14, '2AB45', 'Posti disponibili: 45.', 0),
	--(15, '2BC30', 'Posti disponibili: 30.', 0),
	--(16, '2BC60', 'Posti disponibili: 60.', 0),

	--(17, 'Toilette donne 2AD', 'Disponibili servizi per disabili.', 1),
	--(18, 'Toilette donne 2BC', 'Disponibili servizi per disabili.', 1),
	--(19, 'Toilette uomini 2AD', 'Disponibili servizi per disabili.', 1),
	--(20, 'Toilette uomini 2BC', 'Disponibili servizi per disabili.', 1),

	--(21, 'LabTA', 'Orari di apertura: 08.00 - 19.00. Lunedì - venerdì. Posti disponibili: 80.', 7),

	--(22, 'ASTA', 'Orari di apertura: 08.00 - 19.00. Lunedì - venerdì. Posti disponibili: 80.', 5);

-- ROIPOI
	INSERT INTO "ROIPOI" VALUES (0, 9),
	(1, 10),
	(2, 11),
	(3, 12),

	(4, 5),
	(4, 0),
	(4, 1),
	(5, 0),
	(5, 4),
	(5, 8),
	(6, 2),
	(6, 6),
	(6, 3),
	(7, 7),
	(7, 1),
	(7, 2);

-- EdgeType
INSERT INTO "EdgeType" VALUES (0, 'default'),
(1, 'stairs'),
(2, 'elevator');

-- '1 piano' e 'distanza' devono essere int

-- Edge
-- Scale piano terra - 1° piano),
	-- Edge dal ROI 0 al 8
INSERT INTO "Edge" VALUES
-- sensibilità coordinate: +/- 90°

-- Edge dal ROI 8 al 0 (scale - 1° piano)
	(0, 0, 8, 1, '3', 1, 'Sali 1 piano di scale', 'longDesc'),
	(1, 8, 0, 1, '4', 1, 'Scendi 1 piano di scale', 'longDesc'),
	(2, 1, 9, 1, '3', 1, 'Sali 1 piano di scale', 'longDesc'),
	(3, 9, 1, 1, '4', 1, 'Scendi 1 piano di scale', 'longDesc'),
	(4, 2, 10, 1, '3', 1, 'Sali 1 piano di scale', 'longDesc'),
	(5, 10, 2, 1, '4', 1, 'Scendi 1 piano di scale', 'longDesc'),
	(6, 3, 11, 1, '3', 1, 'Sali 1 piano di scale', 'longDesc'),
	(7, 11, 3, 1, '4', 1, 'Scendi 1 piano di scale', 'longDesc'),

-- Ascensore piano terra - 1° piano),
	(8, 0, 4, 1, '5', 2, 'Sali 1 piano con l''ascensore', 'longDesc'),
	(9, 4, 0, 1, '6', 2, 'Scendi 1 piano con l''ascensore', 'longDesc'),
	(10, 1, 5, 1, '5', 2, 'Sali 1 piano con l''ascensore', 'longDesc'),
	(11, 5, 1, 1, '6', 2, 'Scendi 1 piano con l''ascensore', 'longDesc'),
	(12, 2, 6, 1, '5', 2, 'Sali 1 piano con l''ascensore', 'longDesc'),
	(13, 6, 2, 1, '6', 2, 'Scendi 1 piano con l''ascensore', 'longDesc'),
	(14, 3, 7, 1, '5', 2, 'Sali 1 piano con l''ascensore', 'longDesc'),
	(15, 7, 3, 1, '6', 2, 'Scendi 1 piano con l''ascensore', 'longDesc'),

-- Dalle scale al corridoio
	(16, 8, 4, 4, '2', 0, 'Apri la porta di fronte a te e svolta a destra', 'longDesc'),
	(17, 4, 8, 4, '1', 0, 'Oltrepassa la prima porta di fronte a te, svolta a sinistra ed oltrepassa la seconda porta', 'longDesc'),
	(18, 9, 5, 4, '1', 0, 'Apri la porta di fronte a te e svolta a sinistra', 'longDesc'),
	(19, 5, 9, 4, '2', 0, 'Oltrepassa la prima porta di fronte a te, svolta a destra ed oltrepassa la seconda porta', 'longDesc'),
	(20, 10, 6, 4, '2', 0, 'Apri la porta di fronte a te e svolta a destra', 'longDesc'),
	(21, 6, 10, 4, '1', 0, 'Oltrepassa la prima porta di fronte a te, svolta a sinistra ed oltrepassa la seconda porta', 'longDesc'),
	(22, 11, 7, 4, '1', 0, 'Apri la porta di fronte a te e svolta a sinistra', 'longDesc'),
	(23, 7, 11, 4, '2', 0, 'Oltrepassa la prima porta di fronte a te, svolta a destra ed oltrepassa la seconda porta', 'longDesc'),

-- Corridoi
	(24, 4, 7, 20, '0', 0, 'Percorri il corridoio', 'longDesc'),
	(25, 7, 4, 20, '0', 0, 'Percorri il corridoio', 'longDesc'),
	(26, 5, 6, 20, '0', 0, 'Percorri il corridoio', 'longDesc'),
	(27, 6, 5, 20, '0', 0, 'Percorri il corridoio', 'longDesc'),

-- Collegamenti tra le entrate
	(28, 0, 1, 20, '0', 0, 'Raggiungi l''entrata della torre B', 'longDesc'),
	(29, 1, 0, 20, '0', 0, 'Raggiungi l''entrata della torre A', 'longDesc'),
	(30, 1, 2, 20, '0', 0, 'Raggiungi l''entrata della torre C', 'longDesc'),
	(31, 2, 1, 20, '0', 0, 'Raggiungi l''entrata della torre B', 'longDesc'), 
	(32, 2, 3, 20, '0', 0, 'Raggiungi l''entrata della torre D', 'longDesc'), 
	(33, 3, 2, 20, '0', 0, 'Raggiungi l''entrata della torre C', 'longDesc'), 
	(34, 0, 3, 20, '0', 0, 'Raggiungi l''entrata della torre D', 'longDesc'), 
	(35, 3, 0, 20, '0', 0, 'Raggiungi l''entrata della torre A', 'longDesc');

-- Photo
	INSERT INTO "Photo" VALUES 
	(0, 'http://bucketclips01.s3.amazonaws.com/images/152149.jpg', 0), -- 152149
	(1, 'http://bucketclips01.s3.amazonaws.com/images/152332.jpg', 0), -- 152332
	(2, 'http://bucketclips01.s3.amazonaws.com/images/160225.jpg', 1), -- 160225
	(3, 'http://bucketclips01.s3.amazonaws.com/images/160359.jpg', 1), -- 160359
	(4, 'http://bucketclips01.s3.amazonaws.com/images/161504.jpg', 2), -- 161504
	(5, 'http://bucketclips01.s3.amazonaws.com/images/161959.jpg', 2), -- 161959
	(6, 'http://bucketclips01.s3.amazonaws.com/images/162227.jpg', 3), -- 162227
	(7, 'http://bucketclips01.s3.amazonaws.com/images/162317.jpg', 3), -- 162317
	(8, 'http://bucketclips01.s3.amazonaws.com/images/162651.jpg', 4), -- 162651
	(9, 'http://bucketclips01.s3.amazonaws.com/images/163040.jpg', 4), -- 163040
	(10, 'http://bucketclips01.s3.amazonaws.com/images/163140.jpg', 5), -- 163140
	(11, 'http://bucketclips01.s3.amazonaws.com/images/163203.jpg', 5), -- 163203
	(12, 'http://bucketclips01.s3.amazonaws.com/images/163312.jpg', 6), -- 163312
	(13, 'http://bucketclips01.s3.amazonaws.com/images/163438.jpg', 6), -- 163438
	(14, 'http://bucketclips01.s3.amazonaws.com/images/163602.jpg', 7), -- 163602
	(15, 'http://bucketclips01.s3.amazonaws.com/images/163633.jpg', 7), -- 163633
	(16, 'http://bucketclips01.s3.amazonaws.com/images/170052.jpg', 8), -- 170052
	(17, 'http://bucketclips01.s3.amazonaws.com/images/170305.jpg', 8), -- 170305
	(18, 'http://bucketclips01.s3.amazonaws.com/images/170342.jpg', 9), -- 170342
	(19, 'http://bucketclips01.s3.amazonaws.com/images/170144.jpg', 9), -- 170144
	(20, 'http://bucketclips01.s3.amazonaws.com/images/165315.jpg', 10), -- 165315
	(21, 'http://bucketclips01.s3.amazonaws.com/images/165708.jpg', 10), -- 165708
	(22, 'http://bucketclips01.s3.amazonaws.com/images/165826.jpg', 11), -- 165826
	(23, 'http://bucketclips01.s3.amazonaws.com/images/165421.jpg', 11), -- 165421
	(24, 'http://bucketclips01.s3.amazonaws.com/images/164922.jpg', 12), -- 164922
	(25, 'http://bucketclips01.s3.amazonaws.com/images/164530.jpg', 12), -- 164530
	(26, 'http://bucketclips01.s3.amazonaws.com/images/164714.jpg', 13), -- 164714
	(27, 'http://bucketclips01.s3.amazonaws.com/images/165118.jpg', 13), -- 165118
	(28, 'http://bucketclips01.s3.amazonaws.com/images/163917.jpg', 14), -- 163917
	(29, 'http://bucketclips01.s3.amazonaws.com/images/164237.jpg', 14), -- 164237
	(30, 'http://bucketclips01.s3.amazonaws.com/images/164134.jpg', 15), -- 164134
	(31, 'http://bucketclips01.s3.amazonaws.com/images/163958.jpg', 15), -- 163958
	(32, 'http://bucketclips01.s3.amazonaws.com/images/170305.jpg', 16), -- 170305
	(33, 'http://bucketclips01.s3.amazonaws.com/images/170342.jpg', 17), -- 170342
	(34, 'http://bucketclips01.s3.amazonaws.com/images/171508.jpg', 17), -- 171508
	(35, 'http://bucketclips01.s3.amazonaws.com/images/163203.jpg', 18), -- 163203
	(36, 'http://bucketclips01.s3.amazonaws.com/images/165826.jpg', 19), -- 165826
	(37, 'http://bucketclips01.s3.amazonaws.com/images/172031.jpg', 19), -- 172031
	(38, 'http://bucketclips01.s3.amazonaws.com/images/164530.jpg', 20), -- 164530
	(39, 'http://bucketclips01.s3.amazonaws.com/images/164714.jpg', 21), -- 164714
	(40, 'http://bucketclips01.s3.amazonaws.com/images/171817.jpg', 21), -- 171817
	(41, 'http://bucketclips01.s3.amazonaws.com/images/164237.jpg', 22), -- 164237
	(42, 'http://bucketclips01.s3.amazonaws.com/images/164134.jpg', 23), -- 164134
	(43, 'http://bucketclips01.s3.amazonaws.com/images/171620.jpg', 23), -- 171620
	(44, 'http://bucketclips01.s3.amazonaws.com/images/172742.jpg', 24), -- 172742
	(45, 'http://bucketclips01.s3.amazonaws.com/images/172759.jpg', 24), -- 172759
	(46, 'http://bucketclips01.s3.amazonaws.com/images/172603.jpg', 25), -- 172603
	(47, 'http://bucketclips01.s3.amazonaws.com/images/172616.jpg', 25), -- 172616
	(48, 'http://bucketclips01.s3.amazonaws.com/images/172229.jpg', 26), -- 172229
	(49, 'http://bucketclips01.s3.amazonaws.com/images/172340.jpg', 26), -- 172340
	(50, 'http://bucketclips01.s3.amazonaws.com/images/172431.jpg', 27), -- 172431
	(51, 'http://bucketclips01.s3.amazonaws.com/images/172451.jpg', 27), -- 172451
	(52, 'http://bucketclips01.s3.amazonaws.com/images/171332.jpg', 28), -- 171332
	(53, 'http://bucketclips01.s3.amazonaws.com/images/171414.jpg', 29), -- 171414
	(54, 'http://bucketclips01.s3.amazonaws.com/images/171452.jpg', 30), -- 171452
	(55, 'http://bucketclips01.s3.amazonaws.com/images/171524.jpg', 31), -- 171524
	(56, 'http://bucketclips01.s3.amazonaws.com/images/171602.jpg', 32), -- 171602
	(57, 'http://bucketclips01.s3.amazonaws.com/images/171637.jpg', 33), -- 171637
	(58, 'http://bucketclips01.s3.amazonaws.com/images/171741.jpg', 34), -- 171741
	(59, 'http://bucketclips01.s3.amazonaws.com/images/171820.jpg', 35); -- 171820


