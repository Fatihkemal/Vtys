USE KUTUPHANE
SELECT*FROM Kategoriler

CREATE TABLE Kategoriler(
Kategori_no INT IDENTITY(1,1) NOT NULL,
Kategori_adi VARCHAR(20) NOT NULL,
PRIMARY KEY(Kategori_no)
);
INSERT INTO Kategoriler
VALUES('Roman'),
      ('Hikaye'),
	  ('Türk Klasik'),
	  ('Dünya Klasik'),
	  ('Þiir');
