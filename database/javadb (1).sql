-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 dec 2019 om 14:54
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javadb`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(3, 'nou', 'davvvb', 'dabbbb@gmail.com'),
(4, 'nou', 'Gast', 'dabbbb@gmail.com'),
(5, 'nou', 'Gast', 'dabbbb@gmail.com'),
(6, 'nou', 'Gast', 'dabbbb@gmail.com'),
(7, 'nou', 'Gast', 'dabbbb@gmail.com'),
(8, 'Gast', 'nou', 'dabbbb@gmail.com'),
(9, 'Leon', 'wachtwoord', 'Leon@gmail.com'),
(10, '1', '1', 'Leon@gmail.com'),
(11, '1', '1', 'dabbbb@gmail.com'),
(12, 'lol', 'lol', 'dabbbb@gmail.com'),
(13, 'davvvb', 'nou', 'dabbbb@gmail.com'),
(14, 'davvvb', 'nou', 'dabbbb@gmail.com'),
(15, 'davvvb', 'nou', 'dabbbb@gmail.com'),
(16, 'davvvb', 'nou', 'dabbbb@gmail.com'),
(17, 'davvvb43', 'nou', 'dabbbb@gmail.com'),
(18, 'Jan', 'Jan', 'dabbbb@gmail.com'),
(19, 'yeet', 'yeet', 'dabbbb@gmail.com'),
(20, 'yeet3', 'dab', 'dabbbb@gmail.com');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
