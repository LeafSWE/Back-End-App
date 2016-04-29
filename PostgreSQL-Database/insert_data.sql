-- UUID: f7826da6-4fa2-4e98-8024-bc5b71e0893e

-- Building 
	INSERT INTO "Building" VALUES (0, 'f7826da6-4fa2-4e98-8024-bc5b71e0893e', 666, 'Torre Archimede', 'Descrizione', '07.30 - 19.00. Dal lunedì al venerdì.', 'Via Trieste 63 - 35121 Padova', 1, 'DimensioniMappa');
	
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
	(2, 'Laboratori'),
	(3, 'Uffici'),
	(4, 'Zone relax'),
	(5, 'Aule studio'),
	(6, 'Biblioteche'),
	(7, 'Entrate');
	
-- POI
	INSERT INTO "POI" VALUES (0, '1A150', 'Posti disponibili: 150.', 0),
	(1, '1AD100', 'Posti disponibili: 100.', 0),
	(2, '1C150', 'Posti disponibili: 150.', 0),
	(3, '1BC45', 'Posti disponibili: 45.', 0),
	(4, '1BC50', 'Posti disponibili: 50.', 0),
	(5, '2AB40', 'Posti disponibili: 40.', 0),
	(6, '2AB45', 'Posti disponibili: 45.', 0),
	(7, '2BC30', 'Posti disponibili: 30.', 0),
	(8, '2BC60', 'Posti disponibili: 60.', 0),

	(9, 'Toilette donne 1AD', 'Disponibili servizi per disabili.', 1),
	(10, 'Toilette donne 1BC', 'Disponibili servizi per disabili.', 1),
	(11, 'Toilette uomini 1AD', 'Disponibili servizi per disabili.', 1),
	(12, 'Toilette uomini 1BC', 'Disponibili servizi per disabili.', 1),
	(13, 'Toilette donne 2AD', 'Disponibili servizi per disabili.', 1),
	(14, 'Toilette donne 2BC', 'Disponibili servizi per disabili.', 1),
	(15, 'Toilette uomini 2AD', 'Disponibili servizi per disabili.', 1),
	(16, 'Toilette uomini 2BC', 'Disponibili servizi per disabili.', 1),

	(17, 'LabTA', 'Orari di apertura: 08.00 - 19.00. Lunedì - venerdì. Posti disponibili: 80.', 2),

	(18, 'ASTA', 'Orari di apertura: 08.00 - 19.00. Lunedì - venerdì. Posti disponibili: 80.', 5),
	
	(19, 'Entrata torre A', '' , 7),
	(20, 'Entrata torre B', '' , 7),
	(21, 'Entrata torre C', '' , 7),
	(22, 'Entrata torre D', '' , 7);

-- ROIPOI
	INSERT INTO "ROIPOI" VALUES (0, 19),
	(1, 20),
	(2, 21),
	(3, 22),

	(4, 9),
	(4, 0),
	(4, 1),
	(5, 0),
	(5, 4),
	(5, 12),
	(6, 2),
	(6, 10),
	(6, 3),
	(7, 11),
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
INSERT INTO "Edge" VALUES (0, 0, 8, '1 piano', 'coordinate', 1, 'Sali 1 piano di scale', 'longDesc'),
	-- Edge dal ROI 8 al 0
	(2, 8, 0, '1 piano', 'coordinate', 1, 'Scendi 1 piano di scale', 'longDesc'),
	(3, 1, 9, '1 piano', 'coordinate', 1, 'Sali 1 piano di scale', 'longDesc'),
	(4, 9, 1, '1 piano', 'coordinate', 1, 'Scendi 1 piano di scale', 'longDesc'),
	(5, 2, 10, '1 piano', 'coordinate', 1, 'Sali 1 piano di scale', 'longDesc'),
	(6, 10, 2, '1 piano', 'coordinate', 1, 'Scendi 1 piano di scale', 'longDesc'),
	(7, 3, 11, '1 piano', 'coordinate', 1, 'Sali 1 piano di scale', 'longDesc'),
	(8, 11, 3, '1 piano', 'coordinate', 1, 'Scendi 1 piano di scale', 'longDesc'),

-- Ascensore piano terra - 1° piano),
	(9, 0, 4, '1 piano', 'coordinate', 2, 'Sali 1 piano con l''ascensore', 'longDesc'),
	(10, 4, 0, '1 piano', 'coordinate', 2, 'Scendi 1 piano con l''ascensore', 'longDesc'),
	(11, 1, 5, '1 piano', 'coordinate', 2, 'Sali 1 piano con l''ascensore', 'longDesc'),
	(12, 5, 1, '1 piano', 'coordinate', 2, 'Scendi 1 piano con l''ascensore', 'longDesc'),
	(13, 2, 6, '1 piano', 'coordinate', 2, 'Sali 1 piano con l''ascensore', 'longDesc'),
	(14, 6, 2, '1 piano', 'coordinate', 2, 'Scendi 1 piano con l''ascensore', 'longDesc'),
	(15, 3, 7, '1 piano', 'coordinate', 2, 'Sali 1 piano con l''ascensore', 'longDesc'),
	(16, 7, 3, '1 piano', 'coordinate', 2, 'Scendi 1 piano con l''ascensore', 'longDesc'),

-- Dalle scale al corridoio
	(17, 8, 4, 'distanza', 'coordinate', 0, 'Apri la porta di fronte a te e svolta a destra', 'longDesc'),
	(18, 4, 8, 'distanza', 'coordinate', 0, 'Oltrepassa la prima porta di fronte a te, svolta a sinistra ed oltrepassa la seconda porta', 'longDesc'),
	(19, 9, 5, 'distanza', 'coordinate', 0, 'Apri la porta di fronte a te e svolta a sinistra', 'longDesc'),
	(20, 5, 9, 'distanza', 'coordinate', 0, 'Oltrepassa la prima porta di fronte a te, svolta a destra ed oltrepassa la seconda porta', 'longDesc'),
	(21, 10, 6, 'distanza', 'coordinate', 0, 'Apri la porta di fronte a te e svolta a destra', 'longDesc'),
	(22, 6, 10, 'distanza', 'coordinate', 0, 'Oltrepassa la prima porta di fronte a te, svolta a sinistra ed oltrepassa la seconda porta', 'longDesc'),
	(23, 11, 7, 'distanza', 'coordinate', 0, 'Apri la porta di fronte a te e svolta a sinistra', 'longDesc'),
	(24, 7, 11, 'distanza', 'coordinate', 0, 'Oltrepassa la prima porta di fronte a te, svolta a destra ed oltrepassa la seconda porta', 'longDesc'),

-- Corridoi
	(25, 4, 7, 'distanza', 'coordinate', 0, 'Percorri il corridoio', 'longDesc'),
	(26, 7, 4, 'distanza', 'coordinate', 0, 'Percorri il corridoio', 'longDesc'),
	(27, 5, 6, 'distanza', 'coordinate', 0, 'Percorri il corridoio', 'longDesc'),
	(28, 6, 5, 'distanza', 'coordinate', 0, 'Percorri il corridoio', 'longDesc');

-- Photo
	INSERT INTO "Photo" VALUES (0, 'www.url.com/photo1', 0),
	(1, 'www.url.com/photo2', 0),
	(2, 'www.url.com/photo3', 0);


