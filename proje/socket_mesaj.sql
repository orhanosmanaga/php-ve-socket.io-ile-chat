-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Ara 2019, 20:21:30
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `socket_mesaj`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arkadaslik`
--

CREATE TABLE `arkadaslik` (
  `id` int(11) NOT NULL,
  `birinci` varchar(255) NOT NULL,
  `ikinci` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `arkadaslik`
--

INSERT INTO `arkadaslik` (`id`, `birinci`, `ikinci`) VALUES
(5, 'orhan', 'orhan2'),
(6, 'orhan2', 'orhan'),
(7, 'orhan', 'orhan3'),
(8, 'orhan3', 'orhan'),
(9, 'orhan2', 'orhan3'),
(10, 'orhan3', 'orhan2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kisiler`
--

CREATE TABLE `kisiler` (
  `id` int(11) NOT NULL,
  `k_adi` varchar(255) NOT NULL,
  `k_sifre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `kisiler`
--

INSERT INTO `kisiler` (`id`, `k_adi`, `k_sifre`) VALUES
(5, 'orhan', '123456'),
(6, 'orhan2', '12345'),
(7, 'orhan3', '1234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `id` int(11) NOT NULL,
  `mesaj` text NOT NULL,
  `kimden` varchar(255) NOT NULL,
  `kime` varchar(255) NOT NULL,
  `tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `mesaj`, `kimden`, `kime`, `tarih`) VALUES
