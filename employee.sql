-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 02 Ιαν 2020 στις 19:41:37
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
-- Δομή πίνακα για τον πίνακα `employee`
--

CREATE TABLE `employee` (
  `NAME` varchar(60) NOT NULL,
  `SURNAME` varchar(60) NOT NULL,
  `DEPARTMENT` varchar(100) NOT NULL,
  `CATEGORY` varchar(60) NOT NULL,
  `DATE_STARTED` date NOT NULL,
  `TELEPHONE` varchar(30) NOT NULL,
  `ADDRESS` varchar(60) NOT NULL,
  `BANK` varchar(60) NOT NULL,
  `BANK_ACCOUNT` varchar(60) NOT NULL,
  `FAMILY_CONDITION` varchar(30) NOT NULL,
  `NUMBER_OF_CHILDREN` int(1) NOT NULL,
  `CHILDRENS_AGES` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `employee`
--

INSERT INTO `employee` (`NAME`, `SURNAME`, `DEPARTMENT`, `CATEGORY`, `DATE_STARTED`, `TELEPHONE`, `ADDRESS`, `BANK`, `BANK_ACCOUNT`, `FAMILY_CONDITION`, `NUMBER_OF_CHILDREN`, `CHILDRENS_AGES`) VALUES
('Stephen', 'Tyler', 'Βιολογικό', 'Μόνιμος διοικητικός', '2020-01-01', '8329013989', 'Terrace 7452', 'Πειραιώς', '0983222222222222', 'Άγαμος', 0, NULL),
('Hannah', 'Hill', 'Χημικό', 'Συμβασιούχος διδακτικός', '2019-10-01', '2025550167', '3035  Rubaiyat Road', 'Εθνική Τράπεζα', '2389432304819324', 'Έγγαμος', 1, 17),
('John', 'Doe', 'Φυσικό', 'Μόνιμος διδακτικός', '2020-01-01', '2810837212', 'Δημοκρατίας 4', 'Εθνική Τράπεζα', '2802740238927461', 'Έγγαμος', 1, 3),
('Jack', 'McGinnis', 'Φυσικό', 'Συμβασιούχος διδακτικός', '2019-12-01', '1234567891', 'hobo Av. 220', 'Εθνική Τράπεζα', '3920572847777787', 'Έγγαμος', 1, 5),
('Marguerite', 'Mcguire', 'Ιατρική', 'Συμβασιούχος διοικητικός', '2019-05-01', '9187679180', '2811  Heather Sees Way', 'Bank of America', '5121644632487565', 'Έγγαμος', 1, 25),
('Eddie', 'Lane', 'Ιατρική', 'Συμβασιούχος διδακτικός', '2019-05-01', '5598412700', '3621  Half and Half Drive', 'Bank of America', '5122178275481097', 'Άγαμος', 0, NULL),
('Sammy ', 'Horton', 'csd', 'Μόνιμος διοικητικός', '2016-10-01', '5185550168', '2691  Arlington Avenue', 'Πειραιώς', '5137425310287689', 'Άγαμος', 0, NULL),
('Ramon', 'Hughes', 'csd', 'Μόνιμος διδακτικός', '2019-01-01', '9096089517', 'Καλοκαιρινού 40', 'Εθνική Τράπεζα', '5289003329934348', 'Άγαμος', 0, NULL),
('Samantha Caitlin', 'Hill', 'Χημικό', 'Συμβασιούχος διδακτικός', '2019-06-01', '2025550150', '3090  Boring Lane', 'Bank of America', '5289005546422122', 'Άγαμος', 0, NULL),
('Misty', 'Christensen', 'Φυσικό', 'Μόνιμος διοικητικός', '2018-07-01', '3038684727', '62 Μαρτύρων 3', 'Πειραιώς', '5315701541640738', 'Άγαμος', 0, NULL),
('Roger', 'Garner', 'Ιατρική', 'Συμβασιούχος διοικητικός', '2010-07-01', '6783818717', '62 Μαρτυρων 50', 'Εθνική Τράπεζα', '5315753531061318', 'Έγγαμος', 1, 18),
('Sonya', 'Todd', 'csd', 'Μόνιμος διδακτικός', '2000-10-01', '3864376036', '3569  Willis Avenue', 'Εθνική Τράπεζα', '5369904403124396', 'Έγγαμος', 2, 17),
('Ezra', 'Arnold', 'csd', 'Μόνιμος διδακτικός', '2005-01-01', '202-555-0141', 'Καλοκαιρινού 40', 'Εθνική Τράπεζα', '5520718163009340', 'Έγγαμος', 0, NULL),
('Ben', 'Hayes', 'Φυσικό', 'Συμβασιούχος διοικητικός', '2019-02-01', '6097796466', '824  Watson Street', 'Εθνική Τράπεζα', '5520718720237707', 'Έγγαμος', 1, 14),
('Joan', 'Anne', 'Βιολογικό', 'Συμβασιούχος διοικητικός', '2020-01-01', '2874329833', 'Καλοκαιρινού 5', 'Πειραιώς', '9372899999999999', 'Άγαμος', 0, NULL);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`BANK_ACCOUNT`),
  ADD UNIQUE KEY `TELEPHONE` (`TELEPHONE`),
  ADD KEY `NAME` (`NAME`),
  ADD KEY `SURNAME` (`SURNAME`),
  ADD KEY `DEPARTMENT` (`DEPARTMENT`),
  ADD KEY `CATEGORY` (`CATEGORY`),
  ADD KEY `DATE` (`DATE_STARTED`),
  ADD KEY `ADDRESS` (`ADDRESS`),
  ADD KEY `BANK` (`BANK`),
  ADD KEY `FAMILY_CONDITION` (`FAMILY_CONDITION`),
  ADD KEY `NUMBER_OF_CHILDREN` (`NUMBER_OF_CHILDREN`),
  ADD KEY `CHILDRENS_AGES` (`CHILDRENS_AGES`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
