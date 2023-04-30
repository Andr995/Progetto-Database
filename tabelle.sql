CREATE Table Cliente 
(
    cf varchar(8) NOT NULL ,
    cognome varchar(30) NOT NULL,
    nome varchar(30) NOT NULL,
    città VARCHAR(20),
    gruppo INT NOT NULL, 
    PRIMARY KEY(cf)
);
#ricordati di inserire dopo le chiavi esterne, gruppo si riferisce 
#

CREATE TABLE Gruppo
(
    idG INT NOT NULL AUTO_INCREMENT ,
    nome varchar(10),
    totale FLOAT,
    prenotante varchar(8) NOT NULL,
    PRIMARY KEY(idG),
    FOREIGN KEY (prenotante) REFERENCES Cliente(cf)
);
#chiave esterna in cliente 

ALTER TABLE Cliente
ADD FOREIGN KEY (gruppo) REFERENCES Gruppo(prenotante) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE Tavolo
( 
    id INT AUTO_INCREMENT,
    posti INT,
    descrizione VARCHAR(100),
    PRIMARY KEY (id)
);
CREATE TABLE Prenotazione
(
    tavolo INT,
    prenotante VARCHAR(8),
    data DATE,
    ora TIME,
    PRIMARY KEY (tavolo,prenotante),
    FOREIGN KEY (prenotante) REFERENCES Gruppo(prenotante),
    FOREIGN KEY (tavolo) REFERENCES Tavolo(idG)
);
CREATE TABLE Piatto (
    codice int AUTO_INCREMENT,
    nome varchar(50),
    prezzo FLOAT, 
    chef int,
    PRIMARY KEY (codice)
)
CREATE TABLE Chef
(
    id INT AUTO_INCREMENT,
    nome varchar(30) NOT NULL,
    cognome varchar(30) NOT NULL,
    specializzazione varchar(40),
    PRIMARY KEY (id)
);
ALTER TABLE Piatto
ADD FOREIGN KEY (chef) REFERENCES Chef(id);
CREATE TABLE Ordinazione 
(
    piatto int,
    tavolo int,
    dataP date,
    oraP time,
    PRIMARY KEY (piatto,tavolo,dataP,oraP),
    FOREIGN KEY (piatto) REFERENCES Piatto(codice),
    FOREIGN KEY (tavolo) REFERENCES Tavolo(id),
    FOREIGN KEY (dataP) REFERENCES prenotazione(data),
    FOREIGN KEY (oraP) REFERENCES prenotazione(ora)
);