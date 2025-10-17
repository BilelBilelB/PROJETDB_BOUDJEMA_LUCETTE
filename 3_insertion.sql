/* ===========================================================
   1) TABLES SANS CLÉS ÉTRANGÈRES : projet, contrat, droit, materiel
   =========================================================== */

-- PROJETS (6)
INSERT INTO projet (id_projet, projet_titre, projet_synopsis, budget_estime, budget_reel, date_debut_production, date_fin_production, date_sortie, statut_projet) VALUES
(1,'Échos du Nord','Documentaire sur les aurores boréales', 200000.00, 220000.00, DATE '2024-01-10', DATE '2024-06-15', DATE '2024-10-01', 'Sortie'),
(2,'Lumière d’Août','Drame familial en province',            500000.00, 520000.00, DATE '2024-02-01', DATE '2024-09-30', DATE '2025-02-15', 'Montage'),
(3,'Marée Haute','Thriller maritime',                        800000.00, 850000.00, DATE '2024-03-05', DATE '2024-12-10', DATE '2025-05-20', 'Montage'),
(4,'Rouages','Polar industriel',                              350000.00, 360000.00, DATE '2024-04-01', DATE '2024-07-20', DATE '2024-11-10', 'Sortie'),
(5,'Azimut','Road-movie transalpin',                          450000.00, 470000.00, DATE '2024-05-10', DATE '2024-11-25', DATE '2025-03-30', 'Montage'),
(6,'Les Jardins Suspendus','Conte écologique',                600000.00, 650000.00, DATE '2024-02-15', DATE '2024-10-15', DATE '2025-01-20', 'Tournage');

-- CONTRATS (50) : type dans ('CDD','CDI','Prestation'), montant >= 0, date_fin >= date_debut ou NULL
INSERT INTO contrat (id_contrat, type_contrat, date_debut_contrat, montant_contrat, date_fin_contrat) VALUES
(1,'CDD',        DATE '2024-01-15',  3200.00,  DATE '2024-06-30'),
(2,'Prestation', DATE '2024-02-10',  4500.00,  NULL),
(3,'CDD',        DATE '2024-02-20',  3000.00,  DATE '2024-08-31'),
(4,'CDI',        DATE '2024-03-01',  2800.00,  NULL),
(5,'CDD',        DATE '2024-03-05',  2600.00,  DATE '2024-07-31'),
(6,'Prestation', DATE '2024-03-10',  5200.00,  NULL),
(7,'CDD',        DATE '2024-03-12',  2400.00,  DATE '2024-09-12'),
(8,'CDD',        DATE '2024-03-18',  2550.00,  DATE '2024-09-30'),
(9,'CDI',        DATE '2024-03-25',  3000.00,  NULL),
(10,'Prestation',DATE '2024-04-01',  4800.00,  NULL),
(11,'CDD',       DATE '2024-04-05',  2300.00,  DATE '2024-08-20'),
(12,'CDI',       DATE '2024-04-15',  3100.00,  NULL),
(13,'CDD',       DATE '2024-04-20',  2700.00,  DATE '2024-10-20'),
(14,'Prestation',DATE '2024-04-25',  5000.00,  NULL),
(15,'CDD',       DATE '2024-05-01',  2600.00,  DATE '2024-09-01'),
(16,'CDI',       DATE '2024-05-05',  3200.00,  NULL),
(17,'CDD',       DATE '2024-05-10',  2400.00,  DATE '2024-10-10'),
(18,'Prestation',DATE '2024-05-12',  4700.00,  NULL),
(19,'CDD',       DATE '2024-05-15',  2450.00,  DATE '2024-09-30'),
(20,'CDI',       DATE '2024-05-20',  3300.00,  NULL),
(21,'CDD',       DATE '2024-05-25',  2350.00,  DATE '2024-09-25'),
(22,'Prestation',DATE '2024-06-01',  5100.00,  NULL),
(23,'CDD',       DATE '2024-06-03',  2400.00,  DATE '2024-10-03'),
(24,'CDI',       DATE '2024-06-05',  3400.00,  NULL),
(25,'CDD',       DATE '2024-06-10',  2500.00,  DATE '2024-10-31'),
(26,'Prestation',DATE '2024-06-12',  4900.00,  NULL),
(27,'CDD',       DATE '2024-06-15',  2550.00,  DATE '2024-10-30'),
(28,'CDI',       DATE '2024-06-18',  3450.00,  NULL),
(29,'CDD',       DATE '2024-06-20',  2600.00,  DATE '2024-11-20'),
(30,'Prestation',DATE '2024-06-22',  5300.00,  NULL),
(31,'CDD',       DATE '2024-06-25',  2650.00,  DATE '2024-10-25'),
(32,'CDI',       DATE '2024-06-27',  3500.00,  NULL),
(33,'CDD',       DATE '2024-07-01',  2700.00,  DATE '2024-11-01'),
(34,'Prestation',DATE '2024-07-03',  5200.00,  NULL),
(35,'CDD',       DATE '2024-07-05',  2750.00,  DATE '2024-11-30'),
(36,'CDI',       DATE '2024-07-08',  3550.00,  NULL),
(37,'CDD',       DATE '2024-07-10',  2800.00,  DATE '2024-11-10'),
(38,'Prestation',DATE '2024-07-12',  5400.00,  NULL),
(39,'CDD',       DATE '2024-07-15',  2850.00,  DATE '2024-12-15'),
(40,'CDI',       DATE '2024-07-18',  3600.00,  NULL),
(41,'CDD',       DATE '2024-07-20',  2900.00,  DATE '2024-12-01'),
(42,'Prestation',DATE '2024-07-22',  5500.00,  NULL),
(43,'CDD',       DATE '2024-07-25',  2950.00,  DATE '2024-12-20'),
(44,'CDI',       DATE '2024-07-27',  3650.00,  NULL),
(45,'CDD',       DATE '2024-07-30',  3000.00,  DATE '2024-12-31'),
(46,'Prestation',DATE '2024-08-01',  5600.00,  NULL),
(47,'CDD',       DATE '2024-08-03',  3050.00,  DATE '2024-12-15'),
(48,'CDI',       DATE '2024-08-05',  3700.00,  NULL),
(49,'CDD',       DATE '2024-08-07',  3100.00,  DATE '2024-12-20'),
(50,'Prestation',DATE '2024-08-09',  5700.00,  NULL);

