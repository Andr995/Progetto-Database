

#operazione 1
DELIMITER //
CREATE PROCEDURE op1(IN  cit VARCHAR(20))
BEGIN
    SELECT data 
    FROM Prenotazione P , Cliente C 
    WHERE P.prenotante=C.cf and città=cit ;
END //
DELIMITER ;
#operazione 2
DELIMITER //
CREATE PROCEDURE op2 (IN gr VARCHAR(8))
BEGIN 
    SELECT piatto
    FROM Ordinazione O,Prenotazione P 
    WHERE O.tavolo=P.tavolo and prenotante=gr;

END //
DELIMITER ;
#operazione 3
DELIMITER //
CREATE PROCEDURE op3 (IN piat INT)
BEGIN 
   SELECT count(*)
   FROM Ordinazione O, Prenotazione P, Gruppo G
   WHERE Piatto=piat and O.tavolo=P.tavolo and G.prenotante=P.prenotante
   GROUP BY idG;

END //
DELIMITER ;

#operazione 4
DELIMITER //
CREATE PROCEDURE op4(IN cuoco INT)
BEGIN
    SELECT p.nome
    FROM Chef c,Piatto p
    WHERE c.chef=id and c.chef=cuoco;
END //

DELIMITER ;
DELIMITER //
CREATE PROCEDURE op5() 
BEGIN 
    SELECT O.tavolo,P.codice,P.nome
    FROM Ordinazione O, Piatto P 
    WHERE  O.piatto=P.codice
    GROUP BY O.tavolo;
END//
DELIMITER ;

#operazione 6

DELIMITER //
CREATE PROCEDURE op6() 
BEGIN 
    SELECT prenotante , nome, cognome
    FROM Gruppo G, Cliente C
    WHERE prenotante=cf
    GROUP BY prenotante;
END//
DELIMITER ;

#operazione 7
DELIMITER //
CREATE PROCEDURE op7() 
BEGIN 
    SELECT G.idG
    FROM Ordinazione O, Gruppo G, Prenotazione P
    WHERE O.tavolo=P.prenotante and NOT EXISTS (
        SELECT *
        FROM Piatto
        WHERE O.piatto=codice
    );


END //
DELIMITER;
# Operazione 8
DELIMITER //
CREATE PROCEDURE Op8(IN cuoco INT, IN nome varchar (20) , IN cognome varchar(20) , IN specializzazione INT )
BEGIN
        INSERT INTO Chef VALUES (cuoco,nome,cognome,specializzazione);
END //
DELIMITER ;



#op9
DELIMITER //
CREATE PROCEDURE Op9() 
BEGIN
    SELECT idG,totale
    FROM gruppo
    GROUP BY idG;
END //
DELIMITER ;