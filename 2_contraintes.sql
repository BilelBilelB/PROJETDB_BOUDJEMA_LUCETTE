ALTER TABLE projet
  ADD CONSTRAINT ck_projet_titre_nonvide   CHECK (TRIM(projet_titre) <> ''),
  ADD CONSTRAINT ck_projet_budget_estime   CHECK (budget_estime >= 0),
  ADD CONSTRAINT ck_projet_budget_reel     CHECK (budget_reel   >= 0),
  ADD CONSTRAINT ck_projet_budget_coherent CHECK (budget_reel >= budget_estime),
  ADD CONSTRAINT ck_projet_dates_prod      CHECK (
    (date_debut_production IS NOT NULL AND date_debut_production <= date_fin_production)
  ),
  ADD CONSTRAINT ck_projet_statut_valide   CHECK (
    statut_projet IN ('Développement','Tournage','Montage','Sortie','Annulé')
  );



ALTER TABLE personne
  ADD CONSTRAINT ck_personne_tel           CHECK (
    telephone_personne IS NOT NULL
    AND LENGTH = 10
  ),
  ADD CONSTRAINT ck_personne_email         CHECK (
    email_personne IS NOT NULL AND email_personne LIKE '%_@_%._%'
  ),
  ADD CONSTRAINT ck_personne_cp_len        CHECK (
    code_postal_personne IS NULL OR LENGTH(code_postal_personne) BETWEEN 4 AND 10
  );



ALTER TABLE contrat
  ADD CONSTRAINT ck_contrat_montant        CHECK (montant_contrat >= 0),
  ADD CONSTRAINT ck_contrat_dates          CHECK (date_fin_contrat IS NULL OR date_fin_contrat >= date_debut_contrat),
  ADD CONSTRAINT ck_contrat_type_valide    CHECK (
    type_contrat IN ('CDD','CDI','Prestation')
  );



ALTER TABLE financement
  ADD CONSTRAINT ck_financement_montant    CHECK (montant_financement >= 0),
  ADD CONSTRAINT ck_financement_type_valide CHECK (
    type_financement IN ('Subvention','Investisseur')
  );



ALTER TABLE droit
  
  ADD CONSTRAINT ck_droit_duree_positive   CHECK (duree_droit > 0),
  ADD CONSTRAINT ck_droit_type_valide CHECK (
    type_droit IN ('diffusion','cession')
  );




ALTER TABLE materiel
  ADD CONSTRAINT ck_materiel_quantite      CHECK (quantite_materiel >= 0),
  ADD CONSTRAINT ck_materiel_etat_valide   CHECK (
    etat_materiel IN ('neuf','bon','usagé')
    ),
     ADD CONSTRAINT ck_materiel_type_valide   CHECK (
    type_materiel IN ('caméra','décor','costume')
  );




ALTER TABLE Participation
  ADD CONSTRAINT ck_participation_lieu     CHECK (lieu_affection IS NOT NULL);



ALTER TABLE Possede
  ADD CONSTRAINT ck_possede_num_serie_pos  CHECK (numero_serie > 0);



ALTER TABLE Dispose
  ADD CONSTRAINT ck_dispose_etat_valide    CHECK (
    etat IN ('actif','expiré','suspendu')
  );



ALTER TABLE Dirige
  ADD CONSTRAINT ck_dirige_pas_autoref     CHECK (id_personne <> id_personne_1);