USE KUTUPHANE
SELECT*FROM Kitap_Kategori

CREATE TABLE Kitap_Kategori(
ISBN VARCHAR(11) NOT NULL,
Kategori_no INT NOT NULL,
PRIMARY KEY(ISBN)
);
INSERT INTO Kitap_Kategori 
VALUES('6054569817',3),
      ('6054569823',5),
      ('6054569802',1),
	  ('6054569809',3),
	  ('6054569845',6),
	  ('6054569820',2),
	  ('6054569815',7)
	 