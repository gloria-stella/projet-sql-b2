-- 1. Afficher tous les véhicules
SELECT * FROM vehicules;

-- 2. Compter le nombre total de véhicules
SELECT COUNT(*) AS total_vehicules
FROM vehicules;

-- 3. Afficher les véhicules disponibles
SELECT *
FROM vehicules
WHERE etat = 'Disponible';

-- 4. Afficher les véhicules en maintenance
SELECT *
FROM vehicules
WHERE etat = 'En maintenance';

-- 5. Afficher les véhicules hors service
SELECT *
FROM vehicules
WHERE etat = 'Hors service';

-- 6. Trier les véhicules par autonomie décroissante
SELECT *
FROM vehicules
ORDER BY autonomie_km DESC;

-- 7. Nombre de véhicules par marque
SELECT marque, COUNT(*) AS nombre
FROM vehicules
GROUP BY marque
ORDER BY nombre DESC;

-- 8. Moyenne d’autonomie par marque
SELECT marque, AVG(autonomie_km) AS autonomie_moyenne
FROM vehicules
GROUP BY marque
ORDER BY autonomie_moyenne DESC;

-- 9. Véhicules disponibles dans une ville donnée (ex : Lyon)
SELECT *
FROM vehicules
WHERE localisation = 'Lyon'
  AND etat = 'Disponible';

-- 10. Véhicules avec autonomie > 500 km
SELECT *
FROM vehicules
WHERE autonomie_km > 500;

-- 11. Top 5 des véhicules avec la meilleure autonomie
SELECT *
FROM vehicules
ORDER BY autonomie_km DESC
LIMIT 5;

-- 12. Répartition des véhicules par état
SELECT etat, COUNT(*) AS nombre
FROM vehicules
GROUP BY etat
ORDER BY nombre DESC;

-- 13. Véhicules triés par année croissante
SELECT *
FROM vehicules
ORDER BY annee ASC;

-- 14. Véhicules triés par marque puis par modèle
SELECT *
FROM vehicules
ORDER BY marque, modele;

-- 15. Nombre de véhicules par localisation (ville)
SELECT localisation, COUNT(*) AS nombre
FROM vehicules
GROUP BY localisation
ORDER BY nombre DESC;

-- 16. Moyenne d’autonomie par localisation
SELECT localisation, AVG(autonomie_km) AS autonomie_moyenne
FROM vehicules
GROUP BY localisation
ORDER BY autonomie_moyenne DESC;

-- 17. Véhicules Renault avec autonomie > 400 km
SELECT *
FROM vehicules
WHERE marque = 'Renault'
  AND autonomie_km > 400;

-- 18. Véhicules entre 2022 et 2024
SELECT *
FROM vehicules
WHERE annee BETWEEN 2022 AND 2024;

-- 19. Véhicules dont le modèle contient 'EV'
SELECT *
FROM vehicules
WHERE modele ILIKE '%EV%';

-- 20. Compter les véhicules par état et par ville
SELECT localisation, etat, COUNT(*) AS nombre
FROM vehicules
GROUP BY localisation, etat
ORDER BY localisation, nombre DESC;
