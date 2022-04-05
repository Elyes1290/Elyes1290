-- DROP TABLE Armes;
-- DROP TABLE Héros;
-- DROP TABLE Compétence;


CREATE TABLE Armes(
	ID tinyint(1) NOT NULL INT AUTO_INCREMENT,
    HerosID tinyint(1) NOT NULL,
    Nom varchar(50) NOT NULL,
    Genre varchar(50) NOT NULL,
    Degat varchar(50) NOT NULL
    
);

CREATE TABLE Heros(
	ID tinyint(1) NOT NULL INT AUTO_INCREMENT,
    Nom varchar(50) NOT NULL,
    PV tinyint(2) NOT NULL,
    Bonus tinyint(2) NOT NULL,
	Defense tinyint(2) NOT NULL,
	ArmeEnMain tinyint(2) NOT NULL,
	Satut tinyint(2) NULL,
    Immunite varchar(20) NOT NULL


    
);


CREATE TABLE Competence(
	ID tinyint(1) NOT NULL INT AUTO_INCREMENT,
    Genre ENUM('Satut', 'PV', 'Defense', 'Bonus', 'ArmeEnMain', 'Immunite'),
    Effet varchar(50)
        
);



INSERT INTO Armes(Nom, Genre, Degat) VALUES('Batte en mousse', 'Mousse', 0);
INSERT INTO Armes(Nom, Genre, Degat) VALUES('Vanne de Liujen', 'Déstabilisante', 10);
INSERT INTO Armes(Nom, Genre, Degat) VALUES('Microsoft', 'effrayant', 20);
INSERT INTO Armes(Nom, Genre, Degat) VALUES('Une feuille', 'Tranchant', 5);
INSERT INTO Armes(Nom, Genre, Degat) VALUES('Une caillou', 'contondant', 5);
INSERT INTO Armes(Nom, Genre, Degat) VALUES('Une ciseau', 'perçant', 5);
INSERT INTO Heros(Nom, PV, Bonus, Defense, ArmeEnMain, Immunite VALUES('Comar le joyeux', 40, 2, 15, 0, 'Dégât en mousse');
INSERT INTO Heros(Nom, PV, Bonus, Defense, ArmeEnMain, Immunite VALUES('Kirderf le combatif', 35, 14, 5, 0, 'Aucune');
INSERT INTO Heros(Nom, PV, Bonus, Defense, ArmeEnMain, Immunite VALUES('Comar le joyeux', 45, 5, 8, 0, 'Déstabilisant');


INSERT INTO 




ALTER TABLE Armes ADD CONSTRAINT PK_Armes_ID PRIMARY KEY Armes(ID);
ALTER TABLE Heros ADD CONSTRAINT PK_Heros_ID PRIMARY KEY Heros(ID);
ALTER TABLE Competence ADD CONSTRAINT PK_Competence_ID PRIMARY KEY Competence(ID);


ALTER TABLE Armes ADD CONSTRAINT FK_Armes_Heros FOREIGN KEY (HerosID) REFERENCES Armes(ID);

