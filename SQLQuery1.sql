CREATE DATABASE HastaneSistemi;

USE HastaneSistemi;

CREATE TABLE Hastalar (
    HastaID INT PRIMARY KEY,
    Ad VARCHAR(50) ,
    Soyad VARCHAR(50) ,
    TCKN VARCHAR(11) UNIQUE,
);

CREATE TABLE Doktorlar (
    DoktorID INT  PRIMARY KEY,
    Ad VARCHAR(50) ,
    Soyad VARCHAR(50),
);

CREATE TABLE Randevular (
    RandevuID INT  PRIMARY KEY,
    HastaID INT,
    DoktorID INT,
    Tarih DATE ,
    Saat TIME ,
    FOREIGN KEY (HastaID) REFERENCES Hastalar(HastaID),
    FOREIGN KEY (DoktorID) REFERENCES Doktorlar(DoktorID)
);

INSERT Hastalar (HastaId,Ad, Soyad, TCKN)
VALUES
(1,'Ali', 'Yýlmaz', '12345678901'),
(2,'Ayþe', 'Demir', '98765432109');

INSERT  Doktorlar (DoktorID,Ad, Soyad)
VALUES
(1,'Ahmet', 'Çelik'),
(2,'Fatma', 'Kaya');

INSERT  Randevular (RandevuID,HastaID, DoktorID, Tarih, Saat)
VALUES
(1,1, 2, '2025-01-15', '10:30:00'),
(2,2, 1, '2025-01-16', '11:00:00');

