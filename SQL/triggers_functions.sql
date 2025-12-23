-- 1. Fonction : empêcher autonomie négative
CREATE OR REPLACE FUNCTION check_autonomie_positive()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.autonomie_km < 0 THEN
        RAISE EXCEPTION 'Autonomie négative interdite : % km', NEW.autonomie_km;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- 2. Trigger : appliquer la règle avant insertion

CREATE TRIGGER trg_check_autonomie_positive
BEFORE INSERT OR UPDATE ON vehicules
FOR EACH ROW
EXECUTE FUNCTION check_autonomie_positive();


-- 3. Fonction : mettre automatiquement l’état à "En maintenance"
--    si autonomie < 100 km
CREATE OR REPLACE FUNCTION auto_set_maintenance()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.autonomie_km < 100 THEN
        NEW.etat := 'En maintenance';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;



-- 4. Trigger : appliquer la règle avant insertion ou update

CREATE TRIGGER trg_auto_set_maintenance
BEFORE INSERT OR UPDATE ON vehicules
FOR EACH ROW
EXECUTE FUNCTION auto_set_maintenance();
