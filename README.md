# Projet SQL cIAra Mobility

## Contexte

cIAra Mobility est une entreprise fictive spécialisée dans la mobilité électrique.  
Le projet consiste à concevoir et implémenter une base de données complète permettant de gérer :

- les véhicules
- les stations
- les clients
- les réservations
- les paiements
- la maintenance
- les techniciens

## Contenu du projet

### Modélisation Merise

**MCD (Modèle Conceptuel de Données)**  
Représentation graphique des entités métier (clients, véhicules, réservations…) et de leurs relations.  
Il permet de comprendre la logique du système avant toute implémentation.

**MLD (Modèle Logique de Données)**  
Traduction du MCD en tables relationnelles (PK, FK, cardinalités).  
C’est la version “SQL-ready” du modèle.

**Dictionnaire de données**  
Document décrivant chaque table et chaque attribut : type, contraintes, rôle métier.  
C’est la référence technique qui nous permet de comprendre la structure de la base.

## Implémentation SQL

**create_tables.sql**  
Contient toutes les instructions `CREATE TABLE` pour générer la base PostgreSQL.  
Inclut les clés primaires, étrangères, contraintes et types.

**insert_test_data.sql**  
Insère des données de test réalistes dans les tables (véhicules, clients, stations…).  
Permet de valider le fonctionnement de la base.

**queries.sql**  
Contient les requêtes SQL demandées dans le projet (sélections, jointures, agrégations…).  
Utilisé pour tester et démontrer la base.

**triggers_functions.sql**  
Regroupe les triggers et fonctions PL/pgSQL.  
Permet d’automatiser certaines règles métier (ex : empêcher une réservation si le véhicule est en maintenance).

## Utilisation de pgAdmin

Le projet utilise PostgreSQL comme moteur de base de données.  
pgAdmin est l’interface graphique qui permet de gérer la base, exécuter les scripts SQL et visualiser les résultats.

### À quoi sert pgAdmin ?

- Créer une base de données
- Exécuter les fichiers SQL du projet (création des tables, insertion des données, requêtes)
- Visualiser les tables et leur contenu
- Tester les triggers et fonctions
- Inspecter les résultats des requêtes

### Comment exécuter le fichier SQL dans pgAdmin ?

Le projet peut être exécuté de deux manières :

- via l’interface graphique pgAdmin
- ou via le terminal avec psql (méthode utilisée pour ce projet)

### Méthode 1 : Exécution via pgAdmin (interface graphique)

1. Ouvrir pgAdmin
2. Clic droit sur la base ensuite **Query Tool**
3. Cliquer sur **Open File**
4. Sélectionner le fichier SQL (ex : `create_tables.sql`)
5. Cliquer sur **Execute**

### Méthode 2 : Exécution via le terminal psql (méthode utilisée)

1. Ouvrir le terminal psql : appuyer sur la base ensuite tool et appuyer enfin sur psql tools eet cela nous ouvre directement le terminal nous permettant d'executer les fichiers SQL avec la commande `\i` :

\i 'C:/chemin vers ton fichier/Projet-SQL-B2/SQL/create_tables.sql'
\i 'C:/chemin vers ton fichier/Projet-SQL-B2/SQL/insert_test_data.sql'
\i 'C:/chemin vers ton fichier/Projet-SQL-B2/SQL/queries.sql'
\i 'C:/chemin vers ton fichier/Projet-SQL-B2/SQL/triggers_functions.sql'

## Résultats attendus

Tables créées

Données insérées

Requêtes fonctionnelles

Triggers opérationnels

Cette méthode permet d’exécuter rapidement tous les scripts SQL directement depuis le terminal.

## Technologies utilisées

PostgreSQL 16

pgAdmin 4

psql (terminal)

SQL

## Auteur

Projet réalisé par Njundom Gloria.S; Youmna Larabi ; Peric Klara
