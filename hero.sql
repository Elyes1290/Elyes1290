SELECT Nom FROM Heros ORDER BY Nom ASC
SELECT Nom, PV FROM Heros WHERE PV = 40
SELECT COUNT(Nom) as "Total ayant 40PV" FROM Heros WHERE PV = 40
SELECT Nom, MAX(PV) FROM Heros
SELECT SUM(PV) as "Somme de tous les PVs des personnages" FROM Heros
SELECT Nom, Competence.ID FROM Heros
JOIN Competence
ON Heros.ID = Competence.ID;