-- DROITS (50) : duree_droit > 0 ; type_droit IN ('diffusion','cession')
INSERT INTO droit (id_droit, type_droit, territoire_droit, duree_droit) VALUES
(1,'diffusion','France',24),(2,'cession','UE',36),(3,'diffusion','Monde',12),(4,'cession','France',60),(5,'diffusion','UE',24),
(6,'diffusion','Monde',36),(7,'cession','France',24),(8,'diffusion','UE',18),(9,'cession','Monde',48),(10,'diffusion','France',30),
(11,'cession','UE',24),(12,'diffusion','Monde',24),(13,'diffusion','France',12),(14,'cession','UE',36),(15,'diffusion','Monde',60),
(16,'cession','France',18),(17,'diffusion','UE',30),(18,'cession','Monde',24),(19,'diffusion','France',48),(20,'cession','UE',12),
(21,'diffusion','Monde',36),(22,'cession','France',24),(23,'diffusion','UE',42),(24,'cession','Monde',18),(25,'diffusion','France',24),
(26,'cession','UE',48),(27,'diffusion','Monde',30),(28,'cession','France',36),(29,'diffusion','UE',12),(30,'cession','Monde',60),
(31,'diffusion','France',18),(32,'cession','UE',24),(33,'diffusion','Monde',48),(34,'cession','France',30),(35,'diffusion','UE',36),
(36,'cession','Monde',24),(37,'diffusion','France',42),(38,'cession','UE',18),(39,'diffusion','Monde',24),(40,'cession','France',12),
(41,'diffusion','UE',24),(42,'cession','Monde',30),(43,'diffusion','France',36),(44,'cession','UE',60),(45,'diffusion','Monde',18),
(46,'cession','France',24),(47,'diffusion','UE',48),(48,'cession','Monde',36),(49,'diffusion','France',24),(50,'cession','UE',30);

