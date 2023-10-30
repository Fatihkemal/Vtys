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
	  
	  USE KUTUPHANE
	  UPDATE Adresler SET Cadde='���n' Where Cadde='�stiklal'

	  USE KUTUPHANE
	  DELETE FROM Adresler WHERE Cadde='Sivas'

 USE KUTUPHANE
 SELECT*FROM Yazarlar

CREATE TABLE Yazarlar(
Yazar_no INT IDENTITY(1,1)NOT NULL,
Yazar_adi VARCHAR(20) NOT NULL,
Yazar_soyadi VARCHAR(20) NOT NULL,
PRIMARY KEY(Yazar_no)
);
INSERT INTO Yazarlar
VALUES('Nam�k','Kemal'),
      ('Sabahattin','Ali'),
	  ('Fyodor','Dostoyevski'),
	  ('�zdemir','Asaf'),
	  ('Mustafa','Kutlu');

      USE KUTUPHANE
	  UPDATE Yazarlar SET Yazar_adi='�mer', Yazar_soyadi='Seyfettin' Where Yazar_adi='Nam�k' AND Yazar_soyadi='Kemal'

	  USE KUTUPHANE
	  DELETE FROM Yazarlar WHERE Yazar_adi='Mustafa'

USE KUTUPHANE
SELECT*FROM Uyeler

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
VALUES('Fatih','Akg�n',1,4,'3520689858','fa@mail.com'),
      ('Mehmet','Kara',1,7,'3520654656','mk@mail.com'),
	  ('Fatma','�zt�rk',0,3,'3524563216','a�@mail.com'),
	  ('Selin','�ahin',0,2,'3521234853','s�@mail.com'),
	  ('Ahmet','Karaman',1,1,'3521695469','ak@mail.com');

	    USE KUTUPHANE
	  UPDATE Uyeler SET Uye_adi='Sinem' Where Uye_adi='Selin' AND Uye_soyadi='�ahin'

	  USE KUTUPHANE
	  DELETE FROM Uyeler WHERE Uye_adi='Mehmet'


	  USE KUTUPHANE
SELECT*FROM Kutuphane

CREATE TABLE Kutuphane(
Kutuphane_no INT IDENTITY(1,1) NOT NULL,
Adres_no INT NOT NULL,
K�t�phane_ismi VARCHAR(20) NOT NULL,
Aciklama VARCHAR(20) NOT NULL,
PRIMARY KEY(Kutuphane_no)
);
INSERT INTO Kutuphane
VALUES(1,'Kayseri BB','Merkez K�t�phane'),
      (5,'Meryem Ana','Kilise'),
	  (2,'Talas 7/24','Talas K�t�phane'),
	  (6,'Kocasinan Belediyesi','Erkilet K�t�phane')

	  USE KUTUPHANE
	  UPDATE Kutuphane SET Adres_no=3 Where Adres_no=1

	  USE KUTUPHANE
	  DELETE FROM Kutuphane WHERE Adres_no=6


	  USE KUTUPHANE
SELECT*FROM Kitaplar

CREATE TABLE Kitaplar(
ISBN VARCHAR(15) NOT NULL,
Kitap_adi VARCHAR(30) NOT NULL,
Yay�n_tarihi VARCHAR(15) NOT NULL,
S_sayisi INT NOT NULL,
);
ALTER TABLE Kitaplar ADD
CONSTRAINT PK_ISBN PRIMARY KEY (ISBN)

INSERT INTO Kitaplar
VALUES('6057896514','Su� ve Ceza','05.06.2005',369),
      ('6057896520','Osmanc�k','09.07.2005',156),
	  ('6057896524','Simyac�','15.08.2005',489),
	  ('6057896526','K���k Prens','21.09.2005',119),
	  ('6057896531','Sefiller','12.12.2006',264)


	  USE KUTUPHANE
SELECT*FROM Kitap_Yazar

CREATE TABLE Kitap_Yazar(
ISBN VARCHAR(15) NOT NULL,
Yazar_no INT NOT NULL,
PRIMARY KEY(ISBN)
);

INSERT INTO Kitap_Yazar
VALUES('6059874512',5),
      ('6059874523',1),
	  ('6059874562',3),
	  ('6059874514',7),
	  ('6059874560',2),
	  ('6059874569',6),
	  ('6059874570',8)

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
	  ('T�rk Klasik'),
	  ('D�nya Klasik'),
	  ('�iir');


	  USE KUTUPHANE
SELECT*FROM Emanet

CREATE TABLE Emanet(
Emanet_no INT IDENTITY(1,1) NOT NULL,
ISBN VARCHAR(11) NOT NULL,
Uye_no INT NOT NULL,
K�t�phane_no INT NOT NULL,
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


