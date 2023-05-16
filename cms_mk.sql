-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Maj 2023, 20:38
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cms_mk`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`, `value`) VALUES
(100, 32, 8, -1),
(103, 32, 10, 1),
(107, 33, 8, -1),
(113, 34, 8, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `filename` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `userId` int(255) NOT NULL,
  `removed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `post`
--

INSERT INTO `post` (`id`, `timestamp`, `filename`, `ip`, `title`, `userId`, `removed`) VALUES
(31, '2023-05-15 17:08:43', 'img/f1eb3370f4d1e8ba648d11724bc10a06ed013ef26e35f1d388ced08f0998916c.webp', '::1', '3121123', 8, 1),
(32, '2023-05-16 19:06:09', 'img/2557b9a0e2c58815710246cb36f90d929238856dbf8dbb64fcbd4b749a3c8b19.webp', '::1', 'das', 8, 1),
(33, '2023-05-16 20:23:42', 'img/d05b4ea3b7f770007667de8a8068abc8b16a59efecb5c4710d6ae6f9d79e20aa.webp', '::1', 'Siemaeczko', 10, 0),
(34, '2023-05-16 20:24:34', 'img/926f0aea41656d86cbae777ea00109dfd80c91d117140ba9e2860f1c2dd2b02c.webp', '::1', 'sdsdadasdasdas', 10, 0),
(35, '2023-05-16 20:31:49', 'img/d5a58bfad3d0311b143726a07e2dc28c15aae822379b2971455a5d2a419c4ac7.webp', '::1', '123', 8, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(7, '', '$argon2i$v=19$m=65536,t=4,p=1$eXJpOXRDN1Rray9jUUoyRg$zmUUWbHKiVYENM6PBvOFujl+pEwPCvjA2RhqtNIDQuU'),
(8, 'elo@elo.pl', '$argon2i$v=19$m=65536,t=4,p=1$TVRGckVpSkhTR3VienVnMQ$2XrAD3Dxi5Li39E8xry876NpxGgSsKZ/CXjDT7F2jcM'),
(9, 'elo@elo.pl', '$argon2i$v=19$m=65536,t=4,p=1$NS93TGQ3QklNS0tkYmhGNg$cHA6hre6eDp3UMt4OULpUQlIcP1H3NsRQo90a5lOWEU'),
(10, 'elo2@elo.pl', '$argon2i$v=19$m=65536,t=4,p=1$ZXl1eDVLZ0w1aEh3akFlSA$dZsdFR7xSuEMxaJ+2rh314sqkRzYyQCxgHhQoVjMVZQ');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT dla tabeli `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