-- MATERIEL (20) : type_materiel IN ('caméra','décor','costume') ; etat_materiel IN ('neuf','bon','usagé')
INSERT INTO materiel (id_materiel, type_materiel, quantite_materiel, etat_materiel, localisation_materiel) VALUES
('M001','caméra',  5,'neuf','Paris'),
('M002','caméra',  3,'bon','Lille'),
('M003','caméra',  2,'usagé','Lyon'),
('M004','décor',  10,'bon','Marseille'),
('M005','décor',   8,'neuf','Toulouse'),
('M006','décor',   6,'usagé','Bordeaux'),
('M007','costume',15,'bon','Nantes'),
('M008','costume',20,'neuf','Rennes'),
('M009','costume',12,'usagé','Dijon'),
('M010','caméra',  4,'bon','Nice'),
('M011','caméra',  6,'neuf','Strasbourg'),
('M012','décor',   7,'bon','Grenoble'),
('M013','décor',   9,'usagé','Rouen'),
('M014','costume',14,'bon','Caen'),
('M015','costume',11,'neuf','Reims'),
('M016','caméra',  3,'usagé','Tours'),
('M017','décor',   5,'bon','Limoges'),
('M018','costume',13,'bon','Clermont-Ferrand'),
('M019','caméra',  2,'neuf','Perpignan'),
('M020','décor',   4,'bon','Metz');



/* ===========================================================
   2) TABLE AVEC FKs VERS PROJET : personne (FK), financement (FK)
   =========================================================== */

