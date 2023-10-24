USE KUTUPHANE
SELECT*FROM Kutuphane

CREATE TABLE Kutuphane(
Kutuphane_no INT IDENTITY(1,1) NOT NULL,
Adres_no INT NOT NULL,
Kütüphane_ismi VARCHAR(20) NOT NULL,
Aciklama VARCHAR(20) NOT NULL,
PRIMARY KEY(Kutuphane_no)
);
INSERT INTO Kutuphane
VALUES(1,'Kayseri BB','Merkez Kütüphane'),
      (5,'Meryem Ana','Kilise'),
	  (2,'Talas 7/24','Talas Kütüphane'),
	  (6,'Kocasinan Belediyesi','Erkilet Kütüphane')

