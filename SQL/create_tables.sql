CREATE TABLE stations (
    id_station SERIAL PRIMARY KEY,
    nom_station VARCHAR(100) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    capacite INT CHECK (capacite > 0)
);
CREATE TABLE vehicules (
    id_vehicule SERIAL PRIMARY KEY,
    marque VARCHAR(100) NOT NULL,
    modele VARCHAR(100) NOT NULL,
    annee INT CHECK (annee >= 2000),
    energie VARCHAR(50) NOT NULL,
    autonomie_km INT CHECK (autonomie_km > 0),
    immatriculation VARCHAR(20) UNIQUE NOT NULL,
    etat VARCHAR(50) CHECK (etat IN ('Disponible', 'En service', 'En maintenance', 'Hors service')),
    localisation VARCHAR(255),
    id_station INT REFERENCES stations(id_station)
);
CREATE TABLE clients (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telephone VARCHAR(20)
);
CREATE TABLE techniciens (
    id_technicien SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    specialite VARCHAR(100)
);
CREATE TABLE reservations (
    id_reservation SERIAL PRIMARY KEY,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    id_client INT REFERENCES clients(id_client),
    id_vehicule INT REFERENCES vehicules(id_vehicule)
);
CREATE TABLE paiements (
    id_paiement SERIAL PRIMARY KEY,
    montant NUMERIC(10,2) CHECK (montant >= 0),
    mode_paiement VARCHAR(50),
    date_paiement DATE NOT NULL,
    id_reservation INT REFERENCES reservations(id_reservation)
);
CREATE TABLE maintenance (
    id_maintenance SERIAL PRIMARY KEY,
    date_interv DATE NOT NULL,
    type_interv VARCHAR(100),
    id_vehicule INT REFERENCES vehicules(id_vehicule),
    id_technicien INT REFERENCES techniciens(id_technicien)
);