-- PERSONNES (50) : téléphone = 10 chiffres, email non nul, CP 5 chiffres, id_projet existant
INSERT INTO personne (id_personne, nom_personne, prenom_personne, role_personne, telephone_personne, email_personne, code_postal_personne, id_projet) VALUES
(1,'Martin','Alice','Réalisatrice','0601020304','alice.martin@example.com','75001',1),
(2,'Nguyen','Bao','Cadreur','0601020305','bao.nguyen@example.com','13001',1),
(3,'Diallo','Aïcha','Ingénieure du son','0601020306','aicha.diallo@example.com','69001',2),
(4,'Rossi','Luca','Monteur','0601020307','luca.rossi@example.com','31000',2),
(5,'Hernández','Sofia','Comédienne','0601020308','sofia.hernandez@example.com','44000',3),
(6,'Kowalski','Jan','Éclairagiste','0601020309','jan.kowalski@example.com','35000',3),
(7,'Ben Youssef','Meriem','Costumière','0601020310','meriem.benyoussef@example.com','21000',4),
(8,'Smith','Oliver','Perchman','0601020311','oliver.smith@example.com','06000',4),
(9,'Dubois','Émile','Assistant réal','0601020312','emile.dubois@example.com','34000',5),
(10,'O’Connor','Siobhán','Script','0601020313','siobhan.oconnor@example.com','67000',5),
(11,'Zhang','Wei','Photographe plateau','0601020314','wei.zhang@example.com','13002',6),
(12,'Moreau','Chloé','Cheffe déco','0601020315','chloe.moreau@example.com','33000',1),
(13,'Petrova','Nadia','Maquilleuse','0601020316','nadia.petrova@example.com','59000',1),
(14,'Santos','Miguel','Régisseur','0601020317','miguel.santos@example.com','80000',2),
(15,'Kim','Ji-woo','Comédienne','0601020318','jiwoo.kim@example.com','92000',2),
(16,'Garcia','Carlos','Ingénieur son','0601020319','carlos.garcia@example.com','31000',3),
(17,'Haddad','Youssef','Chef op','0601020320','youssef.haddad@example.com','69002',3),
(18,'Schneider','Lena','Assistante prod','0601020321','lena.schneider@example.com','44001',4),
(19,'Ibrahim','Omar','Monteur','0601020322','omar.ibrahim@example.com','35001',4),
(20,'Lefèvre','Zoé','Comédienne','0601020323','zoe.lefevre@example.com','21001',5),
(21,'Novak','Ivan','Machiniste','0601020324','ivan.novak@example.com','06001',5),
(22,'Fischer','Anya','Styliste','0601020325','anya.fischer@example.com','34001',6),
(23,'Baptiste','Noah','Assistant caméra','0601020326','noah.baptiste@example.com','75002',6),
(24,'Rahman','Aria','Scripte','0601020327','aria.rahman@example.com','13003',1),
(25,'Silva','João','Compositeur','0601020328','joao.silva@example.com','69003',1),
(26,'Khan','Aisha','Assistante son','0601020329','aisha.khan@example.com','31001',2),
(27,'Chen','Li','Cadreur','0601020330','li.chen@example.com','44002',2),
(28,'Bernard','Hugo','Accessoiriste','0601020331','hugo.bernard@example.com','35002',3),
(29,'Yamamoto','Sora','Storyboarder','0601020332','sora.yamamoto@example.com','21002',3),
(30,'Cissé','Fatou','Maquilleuse','0601020333','fatou.cisse@example.com','06002',4),
(31,'Ivanova','Irina','Costumière','0601020334','irina.ivanova@example.com','34002',4),
(32,'Johnson','Ethan','Perchman','0601020335','ethan.johnson@example.com','75003',5),
(33,'Müller','Greta','Assist. montage','0601020336','greta.muller@example.com','13004',5),
(34,'Singh','Arjun','Électricien','0601020337','arjun.singh@example.com','69004',6),
(35,'Tremblay','Élise','Cheffe prod','0601020338','elise.tremblay@example.com','31002',6),
(36,'Ali','Noura','Photographe','0601020339','noura.ali@example.com','33001',1),
(37,'González','Diego','Régisseur','0601020340','diego.gonzalez@example.com','59001',2),
(38,'Papadopoulos','Nikos','Chef op','0601020341','nikos.papadopoulos@example.com','80001',3),
(39,'Hassan','Leïla','Comédienne','0601020342','leila.hassan@example.com','92001',4),
(40,'Nowak','Zofia','Assist. déco','0601020343','zofia.nowak@example.com','67001',5),
(41,'Omar','Layla','Scénariste','0601020344','layla.omar@example.com','75004',6),
(42,'Ferreira','Mariana','Styliste','0601020345','mariana.ferreira@example.com','13005',1),
(43,'Da Silva','Bruno','Accessoiriste','0601020346','bruno.dasilva@example.com','69005',2),
(44,'Huang','Mei','Assist. réal','0601020347','mei.huang@example.com','31003',3),
(45,'Dubois','Camille','Comédien','0601020348','camille.dubois@example.com','44003',4),
(46,'Okafor','Chidi','Machiniste','0601020349','chidi.okafor@example.com','35003',5),
(47,'Sato','Haruki','Cadreur','0601020350','haruki.sato@example.com','21003',6),
(48,'Moreira','Inês','Scripte','0601020351','ines.moreira@example.com','06003',6),
(49,'Bianchi','Giulia','Comédienne','0601020352','giulia.bianchi@example.com','34003',5),
(50,'Kumar','Ravi','Électricien','0601020353','ravi.kumar@example.com','75005',4);

-- FINANCEMENTS (15) : type IN ('Subvention','Investisseur'), montant >= 0, FK -> projet
INSERT INTO financement (id_financement, type_financement, montant_financement, date_obtention_financement, id_projet) VALUES
(1,'Subvention', 80000.00, DATE '2024-02-15',1),
(2,'Investisseur',120000.00, DATE '2024-03-01',1),
(3,'Subvention', 50000.00, DATE '2024-03-10',2),
(4,'Investisseur',150000.00, DATE '2024-04-05',2),
(5,'Subvention', 60000.00, DATE '2024-04-20',3),
(6,'Investisseur',200000.00, DATE '2024-05-01',3),
(7,'Subvention', 40000.00, DATE '2024-05-15',4),
(8,'Investisseur', 90000.00, DATE '2024-05-28',4),
(9,'Subvention', 70000.00, DATE '2024-06-10',5),
(10,'Investisseur',110000.00,DATE '2024-06-22',5),
(11,'Subvention', 65000.00, DATE '2024-07-05',6),
(12,'Investisseur',140000.00,DATE '2024-07-18',6),
(13,'Subvention', 30000.00, DATE '2024-08-01',2),
(14,'Investisseur', 50000.00, DATE '2024-08-15',5),
(15,'Subvention', 25000.00, DATE '2024-09-01',1);



