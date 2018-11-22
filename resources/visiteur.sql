CREATE TABLE TypeSociete(
   IdTypeSociete SERIAL,
   LibelleTypeSociete VARCHAR(50),
   PRIMARY KEY( IdTypeSociete )
);

CREATE TABLE Personne(
   IdPersonne SERIAL,
   TypeSociete INTEGER,
   Nom VARCHAR(50),
   Prenom VARCHAR(50),
   PRIMARY KEY( IdPersonne )
);

ALTER TABLE Personne ADD CONSTRAINT FK_TypeSocietePersonne FOREIGN KEY (TypeSociete) REFERENCES TypeSociete(IdTypeSociete);
