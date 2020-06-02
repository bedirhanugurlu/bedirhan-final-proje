-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Haz 2020, 17:14:33
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blogveri`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` int(4) NOT NULL,
  `kullanici_adi` varchar(30) NOT NULL,
  `sifre` varchar(30) NOT NULL,
  `isim` varchar(30) NOT NULL,
  `soyisim` varchar(30) NOT NULL,
  `yas` int(3) NOT NULL,
  `cinsiyet` varchar(1) NOT NULL,
  `telefon` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `kullanici_adi`, `sifre`, `isim`, `soyisim`, `yas`, `cinsiyet`, `telefon`, `email`) VALUES
(1, 'bedirhan1', 'admin1', 'Bedirhan', 'Uğurlu', 19, 'E', '05331234334', 'bedirhan@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale`
--

CREATE TABLE `makale` (
  `makaleld` int(4) NOT NULL,
  `makalaYazan` varchar(30) NOT NULL,
  `makaleBaslik` varchar(30) NOT NULL,
  `tarih` date NOT NULL,
  `makaleYazi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `makale`
--

INSERT INTO `makale` (`makaleld`, `makalaYazan`, `makaleBaslik`, `tarih`, `makaleYazi`) VALUES
(1, 'Bedirhan', 'Lorem Ipsum Makale', '2020-06-02', 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500’lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960’larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMak');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorum`
--

CREATE TABLE `yorum` (
  `Id` int(4) NOT NULL,
  `yorumMakaleId` int(4) NOT NULL,
  `yorumYazan` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `yorumYazi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `yorum`
--

INSERT INTO `yorum` (`Id`, `yorumMakaleId`, `yorumYazan`, `email`, `yorumYazi`) VALUES
(1, 1, 'Bedirhan', 'bedirhan@gmail.com', 'yorum yapıldı');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `makale`
--
ALTER TABLE `makale`
  ADD PRIMARY KEY (`makaleld`);

--
-- Tablo için indeksler `yorum`
--
ALTER TABLE `yorum`
  ADD PRIMARY KEY (`Id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