/* ===========================================================
   3) TABLES D’ASSOCIATION DÉPENDANTES : Participation, Possede, Dispose, Dirige
   =========================================================== */

-- PARTICIPATIONS (70) : (id_projet, id_personne, id_contrat) + lieu_affection NOT NULL
-- Règle : on relie chaque personne à son contrat homonyme (id_personne = id_contrat), et on répartit sur les projets.
INSERT INTO Participation (id_projet, id_personne, id_contrat, lieu_affection) VALUES
-- une première passe : 50 participations (1 par personne)
(1, 1, 1,'Paris'),   (1, 2, 2,'Paris'),    (2, 3, 3,'Lyon'),     (2, 4, 4,'Lyon'),
(3, 5, 5,'Marseille'),(3, 6, 6,'Marseille'),(4, 7, 7,'Bordeaux'),(4, 8, 8,'Bordeaux'),
(5, 9, 9,'Toulouse'), (5,10,10,'Toulouse'), (6,11,11,'Nice'),    (1,12,12,'Paris'),
(1,13,13,'Paris'),    (2,14,14,'Lyon'),     (2,15,15,'Lyon'),     (3,16,16,'Marseille'),
(3,17,17,'Marseille'),(4,18,18,'Bordeaux'), (4,19,19,'Bordeaux'), (5,20,20,'Toulouse'),
(5,21,21,'Toulouse'), (6,22,22,'Nice'),     (6,23,23,'Nice'),     (1,24,24,'Paris'),
(1,25,25,'Paris'),    (2,26,26,'Lyon'),     (2,27,27,'Lyon'),     (3,28,28,'Marseille'),
(3,29,29,'Marseille'),(4,30,30,'Bordeaux'), (4,31,31,'Bordeaux'), (5,32,32,'Toulouse'),
(5,33,33,'Toulouse'), (6,34,34,'Nice'),     (6,35,35,'Nice'),     (1,36,36,'Paris'),
(2,37,37,'Lyon'),     (3,38,38,'Marseille'),(4,39,39,'Bordeaux'), (5,40,40,'Toulouse'),
(6,41,41,'Nice'),     (1,42,42,'Paris'),    (2,43,43,'Lyon'),     (3,44,44,'Marseille'),
(4,45,45,'Bordeaux'), (5,46,46,'Toulouse'), (6,47,47,'Nice'),     (1,48,48,'Paris'),
(5,49,49,'Toulouse'), (4,50,50,'Bordeaux'),
-- vingtaine supplémentaire (20) pour atteindre 70
(2, 1, 1,'Lyon'),     (3, 2, 2,'Marseille'),(4, 3, 3,'Bordeaux'), (5, 4, 4,'Toulouse'),
(6, 5, 5,'Nice'),     (1, 6, 6,'Paris'),    (2, 7, 7,'Lyon'),     (3, 8, 8,'Marseille'),
(4, 9, 9,'Bordeaux'), (5,10,10,'Toulouse'), (6,11,11,'Nice'),     (1,12,12,'Paris'),
(2,13,13,'Lyon'),     (3,14,14,'Marseille'),(4,15,15,'Bordeaux'), (5,16,16,'Toulouse'),
(6,17,17,'Nice'),     (1,18,18,'Paris'),    (2,19,19,'Lyon'),     (3,20,20,'Marseille');

