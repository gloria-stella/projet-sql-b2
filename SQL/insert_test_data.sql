INSERT INTO stations (nom_station, adresse, capacite) VALUES
('Station Paris Centre', '12 Rue Lafayette, Paris', 20),
('Station La Défense', '5 Parvis de La Défense, Paris', 30),
('Station Montreuil', '88 Avenue de Paris, Montreuil', 15);
INSERT INTO clients (nom, prenom, email, telephone) VALUES
('Dupont', 'Marie', 'marie.dupont@example.com', '0601020304'),
('Martin', 'Lucas', 'lucas.martin@example.com', '0605060708'),
('Nguyen', 'Sarah', 'sarah.nguyen@example.com', '0611223344');
INSERT INTO techniciens (nom, specialite) VALUES
('Bernard', 'Batterie'),
('Lopez', 'Moteur électrique'),
('Diallo', 'Systèmes embarqués');
INSERT INTO vehicules (marque, modele, annee, energie, autonomie_km, immatriculation, etat, localisation, id_station) VALUES
('Renault', 'Zoé', 2022, 'Électrique', 320, 'AB-123-CD', 'Disponible', 'Paris', 1),
('Tesla', 'Model 3', 2023, 'Électrique', 450, 'EF-456-GH', 'En service', 'La Défense', 2),
('Peugeot', 'e-208', 2021, 'Électrique', 280, 'IJ-789-KL', 'En maintenance', 'Montreuil', 3);
INSERT INTO reservations (date_debut, date_fin, id_client, id_vehicule) VALUES
('2025-01-10', '2025-01-12', 1, 1),
('2025-02-05', '2025-02-06', 2, 2),
('2025-03-01', '2025-03-03', 3, 1);
INSERT INTO paiements (montant, mode_paiement, date_paiement, id_reservation) VALUES
(45.00, 'Carte bancaire', '2025-01-10', 1),
(20.00, 'PayPal', '2025-02-05', 2),
(60.00, 'Carte bancaire', '2025-03-01', 3);
INSERT INTO maintenance (date_interv, type_interv, id_vehicule, id_technicien) VALUES
('2025-01-15', 'Changement batterie', 3, 1),
('2025-02-20', 'Diagnostic moteur', 2, 2),
('2025-03-10', 'Mise à jour logiciel', 1, 3);
