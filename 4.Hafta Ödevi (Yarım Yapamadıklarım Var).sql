USE KUTUPHANE
SELECT*FROM Emanet

CREATE TABLE Emanet(
Emanet_no INT IDENTITY(1,1) NOT NULL,
ISBN VARCHAR(11) NOT NULL,
Uye_no INT NOT NULL,
Kütüphane_no INT NOT NULL,
Emanet_Tarihi VARCHAR(20) NOT NULL,
Teslim_Tarihi VARCHAR (20)
PRIMARY KEY (Emanet_no)
);
INSERT INTO Emanet
VALUES('6051236598',1,5,'15.02.2021',NULL),
      ('6051236548',3,2,'17.04.2021','22.04.2021'),
	  ('6051236502',6,9,'30.03.2021',NULL),
	  ('6051236509',2,3,'15.12.2021','01.01.2022'),
	  ('6051236511',8,1,'12.02.2022','20.02.2022')
	  
	  4.Soru
	  SELECT*FROM Emanet
	  WHERE(Emanet_Tarihi>'01.01.2021')

	  9.Soru
	  SELECT*FROM Emanet
	  WHERE Teslim_Tarihi BETWEEN '01.01.2022' AND '31.12.2022'


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

	  5.Soru
	  SELECT*FROM Adresler
	  WHERE Sehir='Kayseri'
	  AND Posta_kodu=

	  8.Soru
	  SELECT*FROM Adresler
	  ORDER BY Sehir ASC
	  
	  SELECT*FROM Adresler
	  ORDER BY Sehir DESC

	  11.Soru
	  SELECT*FROM Adresler
	  WHERE Sehir='Kayseri'


	  USE KUTUPHANE

CREATE TABLE Uyeler(
Uye_no INT IDENTITY(1,1) NOT NULL,
Uye_adi VARCHAR(20) NOT NULL,
Uye_soyadi VARCHAR(20) NOT NULL,
Cinsiyet INT NOT NULL,
Adres_no INT NOT NULL,
Telefon VARCHAR(15) NOT NULL,
E_posta VARCHAR(20) NOT NULL,
PRIMARY KEY(Uye_no),
);

INSERT INTO Uyeler 
VALUES('Fatih','Akgün',1,4,'3520689858','fa@mail.com'),
      ('Mehmet','Kara',1,7,'3520654656','mk@mail.com'),
	  ('Fatma','Öztürk',0,3,'3524563216','aö@mail.com'),
	  ('Selin','Þahin',0,2,'3521234853','sþ@mail.com'),
	  ('Ahmet','Karaman',1,1,'3521695469','ak@mail.com');

	  3.Soru
	  SELECT*FROM Uyeler
	  ORDER BY Uye_no ASC

	   SELECT*FROM Uyeler
	  ORDER BY Uye_no DESC


