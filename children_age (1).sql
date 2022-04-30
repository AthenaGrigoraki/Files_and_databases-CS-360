-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 02 Ιαν 2020 στις 19:41:22
-- Έκδοση διακομιστή: 10.4.10-MariaDB
-- Έκδοση PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `hy360`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `children_age`
--

CREATE TABLE `children_age` (
  `BANK_ACCOUNT` varchar(60) NOT NULL,
  `CHILDREN_AGE` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `children_age`
--
ALTER TABLE `children_age`
  ADD PRIMARY KEY (`BANK_ACCOUNT`),
  ADD KEY `children_age` (`CHILDREN_AGE`);

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `children_age`
--
ALTER TABLE `children_age`
  ADD CONSTRAINT `BANK_ACCOUNT` FOREIGN KEY (`BANK_ACCOUNT`) REFERENCES `employee` (`BANK_ACCOUNT`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
