USE KUTUPHANE
SELECT*FROM Yazarlar

CREATE TABLE Yazarlar(
Yazar_no INT IDENTITY(1,1)NOT NULL,
Yazar_adi VARCHAR(20) NOT NULL,
Yazar_soyadi VARCHAR(20) NOT NULL,
PRIMARY KEY(Yazar_no)
);
INSERT INTO Yazarlar
VALUES('Namýk','Kemal'),
      ('Sabahattin','Ali'),
	  ('Fyodor','Dostoyevski'),
	  ('Özdemir','Asaf'),
	  ('Mustafa','Kutlu');