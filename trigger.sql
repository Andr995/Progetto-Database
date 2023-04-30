#trigger per gestire la prenotazione 
DELIMITER //
CREATE TRIGGER T_Prenotazione
AFTER INSERT ON Prenotazione
FOR EACH ROW
BEGIN
DECLARE X INT ;
DECLARE Y INT;

SELECT count(*) into X
FROM Prenotazione p, Gruppo g, cliente C
WHERE new.tavolo=p.tavolo and p.prenotante=g.prenotante and C.gruppo=g.idG;
IF X > 8
then 
    UPDATE Tavolo
    SET posti=0
    WHERE new.tavolo=Tavolo.id;
    SET Y= 8 - X;
    INSERT INTO Tavolo(posti)
    VALUES(8+Y);
    ELSE 
        UPDATE Tavolo
        SET posti=posti-X
        WHERE new.tavolo=Tavolo.id;
END IF;

END //
DELIMITER ;


#trigger per gestire l'ordinazione : ad ogni ordinazione si calcola il totale

DELIMITER //
CREATE TRIGGER  AggiornaTotale
AFTER INSERT ON Ordinazione
FOR EACH ROW
BEGIN
    DECLARE X FLOAT;
    SELECT  p.prezzo INTO X
    FROM Ordinazione o NATURAL JOIN Prenotazione pr, Piatto p 
    WHERE new.piatto=o.piatto and o.piatto=p.codice  ;
    UPDATE Gruppo
    SET totale=totale+X
    WHERE Gruppo.prenotante=Prenotazione.prenotante;
END //
DELIMITER ;

#trigger creazione tabella

DELIMITER //
CREATE TRIGGER CreazioneTavolo
AFTER INSERT ON Tavolo
FOR EACH ROW
    BEGIN 
        UPDATE Tavolo
        SET posti=8
        WHERE new.id=id;
    END //
DELIMITER ;

