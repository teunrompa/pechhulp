-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 28 mrt 2022 om 11:32
-- Serverversie: 10.4.18-MariaDB
-- PHP-versie: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pechulp`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `areas`
--

INSERT INTO `areas` (`id`, `name`) VALUES
(1, 'Breda'),
(2, 'Wagenberg'),
(3, 'Terheiden'),
(4, 'Made'),
(5, 'Lage zwaluwen '),
(6, 'Hoge zwaluwen'),
(7, 'Rotterdam'),
(8, 'Zoetemeer');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contracts`
--

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `contracts`
--

INSERT INTO `contracts` (`id`, `user_id`, `type_id`) VALUES
(1, 5, 5),
(2, 11, 1),
(3, 15, 1),
(4, 12, 1),
(5, 7, 1),
(6, 6, 1),
(7, 8, 4),
(8, 10, 4),
(9, 9, 5),
(10, 13, 5),
(11, 14, 5),
(12, 7, 6),
(13, 11, 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contract_types`
--

CREATE TABLE `contract_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `contract_types`
--

INSERT INTO `contract_types` (`id`, `name`, `description`, `cost`) VALUES
(1, 'basic', 'Het basis pakket', '€7- per maand'),
(4, 'standard', 'het standaard pakket', '€10- per maand'),
(5, 'luxury ', 'het luxe pakket', '€15- per maand'),
(6, 'replacement transport', 'Extra vervangings vervoer', '€20- per maand');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `garages`
--

CREATE TABLE `garages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `garages`
--

INSERT INTO `garages` (`id`, `user_id`, `area_id`, `name`) VALUES
(1, 5, 1, 'Garage Breda'),
(2, 5, 2, 'Garage Wagenberg'),
(9, 5, 7, 'Garage Rotterdam '),
(10, 5, 8, 'Garage Zoetermeer '),
(11, 5, 3, 'Garage Terheijden '),
(12, 5, 4, 'Garage Made'),
(13, 5, 5, 'Garage Lage Zwaluwen '),
(14, 5, 6, 'Garage Hoge Zwaluwen ');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `loan_cars`
--

CREATE TABLE `loan_cars` (
  `id` int(11) NOT NULL,
  `garage_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `loan_cars`
--

INSERT INTO `loan_cars` (`id`, `garage_id`, `type`) VALUES
(4, 1, 'AUTO'),
(5, 2, 'BMW');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `loan_cars_contracts`
--

CREATE TABLE `loan_cars_contracts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `loan_car_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `loan_cars_contracts`
--

INSERT INTO `loan_cars_contracts` (`id`, `user_id`, `loan_car_id`) VALUES
(1, 5, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_content` varchar(255) NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `review_content`, `rating`) VALUES
(1, 5, 'WOW Super epic pech hulp', 10),
(2, 16, 'Wow ziek hoor', 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin'),
(5, 'garage');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `support_call`
--

CREATE TABLE `support_call` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `garage_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `licenceplate` varchar(255) NOT NULL,
  `status` enum('Done','Ongoing','Important','Todo') NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `support_call`
--

INSERT INTO `support_call` (`id`, `user_id`, `garage_id`, `area_id`, `description`, `phonenumber`, `licenceplate`, `status`, `location`) VALUES
(2, 5, 1, 0, 'Help my car broke down', '1231231312', 'x-a-1dawd', 'Todo', 'lat: 234 lan: 21312'),
(3, 7, 11, 0, 'Auto brokko neef', '123123321', 'axaxadx', 'Todo', '1213212332132'),
(4, 12, 9, 0, 'Auto stuk langs snel weg', '123567432', 'xwaxd-xadxaw-23122', 'Ongoing', 'Langs de weg'),
(5, 14, 12, 0, 'Kapote auto', '123213555', 'xws-awd-583', 'Done', 'Made'),
(6, 8, 13, 0, 'Help stukke auto', '23123444', 'xxx-xxx-xxx', 'Done', 'ergens in Lage Zwaluwen '),
(7, 6, 11, 0, 'Auto ging boem', '21345767', 'xls-289-dad', 'Done', 'Terheijden je weet zelf'),
(8, 16, 11, 0, 'auwhdoawhdoahwdoawdhaowhd', '123123123123', 'adwadawdwad', 'Done', '213123123'),
(9, 16, 11, 1, 'auwhdoawhdoahwdoawdhaowhd', '123123123123', 'adwadawdwad', 'Done', '213123123');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `updated_at`, `created_at`) VALUES
(5, 2, 'teunrompa', 'teunrompa@gmail.com ', '1234', NULL, NULL),
(6, 1, 'Kees', 'kees@gmail.com', '', NULL, NULL),
(7, 1, 'Joost', 'joost@gmail.com', '', NULL, NULL),
(8, 1, 'Peter', 'peter@gmail.com', '', NULL, NULL),
(9, 1, 'Rein', 'rein@gmail.com', '', NULL, NULL),
(10, 1, 'Piet', 'piet@gmail.com', '', NULL, NULL),
(11, 1, 'Dook', 'dook@gmail.com', '', NULL, NULL),
(12, 1, 'Jan', 'jan@gmail.com', '', NULL, NULL),
(13, 1, 'Reinier', 'reinier@gmail.com', '', NULL, NULL),
(14, 1, 'Torben', 'torben@gmail.com', '', NULL, NULL),
(15, 1, 'Fedde', 'fedde@gmail.com', '', NULL, NULL),
(16, 2, 'teun2', 'teun2@gmail.com', '$2y$10$bLgsoa7CycWf83nqK0hpAeBpKNXDphviC1Ygp8RLGwfNttcHpOrja', '2022-03-23', '2022-03-23');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `contract_types`
--
ALTER TABLE `contract_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `area_id` (`area_id`);

--
-- Indexen voor tabel `loan_cars`
--
ALTER TABLE `loan_cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `garage_id` (`garage_id`);

--
-- Indexen voor tabel `loan_cars_contracts`
--
ALTER TABLE `loan_cars_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `loan_car_id` (`loan_car_id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user.id` (`user_id`);

--
-- Indexen voor tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `support_call`
--
ALTER TABLE `support_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `garage_id` (`garage_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `contract_types`
--
ALTER TABLE `contract_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `loan_cars`
--
ALTER TABLE `loan_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `loan_cars_contracts`
--
ALTER TABLE `loan_cars_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `support_call`
--
ALTER TABLE `support_call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `contract_types` (`id`),
  ADD CONSTRAINT `contracts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Beperkingen voor tabel `garages`
--
ALTER TABLE `garages`
  ADD CONSTRAINT `garages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `garages_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`);

--
-- Beperkingen voor tabel `loan_cars`
--
ALTER TABLE `loan_cars`
  ADD CONSTRAINT `loan_cars_ibfk_1` FOREIGN KEY (`garage_id`) REFERENCES `garages` (`id`);

--
-- Beperkingen voor tabel `loan_cars_contracts`
--
ALTER TABLE `loan_cars_contracts`
  ADD CONSTRAINT `loan_cars_contracts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `loan_cars_contracts_ibfk_2` FOREIGN KEY (`loan_car_id`) REFERENCES `loan_cars` (`id`);

--
-- Beperkingen voor tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `user.id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Beperkingen voor tabel `support_call`
--
ALTER TABLE `support_call`
  ADD CONSTRAINT `support_call_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `support_call_ibfk_2` FOREIGN KEY (`garage_id`) REFERENCES `garages` (`id`);

--
-- Beperkingen voor tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
