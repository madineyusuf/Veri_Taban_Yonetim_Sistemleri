-- BTÜ - Veri Tabanı Yönetim Sistemleri -- 2026 Bahar Dönemi - Proje 2
-- Madina Yusupova - 24360859922
-- Müşteri ve Sipariş Yönetimi

-- Ad, Soyad, Email ve Telefon numarası gibi müşteri bilgilerini içeren veriler eklenmiştir
INSERT INTO musteriler (musteri_ID, mus_ad, mus_soyad, mus_email, mus_tel) VALUES 
(1, 'Madina', 'Yusupova', 'yusvpova@gmail.com', '05551112233'),
(2, 'Firuza', 'Sabirova', 'firuza@gmail.com', '05552223344'),
(3, 'Mehmet', 'Demir', 'mehmet@email.com', '05553334455'),
(4, 'Elif', 'Şahin', 'elif@email.com', '05554445566'),
(5, 'Can', 'Aslan', 'can@email.com', '05555556677');

-- Adresler, siparişler ve sipariş detayları için veriler 
INSERT INTO adresler (adres_ID, musteri_ID, adres_basligi, sehir, ilce, acik_adres) VALUES
(10, 1, 'Ev Adresi', 'Bursa', 'Osmangazi', 'Altıparmak Cad. No:5'),
(20, 1, 'İş Yeri', 'İstanbul', 'Kadıköy', 'Moda Sok. No:12'),
(30, 2, 'Ev Adresi', 'Bursa', 'Nilüfer', 'Görükle Mah. No:1'),
(40, 3, 'Ofis', 'Ankara', 'Çankaya', 'Atatürk Bulvarı No:88'),
(50, 4, 'Ev Adresi', 'İzmir', 'Bornova', 'Ege Cad. No:45');

-- Siparişler için veriler 
INSERT INTO siparisler (siparis_ID, siparis_tarihi, toplam_tutar, musteri_ID, adres_ID) VALUES
(100, '2026-05-01 10:30:00', 1500, 1, 10),
(201, '2026-05-02 14:15:00', 450, 1, 20),
(302, '2026-05-03 09:00:00', 3200, 2, 30),
(403, '2026-05-04 18:45:00', 750, 3, 40),
(504, '2026-05-05 11:20:00', 120, 4, 50);

-- Sipariş detayları için veriler 
INSERT INTO siparis_detay (detay_ID, adet, birim_fiyat, siparis_ID, urun_ID) VALUES
(1001, 2, 500, 100, 501),
(1002, 1, 500, 100, 502),
(2001, 3, 150, 201, 503),
(3001, 1, 3200, 302, 504),
(4001, 1, 750, 403, 505),
(5001, 2, 60, 504, 506);