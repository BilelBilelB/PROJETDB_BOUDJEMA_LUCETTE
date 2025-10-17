create table projet(
	id_projet INT, 
	projet_titre VARCHAR(150), 
    projet_synopsis VARCHAR(2000), 
    budget_estime DECIMAL(12,2), 
    budget_reel DECIMAL(12,2), 
    date_debut_production DATE, 
    date_fin_production DATE, 
    date_sortie DATE, 
    statut_projet VARCHAR(50),
    PRIMARY KEY(id_projet)
    );
create table personne(
	id_personne INT, 
    nom_personne VARCHAR(50), 
    prenom_personne VARCHAR(50), 
    role_personne VARCHAR(50), 
    telephone_personne VARCHAR(15), 
    email_personne VARCHAR(100), 
    code_postal_personne VARCHAR(255), 
    id_projet INT,
    PRIMARY KEY(id_personne),
    FOREIGN KEY(id_projet) REFERENCES projet(id_projet)
);
create table contrat(
	id_contrat INT, 
    type_contrat VARCHAR(50), 
    date_debut_contrat DATE, 
    montant_contrat DECIMAL(12,2), 
    date_fin_contrat DATE,
    PRIMARY KEY(id_contrat)
);
create table financement(
	id_financement INT, 
	type_financement VARCHAR(100), 
	montant_financement DECIMAL(12,2), 
	date_obtention_financement DATE, 
	id_projet INT,
    PRIMARY KEY(id_financement),
    FOREIGN KEY(id_projet) REFERENCES projet(id_projet)
);
create table droit(
	id_droit INT, 
    type_droit VARCHAR(100), 
    territoire_droit VARCHAR(100), 
    duree_droit SMALLINT,
    PRIMARY KEY(id_droit)
);
create table materiel (
	id_materiel VARCHAR(50), 
    type_materiel VARCHAR(50), 
    quantite_materiel INT, 
    etat_materiel VARCHAR(50), 
    localisation_materiel VARCHAR(100),
    PRIMARY KEY(id_materiel)
);
create table Participation (
	id_projet INT, 
    id_personne INT, 
    id_contrat INT, 
    lieu_affection VARCHAR(100),
    FOREIGN KEY(id_projet) REFERENCES projet(id_projet),
    FOREIGN KEY(id_personne) REFERENCES personne(id_personne),
    FOREIGN KEY(id_contrat) REFERENCES contrat(id_contrat)
);
create table Possède (
	id_projet INT, 
    id_materiel INT,
    numero_serie INT,
    FOREIGN KEY(id_projet) REFERENCES projet(id_projet),
    FOREIGN KEY(id_materiel) REFERENCES materiel(id_materiel)
);
create table Dispose (
	id_projet INT,
	id_droit INT, 
    etat VARCHAR(50),
    FOREIGN KEY(id_projet) REFERENCES projet(id_projet),
    FOREIGN KEY(id_droit) REFERENCES droit(id_droit)
);
create table Dirige (
	id_personne INT, 
    id_personne_1 INT, 
    position_ VARCHAR(50),
    FOREIGN KEY(id_personne) REFERENCES personne(id_personne),
    FOREIGN KEY(id_personne_1) REFERENCES personne(id_personne)
);
