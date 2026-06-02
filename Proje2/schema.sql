-- BTÜ - Veri Tabanı Yönetim Sistemleri -- 2026 Bahar Dönemi - Proje 2
-- Madina Yusupova - 24360859922
-- Müşteri ve Sipariş Yönetimi

CREATE TABLE musteriler (
    musteri_ID INT NOT NULL,
    mus_ad VARCHAR(50) NOT NULL,
    mus_soyad VARCHAR(45) NOT NULL,
    mus_email VARCHAR(50) NOT NULL,
    mus_tel VARCHAR(80) NOT NULL,
    PRIMARY KEY (musteri_ID)
);

CREATE TABLE adresler (
    adres_ID INT NOT NULL,
    musteri_ID INT NOT NULL,
    adres_basligi VARCHAR(50) NOT NULL, 
    sehir VARCHAR(80) NOT NULL,
    ilce VARCHAR(80) NOT NULL,
    acik_adres VARCHAR(100) NOT NULL,
    PRIMARY KEY (adres_ID),
    CONSTRAINT FK_Adres_Musteri FOREIGN KEY (musteri_ID) 
        REFERENCES musteriler(musteri_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE siparisler (
    siparis_ID INT NOT NULL,
    siparis_tarihi DATETIME NOT NULL,
    toplam_tutar INT NOT NULL,
    musteri_ID INT NOT NULL,
    adres_ID INT NOT NULL,
    PRIMARY KEY (siparis_ID),
    CONSTRAINT FK_Siparis_Musteri FOREIGN KEY (musteri_ID) 
        REFERENCES musteriler(musteri_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_Siparis_Adres FOREIGN KEY (adres_ID) 
        REFERENCES adresler(adres_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE siparis_detay (
    detay_ID INT NOT NULL,
    adet INT NOT NULL,
    birim_fiyat FLOAT NOT NULL,
    siparis_ID INT NOT NULL,
    urun_ID INT NULL, -- Bağımsız modül mimarisi için dış anahtar kaldırıldı
    PRIMARY KEY (detay_ID),
    CONSTRAINT FK_Detay_Siparis FOREIGN KEY (siparis_ID) 
        REFERENCES siparisler(siparis_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);