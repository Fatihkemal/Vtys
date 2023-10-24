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