-- POSSEDE (20) : un numéro de série (>0) par matériel ; FK vers projet/materiel
INSERT INTO Possede (id_projet, id_materiel, numero_serie) VALUES
(1,'M001',1001),(2,'M002',1002),(3,'M003',1003),(4,'M004',1004),(5,'M005',1005),
(6,'M006',1006),(1,'M007',1007),(2,'M008',1008),(3,'M009',1009),(4,'M010',1010),
(5,'M011',1011),(6,'M012',1012),(1,'M013',1013),(2,'M014',1014),(3,'M015',1015),
(4,'M016',1016),(5,'M017',1017),(6,'M018',1018),(1,'M019',1019),(2,'M020',1020);

-- DISPOSE (50) : états dans ('actif','expiré','suspendu'), FKs vers projet/droit
INSERT INTO Dispose (id_projet, id_droit, etat) VALUES
-- droits 1..50 répartis sur les 6 projets
(1, 1,'actif'),(1, 2,'actif'),(1, 3,'suspendu'),(1, 4,'expiré'),(1, 5,'actif'),
(2, 6,'actif'),(2, 7,'suspendu'),(2, 8,'actif'),(2, 9,'expiré'),(2,10,'actif'),
(3,11,'actif'),(3,12,'suspendu'),(3,13,'actif'),(3,14,'expiré'),(3,15,'actif'),
(4,16,'actif'),(4,17,'suspendu'),(4,18,'actif'),(4,19,'expiré'),(4,20,'actif'),
(5,21,'actif'),(5,22,'suspendu'),(5,23,'actif'),(5,24,'expiré'),(5,25,'actif'),
(6,26,'actif'),(6,27,'suspendu'),(6,28,'actif'),(6,29,'expiré'),(6,30,'actif'),
(1,31,'actif'),(2,32,'suspendu'),(3,33,'actif'),(4,34,'expiré'),(5,35,'actif'),
(6,36,'actif'),(1,37,'suspendu'),(2,38,'actif'),(3,39,'expiré'),(4,40,'actif'),
(5,41,'actif'),(6,42,'suspendu'),(1,43,'actif'),(2,44,'expiré'),(3,45,'actif'),
(4,46,'actif'),(5,47,'suspendu'),(6,48,'actif'),(1,49,'expiré'),(2,50,'actif');

-- DIRIGE (50) : paires manager -> subordonné ; pas d’auto-référence
-- On construit une arbo simple : 1 manage plusieurs, puis d’autres managers intermédiaires.
INSERT INTO Dirige (id_personne, id_personne_1, position_) VALUES
(1, 2,'Chef d’équipe'), (1, 3,'Chef d’équipe'), (1, 4,'Chef d’équipe'), (1, 5,'Chef d’équipe'), (1, 6,'Chef d’équipe'),
(1, 7,'Chef d’équipe'), (1, 8,'Chef d’équipe'), (1, 9,'Chef d’équipe'), (1,10,'Chef d’équipe'), (1,11,'Chef d’équipe'),
(12,13,'Référent'), (12,14,'Référent'), (12,15,'Référent'), (12,16,'Référent'), (12,17,'Référent'),
(18,19,'Référent'), (18,20,'Référent'), (18,21,'Référent'), (18,22,'Référent'), (18,23,'Référent'),
(24,25,'Coordinateur'), (24,26,'Coordinateur'), (24,27,'Coordinateur'), (24,28,'Coordinateur'), (24,29,'Coordinateur'),
(30,31,'Coordinateur'), (30,32,'Coordinateur'), (30,33,'Coordinateur'), (30,34,'Coordinateur'), (30,35,'Coordinateur'),
(36,37,'Lead'), (36,38,'Lead'), (36,39,'Lead'), (36,40,'Lead'), (36,41,'Lead'),
(42,43,'Lead'), (42,44,'Lead'), (42,45,'Lead'), (42,46,'Lead'), (42,47,'Lead'),
(48,49,'Superviseur'), (48,50,'Superviseur'),
-- compléter jusqu’à 50 relations en reciblant des subordonnés distincts déjà non managés par le même manager
(12,18,'Adjoint'), (24,30,'Adjoint'), (36,42,'Adjoint'), (1,12,'Senior'), (1,18,'Senior'),
(1,24,'Senior'), (1,30,'Senior'), (1,36,'Senior'), (1,42,'Senior'), (1,48,'Senior');

