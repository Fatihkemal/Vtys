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
VALUES('Öðün','Mithatpaþa',4,'Kayseri','38010','Türkiye'),
      ('Sivas','Alpaslan',9,'Kayseri','38010','Türkiye'),
	  (NULL,'Kýzýlay',6,'Ankara','06400','Türkiye'),
	  (NULL,'Fatih',10,'Kayseri','38010','Türkiye'),
	  ('Ýstiklal','Cumhuriyet',15,'Ýstanbul','34400','Türkiye');
