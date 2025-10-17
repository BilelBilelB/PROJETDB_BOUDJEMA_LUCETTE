# Liste des projets dont le budget réel dépasse 1 million d'euros, triés du plus cher au moins cher
SELECT projet_titre, budget_reel FROM projet WHERE budget_reel > 1000000 ORDER BY budget_reel DESC; 

#Liste des personnes qui ont un rôle de type "acteur" ou "réalisateur"
SELECT nom_personne, prenom_personne, role_personne FROM personne WHERE role_personne IN ('acteur', 'réalisateur'); 

# Projets dont la date de sortie est prévue entre le 1er janvier et le 31 décembre 2025
SELECT projet_titre, date_sortie FROM projet WHERE date_sortie BETWEEN '2025-01-01' AND '2025-12-31'; 

# Téléphones uniques des techniciens
SELECT DISTINCT telephone_personne FROM personne WHERE role_personne = 'technicien'; 

# Matériel localisé à Paris, avec nom de type contenant "caméra"
SELECT type_materiel, quantite_materiel FROM materiel WHERE localisation_materiel LIKE '%Paris%' AND type_materiel LIKE '%caméra%'; 

# Somme des financements par type
SELECT type_financement, SUM(montant_financement) AS total FROM financement GROUP BY type_financement; 

# Moyenne des budgets réels par statut de projet
SELECT statut_projet, AVG(budget_reel) AS budget_moyen FROM projet GROUP BY statut_projet; 

# Nombre de personnes par projet
SELECT id_projet, COUNT(*) AS nb_personnes FROM personne GROUP BY id_projet; 

# Projets avec un total des contrats supérieur à 500 000 €
SELECT p.id_projet, p.projet_titre, SUM(c.montant_contrat) AS total_contrats FROM projet p JOIN Participation pa ON p.id_projet = pa.id_projet JOIN contrat c ON pa.id_contrat = c.id_contrat GROUP BY p.id_projet, p.projet_titre HAVING SUM(c.montant_contrat) > 500000; 

# Nombre de types de matériel différents par lieu de stockage
SELECT localisation_materiel, COUNT(DISTINCT type_materiel) AS nb_types FROM materiel GROUP BY localisation_materiel; 

# Liste des personnes avec leur projet
SELECT prenom_personne, nom_personne, projet_titre FROM personne JOIN projet ON personne.id_projet = projet.id_projet; 

# Liste des projets avec les financements associés (même s’il n’y a pas de financement)
SELECT p.projet_titre, f.type_financement, f.montant_financement FROM projet p LEFT JOIN financement f ON p.id_projet = f.id_projet; 

# Liste des contrats avec leurs participants et projets associés
SELECT c.id_contrat, c.type_contrat, c.montant_contrat, pr.nom_personne, p.projet_titre FROM contrat c JOIN Participation pa ON c.id_contrat = pa.id_contrat JOIN personne pr ON pa.id_personne = pr.id_personne JOIN projet p ON pa.id_projet = p.id_projet; 

# Liste du matériel affecté à un projet

SELECT m.type_materiel, m.quantite_materiel, a.projet_titre FROM materiel m JOIN (SELECT po.id_materiel,p.projet_titre FROM Possède po JOIN projet p ON po.id_projet = p.id_projet) as a ON m.id_materiel=a.id_materiel; 

# Liste des projets sans personnes affectées
SELECT p.projet_titre FROM projet p LEFT JOIN personne pr ON p.id_projet = pr.id_projet WHERE pr.id_personne IS NULL; 

# Projets ayant reçu des financements de type "subvention"
SELECT projet_titre FROM projet WHERE id_projet IN ( SELECT id_projet FROM financement WHERE type_financement = 'subvention' ); 
# Liste des personnes non affectées à un contrat
SELECT nom_personne, prenom_personne FROM personne WHERE id_personne NOT IN ( SELECT id_personne FROM Participation ); 

# Projets ayant au moins un contrat supérieur à 100 000 €
SELECT projet_titre FROM projet p WHERE EXISTS ( SELECT 1 FROM Participation pa JOIN contrat c ON pa.id_contrat = c.id_contrat WHERE pa.id_projet = p.id_projet AND c.montant_contrat > 100000 ); 

# Personnes ayant un contrat avec un montant supérieur à tous les autres contrats
SELECT prenom_personne, nom_personne FROM personne WHERE id_personne IN ( SELECT pa.id_personne FROM Participation pa JOIN contrat c ON pa.id_contrat = c.id_contrat WHERE c.montant_contrat >= ALL ( SELECT montant_contrat FROM contrat ) ); 

# Projets sans financement
SELECT projet_titre FROM projet WHERE NOT EXISTS ( SELECT 1 FROM financement WHERE financement.id_projet = projet.id_projet ); 