(1, 'test icin 3', 'orhan', 'orhan2', '2019-12-04 02:43:58'),
(2, 'test icin', 'orhan', 'orhan3', '0000-00-00 00:00:00'),
(3, 'test icin 2', 'orhan2', 'orhan', '2019-12-04 02:43:58'),
(4, 'test icin 5', 'orhan', 'orhan2', '2019-12-04 02:43:58'),
(5, 'ilkmesaj', 'orhan', 'orhan2', '2019-12-04 03:41:48'),
(6, 'ilk mesaj2', 'orhan', 'orhan2', '2019-12-04 03:43:00'),
(7, 'sdfsdfs', 'orhan', 'orhan3', '2019-12-04 03:44:37'),
(8, 'asdas', 'orhan', 'orhan2', '2019-12-04 03:57:24'),
(9, 'asdadadas', 'orhan', 'orhan2', '2019-12-04 04:00:51'),
(10, 'sdsd', 'orhan', 'orhan2', '2019-12-04 04:01:48'),
(11, 'ÅŸuan', 'orhan', 'orhan2', '2019-12-04 04:03:03'),
(12, 'sss', 'orhan', 'orhan2', '2019-12-04 04:04:49'),
(13, 'kk', 'orhan', 'orhan2', '2019-12-04 04:06:41'),
(14, 'kk', 'orhan', 'orhan3', '2019-12-04 04:06:57'),
(15, 'sdfvsfs', 'orhan', 'orhan2', '2019-12-04 04:12:46'),
(16, 'lll', 'orhan', 'orhan2', '2019-12-04 04:16:01'),
(17, 'sada', 'orhan', 'orhan2', '2019-12-04 04:18:14'),
(18, 'scfaf', 'orhan', 'orhan2', '2019-12-04 04:19:25'),
(19, '', 'orhan', 'orhan2', '2019-12-04 04:20:05'),
(20, '', 'orhan', 'orhan2', '2019-12-04 04:20:54'),
(21, 'asdadas', 'orhan', 'orhan2', '2019-12-04 04:21:00'),
(22, 'dsfdsfs', 'orhan', 'orhan2', '2019-12-04 04:21:06'),
(23, 'dsfs', 'orhan', 'orhan2', '2019-12-04 04:21:37'),
(24, 'sdfvsfs', 'orhan', 'orhan2', '2019-12-04 04:21:46'),
(25, 'dsfsd', 'orhan', 'orhan2', '2019-12-04 04:23:37'),
(26, 'ttt', 'orhan', 'orhan2', '2019-12-04 04:23:43'),
(27, 'asdadas', 'orhan', 'orhan2', '2019-12-04 04:24:49'),
(28, 'asdadas', 'orhan', 'orhan2', '2019-12-04 04:25:43'),
(29, 'dasfsd', 'orhan', 'orhan2', '2019-12-04 04:32:03'),
(30, '', 'orhan', 'orhan2', '2019-12-04 04:33:18'),
(31, 'sdvs', 'orhan', 'orhan2', '2019-12-04 04:33:28'),
(32, 'dsfvs', 'orhan', 'orhan2', '2019-12-04 04:34:33'),
(33, 'sdfsdfs', 'orhan', 'orhan2', '2019-12-04 04:35:23'),
(34, 'dsafds', 'orhan', 'orhan2', '2019-12-04 04:36:16'),
(35, 'dvscfs', 'orhan', 'orhan2', '2019-12-04 04:41:20'),
(36, 'sdfsfsd', 'orhan', 'orhan3', '2019-12-04 04:41:31'),
(37, 'orhannn', 'orhan', 'orhan2', '2019-12-04 11:35:17'),
(38, 'orhannn', 'orhan', 'orhan2', '2019-12-04 11:37:10'),
(39, 'asdad', 'orhan', 'orhan2', '2019-12-04 11:37:43'),
(40, 'dfsdf', 'orhan', 'orhan2', '2019-12-04 11:42:49'),
(41, 'fgdfgdf', 'orhan', 'orhan2', '2019-12-04 11:43:05'),
(42, '', 'orhan', 'orhan2', '2019-12-04 11:46:32'),
(43, 'asdad', 'orhan', 'orhan2', '2019-12-04 11:46:41'),
(44, 'asdadas', 'orhan', 'orhan2', '2019-12-04 11:47:06'),
(45, 'asdasdada', 'orhan', 'orhan2', '2019-12-04 11:48:06'),
(46, 'testr', 'orhan', 'orhan2', '2019-12-04 11:48:17'),
(47, 'orhan3icin', 'orhan', 'orhan2', '2019-12-04 11:48:31'),
(48, 'dsfsf', 'orhan', 'orhan2', '2019-12-04 11:50:00'),
(49, 'sdfsdfs', 'orhan', 'orhan3', '2019-12-04 11:50:15'),
(50, 'orhan3egider', 'orhan', 'orhan3', '2019-12-04 11:50:38'),
(51, 'orhan33', 'orhan', 'orhan3', '2019-12-04 11:52:41'),
(52, 'orhan222', 'orhan', 'orhan2', '2019-12-04 11:52:55'),
(53, 'vallahami', 'orhan', 'orhan2', '2019-12-04 11:53:07'),
(54, 'orhan3icinha', 'orhan', 'orhan3', '2019-12-04 11:53:21'),
(55, 'orhan333333', 'orhan', 'orhan3', '2019-12-04 12:09:17'),
(56, 'asdadas', 'orhan', 'orhan2', '2019-12-04 12:09:29'),
(57, 'asdadas', 'orhan', 'orhan2', '2019-12-04 12:09:44'),
(58, 'orhahhhhhhhh', 'orhan', 'orhan3', '2019-12-04 12:09:55'),
(59, 'terst mesaj', 'orhan3', 'orhan', '2019-12-04 12:13:14'),
(60, 'asdasda', 'orhan3', 'orhan2', '2019-12-04 12:13:26'),
(61, 'naber', 'orhan2', 'orhan', '2019-12-04 12:17:11'),
(62, 'naberr', 'orhan2', 'orhan3', '2019-12-04 12:17:26'),
(63, 'ssss', 'orhan', 'orhan2', '2019-12-04 12:24:44'),
(64, 'test icÃ§', 'orhan', 'orhan2', '2019-12-04 18:05:15'),
(65, 'ddd', 'orhan', 'orhan2', '2019-12-04 18:05:28'),
(66, 'ssss', 'orhan', 'orhan2', '2019-12-04 18:07:38'),
(67, 'fsdfs', 'orhan', 'orhan2', '2019-12-04 18:07:44'),
(68, 'dcvsdfvs', 'orhan', 'orhan2', '2019-12-04 18:08:27'),
(69, 'sddsdsssd', 'orhan', 'orhan2', '2019-12-04 18:08:37'),
(70, 'ÅŸimdi', 'orhan', 'orhan2', '2019-12-04 18:09:27'),
(71, 'ÅŸimdi2', 'orhan', 'orhan2', '2019-12-04 18:09:46'),
(72, 'ÅŸimdi3', 'orhan', 'orhan2', '2019-12-04 18:11:15'),
(73, 'ÅŸimdi4', 'orhan', 'orhan2', '2019-12-04 18:11:57'),
(74, 'test', 'orhan2', 'orhan', '2019-12-04 18:25:25'),
(75, 'testtt', 'orhan', 'orhan2', '2019-12-04 18:25:44'),
(76, 'tetsss', 'orhan', 'orhan2', '2019-12-04 18:26:04'),
(77, 'testttt', 'orhan2', 'orhan', '2019-12-04 18:26:13'),
(78, 'asdasda', 'orhan', 'orhan2', '2019-12-04 18:26:43'),
(79, 'asdad', 'orhan', 'orhan2', '2019-12-04 18:28:07'),
(80, 'ssssss', 'orhan', 'orhan2', '2019-12-04 18:28:13'),
(81, 'hadi', 'orhan', 'orhan2', '2019-12-04 18:36:03'),
(82, 'hadi2', 'orhan2', 'orhan', '2019-12-04 18:36:14'),
(83, 'dfsfs', 'orhan2', 'orhan', '2019-12-04 18:36:59'),
(84, 'asfasfs', 'orhan', 'orhan2', '2019-12-04 18:37:03'),
(85, 'asdada2222', 'orhan', 'orhan2', '2019-12-04 18:43:36'),
(86, 'sss', 'orhan', 'orhan2', '2019-12-04 18:44:56'),
(87, 'ssss', 'orhan2', 'orhan', '2019-12-04 18:45:06'),
(88, 'asdadadorhannn', 'orhan', 'orhan2', '2019-12-04 18:45:22'),
(89, 'sss', 'orhan', 'orhan2', '2019-12-04 18:45:48'),
(90, 'deee', 'orhan2', 'orhan', '2019-12-04 18:46:04'),
(91, 'bura orhan2', 'orhan2', 'orhan', '2019-12-04 18:46:25'),
(92, 'bura orahnn', 'orhan', 'orhan2', '2019-12-04 18:46:41'),
(93, 'vvv', 'orhan2', 'orhan', '2019-12-04 18:52:01'),
(94, 'ilk mesaj2', 'orhan', 'orhan2', '2019-12-04 19:16:00'),
(95, 'ilk mesaj25', 'orhan', 'orhan2', '2019-12-04 19:16:40'),
(96, 'naber', 'orhan2', 'orhan', '2019-12-04 19:17:08'),
(97, 'sss', 'orhan2', 'orhan', '2019-12-04 19:17:14'),
(98, 'asdadas', 'orhan2', 'orhan', '2019-12-04 19:17:26'),
(99, 'asdadas', 'orhan2', 'orhan', '2019-12-04 19:17:33'),
(100, 'asdadas', 'orhan2', 'orhan', '2019-12-04 19:17:50'),
(101, '', 'orhan2', 'orhan', '2019-12-04 19:17:52'),
(102, 'test', 'orhan', 'orhan2', '2019-12-05 13:57:11'),
(103, 'gÃ¼len yÃ¼z :)', 'orhan', 'orhan2', '2019-12-05 13:57:47'),
(104, 'gÃ¼lenyÃ¼z:)', 'orhan', 'orhan2', '2019-12-05 13:59:46'),
(105, 'mutsuz:(', 'orhan', 'orhan2', '2019-12-05 14:23:25'),
(106, 'bura', 'orhan', 'orhan2', '2019-12-05 14:56:44'),
(107, 'oldumu', 'orhan', 'orhan2', '2019-12-05 15:09:46'),
(108, 'oldu', 'orhan', 'orhan2', '2019-12-05 15:10:35'),
(109, 'sss', 'orhan', 'orhan2', '2019-12-05 15:10:46'),
(110, 'cc', 'orhan', 'orhan2', '2019-12-05 15:10:53'),
(111, 'hadi', 'orhan', 'orhan2', '2019-12-05 15:11:53'),
(112, 'ss', 'orhan', 'orhan2', '2019-12-05 15:12:19'),
(113, 'hadi', 'orhan', 'orhan2', '2019-12-05 15:12:25'),
(114, 'asdad', 'orhan', 'orhan2', '2019-12-05 15:13:04'),
(115, 'asdad', 'orhan', 'orhan2', '2019-12-05 15:13:09'),
(116, 'asdasd', 'orhan', 'orhan2', '2019-12-05 15:13:16'),
(117, 'oldumu', 'orhan', 'orhan2', '2019-12-05 15:14:35'),
(118, ':)', 'orhan', 'orhan2', '2019-12-05 15:14:41'),
(119, 'Ã‡s', 'orhan', 'orhan2', '2019-12-05 15:14:48'),
(120, ':DDD', 'orhan', 'orhan2', '2019-12-05 15:14:55'),
(121, '1', 'orhan', 'orhan2', '2019-12-05 15:15:06'),
(122, 'sss', 'orhan', 'orhan2', '2019-12-05 15:15:49'),
(123, 'orha ', 'orhan', 'orhan2', '2019-12-05 15:15:54'),
(124, '', 'orhan', 'orhan2', '2019-12-05 15:15:57'),
(125, 'dfsd', 'orhan', 'orhan2', '2019-12-05 17:30:57'),
(126, 'dfsd', 'orhan', 'orhan2', '2019-12-05 17:31:03'),
(127, '', 'orhan', 'orhan2', '2019-12-05 17:31:06'),
(128, 'bu', 'orhan', 'orhan2', '2019-12-05 19:15:30');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `arkadaslik`
--
ALTER TABLE `arkadaslik`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kisiler`
--
ALTER TABLE `kisiler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `arkadaslik`
--
ALTER TABLE `arkadaslik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `kisiler`
--
ALTER TABLE `kisiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
