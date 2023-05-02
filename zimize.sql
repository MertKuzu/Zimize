-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Ara 2022, 08:26:57
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `zimize`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `head` varchar(50) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `usernameid` int(3) NOT NULL,
  `hfontcolor` varchar(16) NOT NULL,
  `cfontcolor` varchar(16) NOT NULL,
  `bgcolor` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `contents`
--

INSERT INTO `contents` (`id`, `head`, `content`, `usernameid`, `hfontcolor`, `cfontcolor`, `bgcolor`) VALUES
(16, 'Yenileniyoruz!', 'Merhaba, Türkçe Yayın Okuyucuları ve Yazarları,\r\n\r\nTürkçe Yayın olarak blog dünyasında Türkçe içeriklerin artması ve blog yazarlığının yaygınlaşması için yıllardır elimizden geleni yapıyoruz. Tamamen gönüllü kişilerden oluşan editörlerimiz uzun zamandır yazıların kontrolünü yapıyor, yazarlara geri bildirimler veriyor ve yazıların daha fazla insana ulaştırılması için sosyal mecraları aktif olarak kullanıyor.\r\n\r\nŞimdi ise Türkçe Yayın’da yeni başlangıçlar zamanı…', 9, 'red', 'blue', 'pink'),
(17, '5 Unique Passive Income Ideas — How I Make $4,580/', 'So you want to earn some extra cash. That’s the right place to start. I’ve analyzed the whole industry of passive income and applied some of these methods myself. So you can be sure that each of them is a working method.\r\n\r\nIf you don’t know what passive income means, it’s simply something that makes you money while you sleep. In other words, this is not an active job from 9 to 5.\r\n\r\nTo create passive income, you first need to put something in, and then it will generate some income. For instance, to start earning from Medium, you first need to write several articles. But we’ll talk a little bit later about it!\r\n\r\nI know how all of you guys are tired of hearing the same thing over and over. I tried to explain only the ones that are unique or the ones that really work. I hope you’ll love it!', 9, 'brown', 'white', 'green'),
(18, 'To Be More Disciplined, Stop These 4 Bad Habits', 'A lot of people think discipline is about what you do:\r\n\r\nStay focused\r\nTough it out\r\nBoost your willpower\r\nBe strong\r\nI’d like to suggest an alternative:\r\n\r\nThe best way to be more disciplined is to do less, not more.\r\n\r\nIf you’re doing something hard, trying to apply even more effort is likely to fail because you’re already tired and spent. What if you took a totally different approach…\r\n\r\nWhat if you looked for things that were interfering with your ability to be more disciplined and focused on removing those?\r\n\r\nIf you’ve struggled for a long time to be more disciplined without much success, working to identify and eliminate these four habits that interfere with discipline might be a much more helpul strategy.\r\n\r\n', 10, 'pink', 'white', 'black'),
(19, '20 Entertaining Uses of ChatGPT You Never Knew Wer', 'Our RISE community has been on fire, exploring the breathtaking possibilities of ChatGPT. The uses of ChatGPT are simply endless and intoxicating\r\n\r\nIt’s still early days. Companies are trying to figure out the legal and ethical implications of a content world suddenly turned on its head by artificial intelligence. And yet … applying powerful AI to everyday tasks is awesome.', 11, 'red', 'white', 'blue'),
(21, 'Deneme', 'Kısa paylaşım denemesi.', 11, 'yellow', 'white', 'pink'),
(22, 'Bu Bir Deneme', 'Kısa paylaşım denemesi tekrardan.', 10, 'green', 'blue', 'brown'),
(23, 'Data Structures', 'A data structure is not only used for organizing the data. It is also used for processing, retrieving, and storing data. There are different basic and advanced types of data structures that are used in almost every program or software system that has been developed. So we must have good knowledge about data structures. Linear data structure: Data structure in which data elements are arranged sequentially or linearly, where each element is attached to its previous and next adjacent elements, is called a linear data structure. \r\nExamples of linear data structures are array, stack, queue, linked list, etc.\r\nStatic data structure: Static data structure has a fixed memory size. It is easier to access the elements in a static data structure. \r\nAn example of this data structure is an array.\r\nDynamic data structure: In dynamic data structure, the size is not fixed. It can be randomly updated during the runtime which may be considered efficient concerning the memory (space) complexity of the code. \r\nExamples of this data structure are queue, stack, etc.\r\n', 11, 'pink', 'black', 'white'),
(24, 'Çiğ Köfte Tarifi', 'Evde etsiz çiğ köfte yapmak için öncelikle uygun bir kap içerisine bulgurumuzu alalım. Üzerine sıcak suyu ekleyerek 15 dakika kadar bulgurların yumuşaması için bekletelim. Bu aşamada su miktarı bulgurun cinsine göre değişiklik gösterebilir. Güzel bir sonuç almak için  kullandığınız bulgurun çiğ köftelik esmer bulgur olmasına da dikkat etmelisiniz.\r\nBulgurlarımızın yumuşamasını beklerken biz de çiğ köftemizin diğer malzemelerini hazırlayabiliriz. Kabuğunu soyduğumuz soğanımızı yemeklik olacak şekilde küçük küçük doğrayalım. Soğanı rendelemek ya da robottan geçirmek yerine bu şekilde doğramanız çiğ köftenizin lezzetini arttıracaktır.', 9, 'white', 'red', 'green'),
(25, 'asd asd', 'bir şeyler yazalım buraya..klk', 9, 'red', 'yellow', 'green'),
(26, 'asdasd', 'asd', 12, 'yellow', 'brown', 'pink');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `surname` varchar(16) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`) VALUES
(9, 'Mert', 'Kuzu', 'xdz@gmail.com', 'emkey', '$2y$10$h9eLapooy1iMDoinEWWU6e4ADvhYCuLd4G.HHRxGDa6Pbiek51QeS'),
(10, 'xd', 'kxd', 'xyaz@xxd.com', 'uzaylı', '$2y$10$X2yh/uAsWn8ej8xy.DrYg.PepABOgPgU.UsZDecdydISk8q/l01Vy'),
(11, 'İrem', 'Yaman', 'iremyaman@xd.com', 'veoxyn', '$2y$10$x5P9mqIJWwf0kYE13263rOnru4YpscQr1yBNWzPWPDZn/ogGxf7be'),
(12, 'barış', 'yüksel', 'barisa@gmail.com', 'barışxd', '$2y$10$/YByBY1hx0BuJ7RHN.F6TO7ho1zXkgggmjC3i5oOMI3uNtYQs/GW2');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usernameid` (`usernameid`),
  ADD KEY `bgcolor` (`bgcolor`),
  ADD KEY `cfontcolor` (`cfontcolor`),
  ADD KEY `hfontcolor` (`hfontcolor`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`usernameid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
