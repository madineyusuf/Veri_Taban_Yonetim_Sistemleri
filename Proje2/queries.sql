-- BTÜ - Veri Tabanı Yönetim Sistemleri -- 2026 Bahar Dönemi - Proje 2
-- Madina Yusupova - 24360859922
-- Müşteri ve Sipariş Yönetimi

-- SORGU 1
-- Amaç olarak en az 1 adet sipariş vermiş müşterilerin harcama istatistiklerini toplam tutara göre büyükten küçüğe sıralar
-- Mantığına bakarsak, musteriler ve siparisler tabloları "musteri_ID" üzerinden INNER JOIN ile birleştirilmiştir
-- GROUP BY ile özetlenen veriler ORDER BY kullanılarak azalan düzende sıralanmıştır

SELECT 
    m.musteri_ID, 
    m.mus_ad, 
    m.mus_soyad, 
    COUNT(s.siparis_ID) AS toplam_siparis_sayisi, 
    SUM(s.toplam_tutar) AS ciro_katkisi
FROM 
    musteriler m
INNER JOIN 
    siparisler s ON m.musteri_ID = s.musteri_ID
GROUP BY 
    m.musteri_ID, m.mus_ad, m.mus_soyad
ORDER BY 
    ciro_katkisi DESC;


-- SORGU 2
-- Amacı siparişlerin hangi adres başlıklarına ve şehirlere gönderildiğini, içerisindeki ürün sipariş tarihine göre artan düzende listelenmesidir
-- Bir önceki sorgudan tamamen farklı kolonlar ve mantık kullanılmıştır
-- siparisler ve adresler tabloları "adres_ID" sütunu üzerinden LEFT JOIN ile bağlanarak mekansal analiz yapılması sağlanmıştır

SELECT 
    s.siparis_ID, 
    s.siparis_tarihi, 
    a.adres_basligi, 
    a.sehir, 
    a.ilce,
    s.toplam_tutar
FROM 
    siparisler s
LEFT JOIN 
    adresler a ON s.adres_ID = a.adres_ID
WHERE 
    a.sehir = 'Bursa'
ORDER BY 
    s.siparis_tarihi ASC;