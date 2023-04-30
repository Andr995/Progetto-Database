#INSERIMENTO di CLIENTE
INSERT INTO Cliente (cf, nome, cognome , città, gruppo)
VALUES ('AEV455', 'Saro', 'Falsaperla', 'Catania',1);
 INSERT INTO Cliente (cf, nome, cognome , città, gruppo)
VALUES ('AE333', 'Giuseppe', 'Rossi', 'Potenza',1);
INSERT INTO Cliente (cf, nome, cognome , città, gruppo)
VALUES ('AEV4335', 'Marco', 'Rossi', 'Catania',2);
INSERT INTO Cliente (cf, nome, cognome , città, gruppo)
VALUES ('AE456', 'Mario', 'Giordano', 'Catania',1);
INSERT INTO Cliente (cf, nome, cognome , città, gruppo)
VALUES ('AEV415', 'Giovanni','Latta' , 'Cagliari',2);
INSERT INTO Cliente (cf, nome, cognome, città, gruppo)
VALUES ('AEV425', 'Davide', 'Lino', 'Cagliari',3);
INSERT INTO Cliente (cf, nome, cognome , città, gruppo)
VALUES ('AEV456', 'Sara', 'Zinca', 'Catania',5);
#INSERIMENTO GRUPPO


INSERT INTO Gruppo(idG,nome,prenotante)
VALUES(1,'giovani','AEV455');
INSERT INTO Gruppo(idG,nome,prenotante)
VALUES(2,'vecchi','AEV4335');
INSERT INTO Gruppo(idG,nome,prenotante)
VALUES(3,'colleghi','AEV425');
INSERT INTO Gruppo(idG,nome,prenotante)
VALUES(5,'famiglia','AEV456');

#Inserimento  Tavolo

INSERT INTO Tavolo(id,posti,descrizione)
VALUES(1,8,' nessuno');
INSERT INTO Tavolo(id,posti,descrizione)
VALUES(2,8,' prenotato');
INSERT INTO Tavolo(id,posti,descrizione)
VALUES(3,8,'il preferito');
INSERT INTO Tavolo(id,posti,descrizione)
VALUES(4,8,'di tutti');
INSERT INTO Tavolo(id,posti,descrizione)
VALUES(5,8,'boh');
#Inserimento Piatto


INSERT INTO Piatto(codice,nome,prezzo,chef)
VALUES(1, 'Pasta con la salsa',8.50,3);
INSERT INTO Piatto(codice,nome,prezzo,chef)
VALUES(2, 'cotoletta di pollo',1.50,3);
INSERT INTO Piatto(codice,nome,prezzo,chef)
VALUES(3, 'Carne di cavallo',3.0,2);
INSERT INTO Piatto(codice,nome,prezzo,chef)
VALUES(4, 'Lasagne al pistacchio',11,1);
INSERT INTO Piatto(codice,nome,prezzo,chef)
VALUES(5, 'Cannoli con la ricotta',11.34,1);
#Inserimento Chef
INSERT INTO Chef(id,nome,cognome,specializzazione)
VALUES(1, "Saro","Oliva","primi piatti");
INSERT INTO Chef(id,nome,cognome,specializzazione)
VALUES(2, "Turi","Spina","secondi piatti");
INSERT INTO Chef(id,nome,cognome,specializzazione)
VALUES(3, "Turi","Dell'olio","primi piatti");
INSERT INTO Chef(id,nome,cognome,specializzazione)
VALUES(4, "Franco","Battiato","piatti speciali");
INSERT INTO Chef(id,nome,cognome,specializzazione)
VALUES(5, "Franco","Barbanera","dolci");

#inserimento Prenotazione

INSERT INTO Prenotazione(tavolo,prenotante,data,ora)
VALUES (1,'AEV455','2020/06/07','08:43');

INSERT INTO Prenotazione(tavolo,prenotante,data,ora)
VALUES (3,'AEV4335','2021/06/07','08:43');

INSERT INTO Prenotazione(tavolo,prenotante,data,ora)
VALUES (2,'AEV456','2020/06/08','08:23');
INSERT INTO Prenotazione(tavolo,prenotante,data,ora)
VALUES (4,'AEV425','2020/06/07','08:43');
#inserimento ordinazione 
INSERT INTO Ordinazione(piatto,tavolo,dataP,oraP)
VALUES (1,2,'2020/06/08','08:23');
INSERT INTO Ordinazione(piatto,tavolo,dataP,oraP)
VALUES (1,3,'2021/06/07','08:43');
INSERT INTO Ordinazione(piatto,tavolo,dataP,oraP)
VALUES (4,3,'2021/06/07','08:43');
INSERT INTO Ordinazione(piatto,tavolo,dataP,oraP)
VALUES (2,2,'2020/06/08','08:23');


