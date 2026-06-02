# Veri Taban Yonetim Sistemleri Projesi

Proje 1, 2 aşamadan oluşmaktadır:

Proje konusu belirleme ve veritabanı tasarımı
Nihai projenin veritabanına ait tüm yapının, tutulan verilerin ve sorguların SQL kodlarının yazılması 

Projemiz  3 kişilik ekip halinde yapıldı.


* kişi başına  4 veritabanı tablosu
* her tabloda başka bir tablonun bir sütunuyla ilişkili en az bir sütun
bulunmaktadır.

Dökümanımızda, projenizdeki tüm varlıkların/tabloların birbirine bağlanmış (tüm ekip üyelerinin çalışmalarının birleştirilmiş) haline ait şemaları bulunur. Bununla birlikte, hangi tablolardan ve tablolar arası ilişkilerden sorumlu olduğumuz da belirtilmiştir.

Proje 2, bunları içermektedir:
Proje 1 geçmiş halinin şemasında değişiklikler yapıldı.

Tasarlamış olduğumuz  proje bir MySQL veritabanına dönüştürüldü. Veritabanını oluşturacak olan “CREATE TABLE” komutlarını “schema.sql” isimli bir dosyaya kaydedildi.

Tabloları oluşturduktan sonra veritabanına veriler girildi(bu işlem phpMyAdmin veya MySQL Workbench gibi bir yönetim aracı ile veya başka bir program ile yapılabilir).

Veriler anlamlıdir. Verileri girmeye yarayan "INSERT INTO" komutları “data.sql” isimli bir dosyaya kaydedildi.

Veritabandaki veriler için 2 adet veri çekme/okuma sorgusu yazıldı. İki sorgu da tablo birleştirme içeriyor. İki sorgu da (aynı tablo üzerinde birleştirme yapsa bile) farklı sütunlar üzerinden birleştirme yapıyor.




