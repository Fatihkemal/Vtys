USE KUTUPHANE
SELECT*FROM Kitap_K�t�phane

CREATE TABLE Kitap_K�t�phane(
K�t�phane_no INT NOT NULL,
ISBN VARCHAR(11) NOT NULL,
Miktar INT NOT NULL,
PRIMARY KEY(ISBN)
);

INSERT INTO Kitap_K�t�phane
VALUES(6,'6051896501',1),
      (1,'6051896503',6),
      (3,'6051896514',1),
	  (4,'6051896521',3),
	  (2,'6051896540',5),
	  (2,'6051896513',2)
	  
	  
	  