USE KUTUPHANE
SELECT*FROM Adresler


CREATE TABLE Adresler(
Adres_no INT IDENTITY(1,1) NOT NULL,
Cadde VARCHAR(20),
Mahalle VARCHAR(20) NOT NULL,
Bina_no INT NOT NULL,
Sehir VARCHAR(20) NOT NULL,
Posta_kodu VARCHAR(10) NOT NULL,
Ulke VARCHAR(20) NOT NULL,
PRIMARY KEY(Adres_no)
);

INSERT INTO Adresler 
VALUES('���n','Mithatpa�a',4,'Kayseri','38010','T�rkiye'),
      ('Sivas','Alpaslan',9,'Kayseri','38010','T�rkiye'),
	  (NULL,'K�z�lay',6,'Ankara','06400','T�rkiye'),
	  (NULL,'Fatih',10,'Kayseri','38010','T�rkiye'),
	  ('�stiklal','Cumhuriyet',15,'�stanbul','34400','T�rkiye');
