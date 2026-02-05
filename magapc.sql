-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: dec. 19, 2025 la 06:50 AM
-- Versiune server: 10.4.32-MariaDB
-- Versiune PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `magapc2`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `angajati`
--

CREATE TABLE `angajati` (
  `id_angajat` int(11) NOT NULL,
  `id_magazin` int(11) DEFAULT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `prenume` varchar(50) DEFAULT NULL,
  `data_nasterii` date DEFAULT NULL,
  `data_angajarii` date DEFAULT NULL,
  `functie` varchar(50) DEFAULT NULL,
  `salariu` decimal(10,2) DEFAULT NULL,
  `prime` decimal(10,2) DEFAULT NULL,
  `localitate_domiciliu` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id_superior` int(11) DEFAULT NULL,
  `parola` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `angajati`
--

INSERT INTO `angajati` (`id_angajat`, `id_magazin`, `nume`, `prenume`, `data_nasterii`, `data_angajarii`, `functie`, `salariu`, `prime`, `localitate_domiciliu`, `email`, `id_superior`, `parola`) VALUES
(1, 1, 'Chireanu', 'Mihai', '1980-05-12', '2024-01-10', 'Manager Regional', 9000.00, 1200.00, 'Craiova', 'mihai.chireanu@magapc.ro', NULL, 'CMihai'),
(2, 2, 'Ionescu', 'Vasile', '1985-08-20', '2024-02-15', 'Manager Magazin', 7500.00, 800.00, 'Slatina', 'vasile.ionescu@magapc.ro', NULL, 'IVasile'),
(3, 3, 'Georgescu', 'Mihai', '1979-11-30', '2024-03-01', 'Manager Magazin', 7000.00, 700.00, 'Caracal', 'mihai.georgescu@magapc.ro', NULL, 'GMihai'),
(4, 1, 'Radu', 'Ana', '1995-04-10', '2024-06-01', 'Consultant Vânzări', 4500.00, 300.00, 'Craiova', 'ana.radu@magapc.ro', 1, 'RAna'),
(5, 1, 'Dumitru', 'Alex', '1998-12-05', '2024-01-10', 'Tehnician Service', 5000.00, 400.00, 'Filiași', 'alex.dumitru@magapc.ro', 1, 'DAlex'),
(6, 1, 'Stan', 'Maria', '1992-03-15', '2024-08-20', 'Casier', 3800.00, 200.00, 'Craiova', 'maria.stan@magapc.ro', 1, 'SMaria'),
(7, 1, 'Marin', 'George', '1990-07-22', '2024-05-05', 'Asamblator PC', 5200.00, 450.00, 'Craiova', 'george.marin@magapc.ro', 1, 'MGeorge'),
(8, 2, 'Popa', 'Andrei', '1996-09-14', '2024-03-12', 'Consultant Vânzări', 4200.00, 250.00, 'Slatina', 'andrei.popa@magapc.ro', 2, 'PAndrei'),
(9, 2, 'Muresan', 'Ioana', '1993-02-28', '2024-04-01', 'Tehnician Service', 4700.00, 350.00, 'Balș', 'ioana.muresan@magapc.ro', 2, 'MIoana'),
(10, 2, 'Crisan', 'Paul', '1999-11-11', '2024-05-20', 'Livrator', 3300.00, 150.00, 'Piatra-Olt', 'paul.crisan@magapc.ro', 2, 'CPaul'),
(11, 2, 'Lazar', 'Elena', '1994-06-30', '2024-09-15', 'Casier', 3600.00, 200.00, 'Slatina', 'elena.lazar@magapc.ro', 2, 'LElena'),
(12, 3, 'Ardelean', 'Cristian', '1991-01-25', '2024-02-10', 'Consultant Vânzări', 4000.00, 250.00, 'Caracal', 'cristi.ardelean@magapc.ro', 3, 'ACristian'),
(13, 3, 'Banat', 'Simona', '1997-08-08', '2024-03-01', 'Tehnician', 4500.00, 300.00, 'Caracal', 'simona.banat@magapc.ro', 3, 'BSimona'),
(14, 3, 'Dobre', 'Vlad', '2000-05-05', '2024-01-15', 'Livrator', 3300.00, 100.00, 'Corabia', 'vlad.dobre@magapc.ro', 3, 'DVlad'),
(15, 3, 'Nistor', 'Diana', '1995-10-10', '2024-11-01', 'Casier', 3500.00, 200.00, 'Caracal', 'diana.nistor@magapc.ro', 3, 'NDiana'),
(16, 4, 'Crisan', 'Manuel', '2000-12-15', '2024-10-09', 'Manager Magazin', 4300.00, 100.00, 'Bals', 'crisan.mannuel@magapc.ro', NULL, 'CManuel'),
(17, 4, 'Woodye', 'Jack', '1999-04-20', '2024-03-10', 'Consultant Vânzări', 4350.00, 500.00, 'Craiova', 'jack.woodye@magapc.ro', 16, 'WJack'),
(18, 4, 'Floare', 'Gheorghe', '1989-02-10', '2025-05-15', 'Tehnician Service', 4800.00, 350.00, 'Bucovat', 'gheorghe.floare@magapac.ro', 16, 'FGheorghe'),
(19, 4, 'Adin', 'Marius', '1997-05-15', '2024-05-20', 'Livrator', 3400.00, 200.00, 'Sarbatoarea', 'marius.adin@magapc.ro', 16, 'AMarius'),
(20, 4, 'Bodi', 'Cristina', '2003-07-20', '2024-07-21', 'Casier', 3700.00, 500.00, 'Craiova', 'cristina.bodi@magapc.ro', 16, 'BCristina');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `aprovizionari`
--

CREATE TABLE `aprovizionari` (
  `id_aprovizionare` int(11) NOT NULL,
  `id_furnizor` int(11) DEFAULT NULL,
  `data_aprovizionare` date DEFAULT NULL,
  `total_factura` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `aprovizionari`
--

INSERT INTO `aprovizionari` (`id_aprovizionare`, `id_furnizor`, `data_aprovizionare`, `total_factura`) VALUES
(1, 3, '2025-09-10', 12500.00),
(2, 1, '2025-09-15', 28000.00),
(3, 2, '2025-09-20', 14500.00),
(4, 3, '2025-10-01', 5600.00),
(5, 1, '2025-10-05', 42000.00),
(6, 2, '2025-10-15', 9800.00),
(7, 3, '2025-10-25', 18000.00),
(8, 1, '2025-11-01', 55000.00),
(9, 2, '2025-11-10', 7500.00),
(10, 3, '2025-11-15', 3000.00),
(11, 2, '2025-01-11', 63930.00),
(12, 2, '2025-01-07', 56700.00),
(13, 3, '2025-01-21', 50030.00),
(14, 1, '2025-01-14', 63290.00),
(15, 1, '2025-01-04', 66800.00),
(16, 2, '2025-02-01', 57500.00),
(17, 2, '2025-02-27', 39200.00),
(18, 3, '2025-02-11', 52720.00),
(19, 2, '2025-02-27', 46800.00),
(20, 2, '2025-02-06', 23670.00),
(21, 1, '2025-03-08', 66750.00),
(22, 3, '2025-03-04', 28050.00),
(23, 2, '2025-03-22', 26610.00),
(24, 3, '2025-03-07', 67620.00),
(25, 1, '2025-03-02', 24980.00),
(26, 1, '2025-04-03', 15180.00),
(27, 1, '2025-04-26', 19860.00),
(28, 3, '2025-04-21', 44890.00),
(29, 1, '2025-04-24', 29350.00),
(30, 1, '2025-04-16', 23400.00),
(31, 1, '2025-05-04', 78800.00),
(32, 1, '2025-05-17', 40600.00),
(33, 3, '2025-05-06', 84350.00),
(34, 1, '2025-05-09', 61720.00),
(35, 3, '2025-05-25', 45720.00),
(36, 3, '2025-06-14', 103850.00),
(37, 3, '2025-06-26', 53840.00),
(38, 1, '2025-06-09', 27260.00),
(39, 2, '2025-06-03', 33450.00),
(40, 2, '2025-06-14', 26900.00),
(41, 2, '2025-07-05', 45460.00),
(42, 2, '2025-07-24', 35020.00),
(43, 1, '2025-07-04', 91950.00),
(44, 2, '2025-07-07', 46400.00),
(45, 1, '2025-07-22', 13050.00),
(46, 1, '2025-08-22', 63810.00),
(47, 2, '2025-08-27', 33200.00),
(48, 2, '2025-08-14', 22920.00),
(49, 3, '2025-08-16', 74400.00),
(50, 1, '2025-08-15', 75780.00),
(51, 2, '2025-09-10', 72000.00),
(52, 1, '2025-09-16', 79250.00),
(53, 2, '2025-09-12', 40000.00),
(54, 1, '2025-09-08', 35200.00),
(55, 2, '2025-09-22', 34800.00),
(56, 1, '2025-10-25', 62200.00),
(57, 2, '2025-10-28', 80560.00),
(58, 1, '2025-10-10', 35900.00),
(59, 3, '2025-10-18', 63000.00),
(60, 1, '2025-10-02', 56830.00),
(61, 2, '2025-11-23', 82630.00),
(62, 3, '2025-11-09', 36150.00),
(63, 2, '2025-11-06', 72450.00),
(64, 1, '2025-11-19', 98400.00),
(65, 1, '2025-11-08', 84700.00),
(66, 1, '2025-12-15', 70580.00),
(67, 2, '2025-12-14', 33300.00),
(68, 2, '2025-12-19', 30500.00),
(69, 1, '2025-12-24', 44980.00),
(70, 2, '2025-12-23', 104140.00);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `camere_magazin`
--

CREATE TABLE `camere_magazin` (
  `id_camera` int(11) NOT NULL,
  `id_magazin` int(11) DEFAULT NULL,
  `denumire` varchar(80) DEFAULT NULL,
  `descriere` varchar(500) DEFAULT NULL,
  `suprafata` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `camere_magazin`
--

INSERT INTO `camere_magazin` (`id_camera`, `id_magazin`, `denumire`, `descriere`, `suprafata`) VALUES
(1, 1, 'Birou Managerial Craiova 1', 'numar posturi=2, birou principal', 25),
(2, 1, 'Call Center Regional', 'numar posturi= 8', 60),
(3, 2, 'Birou Manager Slatina', 'numar posturi= 1', 15),
(4, 2, 'Birou Vanzari Slatina', 'numar posturi= 4', 30),
(5, 3, 'Birou Manager Caracal', 'numar posturi= 1', 12),
(6, 3, 'Birou Administrativ Caracal', 'numar posturi = 3', 20),
(7, 4, 'Birou Manager Craiova 2', 'numar posturi= 1', 18),
(8, 4, 'Birou Vanzari Craiova 2', 'numar posturi= 6', 30),
(9, 1, 'Service Central Dolj', 'numar banci lucru= 6, Osciloscop, Stație Lipit IR, Bench', 50),
(10, 2, 'Asamblare PC Slatina', 'numar banci lucru= 3, Testere surse, Kit diagnosticare', 20),
(11, 3, 'Service Rapid Caracal', 'numar banci lucru= 2, Trusa standard, Testere RAM', 15),
(12, 4, 'Asamblare Workstation&PC Craiova 2', 'numar banci lucru= 4,Testere surse, Kit diagnosticare, Testere RAM', 30),
(13, 1, 'Hub Logistic Oltenia', 'Numar rafturi= 150', 200),
(14, 2, 'Depozit Slatina', 'Numar rafturi= 40', 60),
(15, 3, 'Depozit Caracal', 'Numar rafturi= 25', 40),
(16, 4, 'Depozit Craiova 2', 'Numar rafturi= 50', 75),
(17, 1, 'Toaleta Clienti Craiova 1', 'Acces public', 15),
(18, 1, 'Toaleta Personal Craiova 1', 'Accest privat', 10),
(19, 2, 'Toaleta Clienti Slatina', 'Acces public', 15),
(20, 2, 'Toaleta Personal Slatina', 'Accest privat', 10),
(21, 3, 'Toaleta Clienti Caracal', 'Accest public', 15),
(22, 3, 'Toaleta Personal Caracal', 'Acces privat', 10),
(23, 4, 'Toaleta Clienti Craiova 2', 'Acces public', 15),
(24, 4, 'Toaleta Personal Craiova 2', 'Acces privat', 10),
(25, 1, 'Parcare Craiova 1', 'Numar locuri= 25', 350),
(26, 2, 'Parcare Slatina', 'Numar locuri= 15', 200),
(27, 3, 'Parcare Caracal', 'Numar locuri= 10', 100),
(28, 4, 'Parcare Craiova 2', 'Numar locuri= 20', 285),
(29, 1, 'Sala semnaturi manageri Craiova', 'Doar pentru manageri & director', 45),
(30, 2, 'Sala semnaturi Slatina', 'Sala semnaturi Slatina pentru angajati', 35),
(31, 3, 'Sala semnaturi Caracal', 'Sala semnaturi Caracal pentru angajati', 30),
(32, 4, 'Sala semnaturi Craiova 2', 'Sala semnaturi Craiova 2 pentru angajati', 40);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `clienti`
--

CREATE TABLE `clienti` (
  `id_client` int(11) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `prenume` varchar(50) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `adresa` varchar(100) DEFAULT NULL,
  `fidelitate` varchar(20) DEFAULT NULL,
  `puncte_fidelitate` int(11) DEFAULT NULL,
  `parola` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `clienti`
--

INSERT INTO `clienti` (`id_client`, `nume`, `prenume`, `telefon`, `email`, `adresa`, `fidelitate`, `puncte_fidelitate`, `parola`) VALUES
(1, 'Pop', 'Alexandru', '0711111111', 'alex.pop@yahoo.com', 'Craiova, Str. Amaradia', 'Gold', 1521, 'PAlexandru'),
(2, 'Ionescu', 'Maria', '0722222222', 'maria.io@gmail.com', 'Slatina, Bd. Primaverii', 'Silver', 800, 'IMaria'),
(3, 'Dumitrescu', 'George', '0733333333', 'g.dumitrescu@mail.ro', 'Caracal, Str. Libertatii', 'Bronze', 200, 'DGeorge'),
(4, 'Stoica', 'Elena', '0744444444', 'elena.stoica@gmail.com', 'Balș, Str. Teilor', 'None', 0, 'SElena'),
(5, 'Radulescu', 'Mihai', '0755555555', 'mihai.rad@yahoo.com', 'Craiova, Brazda lui Novac', 'Silver', 600, 'RMihai'),
(6, 'Munteanu', 'Andreea', '0766666666', 'andreea.m@gmail.com', 'Filiași, Str. Principala', 'Bronze', 150, 'MAndreea'),
(7, 'Constantin', 'Vlad', '0777777777', 'vlad.c@mail.com', 'Craiova, Calea Bucuresti', 'Gold', 2200, 'CVlad'),
(8, 'Urs', 'Ionut', '0788888888', 'ionut.urs@gmail.com', 'Drăgănești-Olt', 'None', 50, 'UIonut'),
(9, 'Dima', 'Cristina', '0799999999', 'cris.dima@yahoo.com', 'Slatina, Str. Crisan', 'Silver', 750, 'DCristina'),
(10, 'Toma', 'Lucian', '0712121212', 'lucian.t@gmail.com', 'Caracal, Str. Garii', 'Bronze', 300, 'TLucian'),
(11, 'Vasilescu', 'Irina', '0723232323', 'irina.v@mail.ro', 'Craiova, Rovine', 'None', 0, 'VIrina'),
(12, 'Negoita', 'Stefan', '0734343434', 'stefan.n@gmail.com', 'Corabia, Str. Portului', 'Silver', 550, 'NStefan'),
(13, 'Diaconu', 'Roxana', '0745454545', 'rox.dia@yahoo.com', 'Slatina, Steaua', 'Gold', 1200, 'DRoxana'),
(14, 'Barbu', 'Adrian', '0756565656', 'adi.barbu@gmail.com', 'Piatra-Olt', 'Bronze', 100, 'BAdrian'),
(15, 'Florea', 'Camelia', '0767676767', 'camelia.f@mail.com', 'Craiova, 1 Mai', 'None', 20, 'FCamelia'),
(16, 'Sandu', 'Gabriel', '0778787878', 'gabi.sandu@gmail.com', 'Balș', 'Silver', 900, 'SGabriel'),
(17, 'Mocanu', 'Daniela', '0789898989', 'dana.mocanu@yahoo.com', 'Scornicești', 'Gold', 1800, 'MDaniela'),
(18, 'Oprea', 'Florin', '0710101010', 'florin.o@gmail.com', 'Caracal, Centru', 'Bronze', 250, 'OFlorin'),
(19, 'Voinea', 'Anca', '0721212121', 'anca.voinea@mail.ro', 'Craiova, Lapus', 'None', 0, 'VAnca'),
(20, 'Manole', 'Razvan', '0732323232', 'razvan.m@gmail.com', 'Slatina, Progresul', 'Silver', 650, 'MRazvan'),
(21, 'Dumitru', 'Roxana', '0780674240', 'roxana.dumitru@gmail.com', 'Draganești-Olt, Str. Lazar', 'Gold', 1814, 'DRoxana'),
(22, 'Banat', 'Alexandru', '0772557225', 'alexandru.banat@gmail.com', 'Craiova, Str. Marin', 'Gold', 1232, 'BAlexandru'),
(23, 'Bodi', 'George', '0728803336', 'george.bodi@gmail.com', 'Bals, Str. Ardelean', 'Silver', 1932, 'BGeorge'),
(24, 'Dragomir', 'Adrian', '0719661121', 'adrian.dragomir@gmail.com', 'Craiova, Str. Dima', 'None', 0, 'DAdrian'),
(25, 'Nistor', 'Elena', '0717125132', 'elena.nistor@gmail.com', 'Corabia, Str. Crisan', 'Bronze', 1072, 'NElena'),
(26, 'Dobre', 'George', '0750731775', 'george.dobre@gmail.com', 'Draganești-Olt, Str. Radu', 'None', 0, 'DGeorge'),
(27, 'Dumitru', 'Cristina', '0734990547', 'cristina.dumitru@gmail.com', 'Filiasi, Str. Crisan', 'Gold', 696, 'DCristina'),
(28, 'Dragomir', 'Adrian', '0765539631', 'adrian.dragomir@gmail.com', 'Craiova, Str. Andrei', 'Silver', 1934, 'DAdrian'),
(29, 'Voinea', 'Razvan', '0720760966', 'razvan.voinea@gmail.com', 'Piatra-Olt, Str. Dima', 'Gold', 1862, 'VRazvan'),
(30, 'Gheorghe', 'Stefan', '0795866825', 'stefan.gheorghe@gmail.com', 'Slatina, Str. Tudor', 'None', 0, 'GStefan'),
(31, 'Georgescu', 'Diana', '0773258980', 'diana.georgescu@gmail.com', 'Filiasi, Str. Tudor', 'Bronze', 915, 'GDiana'),
(32, 'Radu', 'Vlad', '0744576896', 'vlad.radu@gmail.com', 'Piatra-Olt, Str. Gheorghe', 'Bronze', 1031, 'RVlad'),
(33, 'Muresan', 'Roxana', '0762340522', 'roxana.muresan@gmail.com', 'Slatina, Str. Iancu', 'Bronze', 1850, 'MRoxana'),
(34, 'Andrei', 'Ion', '0752143936', 'ion.andrei@gmail.com', 'Caracal, Str. Popescu', 'Bronze', 1054, 'AIon'),
(35, 'Dumitru', 'Manuel', '0775537373', 'manuel.dumitru@gmail.com', 'Bals, Str. Tudor', 'Bronze', 648, 'DManuel'),
(36, 'Adin', 'Vasile', '0721167238', 'vasile.adin@gmail.com', 'Filiasi, Str. Stoica', 'Silver', 239, 'AVasile'),
(37, 'Popescu', 'Camelia', '0788894734', 'camelia.popescu@gmail.com', 'Caracal, Str. Banat', 'Gold', 1517, 'PCamelia'),
(38, 'Matei', 'Stefan', '0774950503', 'stefan.matei@gmail.com', 'Caracal, Str. Constantin', 'Gold', 1499, 'MStefan'),
(39, 'Stoica', 'Roxana', '0787035225', 'roxana.stoica@gmail.com', 'Caracal, Str. Banat', 'Bronze', 898, 'SRoxana'),
(40, 'Stoian', 'Robert', '0722100201', 'robert.stoian@yahoo.com', 'Slatina, Str. Libertatii', 'Gold', 1450, 'SRobert'),
(41, 'Avram', 'Mihaela', '0733200302', 'm.avram@gmail.com', 'Craiova, Cartier Rovine', 'Silver', 850, 'AMihaela'),
(42, 'Neacsu', 'Florin', '0744300403', 'florin.neacsu@mail.ro', 'Caracal, Str. Cuza', 'Bronze', 250, 'NFlorin'),
(43, 'Preda', 'Alina', '0755400504', 'alina.p@gmail.com', 'Bals, Str. Garii', 'None', 0, 'PAlina'),
(44, 'Enache', 'Cornel', '0766500605', 'cornel.enache@yahoo.com', 'Filiasi, Str. Principala', 'Silver', 920, 'ECornel'),
(45, 'Ilie', 'Simona', '0777600706', 'simona.ilie@gmail.com', 'Corabia, Str. Portului', 'Gold', 2100, 'ISimona'),
(46, 'Ungureanu', 'Cosmin', '0788700807', 'cosmin.u@mail.com', 'Craiova, Brazda', 'Bronze', 300, 'UCosmin'),
(47, 'Serban', 'Oana', '0799800908', 'oana.serban@gmail.com', 'Slatina, Bd. Primaverii', 'Silver', 720, 'SOana'),
(48, 'Diaconu', 'Victor', '0711900109', 'victor.d@yahoo.ro', 'Caracal, Centru', 'None', 0, 'DVictor'),
(49, 'Moraru', 'Bianca', '0722011210', 'bianca.m@gmail.com', 'Drăgănești-Olt, Str. Teilor', 'Bronze', 150, 'MBianca'),
(50, 'Vaduva', 'Ionut', '0733122321', 'ionut.v@mail.ro', 'Piatra-Olt, Str. Crisan', 'Gold', 1600, 'VIonut'),
(51, 'Pascu', 'Teodora', '0744233432', 'teodora.p@gmail.com', 'Craiova, Calea Bucuresti', 'Silver', 550, 'PTeadora'),
(52, 'Gherghe', 'Daniel', '0755344543', 'daniel.g@yahoo.com', 'Bals, Str. Dunarii', 'Bronze', 200, 'GDaniel'),
(53, 'Cojocaru', 'Madalina', '0766455654', 'mada.cojo@gmail.com', 'Slatina, Str. Toamnei', 'None', 0, 'CMadalina'),
(54, 'Iacob', 'Razvan', '0777566765', 'razvan.i@mail.ro', 'Corabia, Str. Dunarii', 'Gold', 2300, 'IRazvan'),
(55, 'Roman', 'Anamaria', '0788677876', 'ana.roman@gmail.com', 'Filiasi, Str. Izvor', 'Silver', 880, 'RAnamaria'),
(56, 'Calin', 'Lucian', '0799788987', 'lucian.calin@yahoo.com', 'Craiova, Str. Amaradia', 'Bronze', 400, 'CLucian'),
(57, 'Ene', 'Denisa', '0711899098', 'denisa.ene@gmail.com', 'Caracal, Str. Plevnei', 'Silver', 670, 'EDenisa'),
(58, 'Nita', 'Bogdan', '0722900109', 'bogdan.nita@mail.ro', 'Slatina, Str. Pacii', 'None', 0, 'NBogdan'),
(59, 'Sandu', 'Patricia', '0733011210', 'patricia.s@gmail.com', 'Bals, Str. Victoriei', 'Gold', 1900, 'SPatricia'),
(60, 'Manolache', 'Gabriel', '0744122321', 'gabi.m@yahoo.ro', 'Piatra-Olt, Str. Garii', 'Bronze', 280, 'MGabriel');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `componente`
--

CREATE TABLE `componente` (
  `id_produs_parinte` int(11) NOT NULL,
  `id_produs_componenta` int(11) NOT NULL,
  `cantitate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `componente`
--

INSERT INTO `componente` (`id_produs_parinte`, `id_produs_componenta`, `cantitate`) VALUES
(13, 1, 1),
(13, 5, 1),
(13, 8, 1),
(13, 10, 1),
(13, 11, 1),
(14, 3, 1),
(14, 7, 1),
(14, 8, 1),
(14, 10, 1),
(14, 11, 1),
(15, 2, 1),
(15, 6, 1),
(15, 8, 1),
(15, 10, 1),
(15, 11, 1),
(16, 1, 1),
(16, 5, 1),
(16, 8, 1),
(16, 10, 1),
(16, 11, 1),
(17, 4, 1),
(17, 5, 1),
(17, 8, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(18, 1, 1),
(18, 5, 1),
(18, 8, 2),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `contestatii`
--

CREATE TABLE `contestatii` (
  `id_contestatie` int(11) NOT NULL,
  `id_vanzare` int(11) DEFAULT NULL,
  `data_contestatiei` date DEFAULT NULL,
  `motiv` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `contestatii`
--

INSERT INTO `contestatii` (`id_contestatie`, `id_vanzare`, `data_contestatiei`, `motiv`, `status`) VALUES
(1, 2, '2025-10-06', 'Produs incompatibil', 'Rezolvat'),
(2, 10, '2025-10-20', 'Colet deteriorat', 'In procesare');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `detalii_aprovizionare`
--

CREATE TABLE `detalii_aprovizionare` (
  `id_aprovizionare` int(11) NOT NULL,
  `id_produs` int(11) NOT NULL,
  `cantitate` int(11) DEFAULT NULL,
  `pret_achizitie` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `detalii_aprovizionare`
--

INSERT INTO `detalii_aprovizionare` (`id_aprovizionare`, `id_produs`, `cantitate`, `pret_achizitie`) VALUES
(1, 11, 10, 480.00),
(1, 12, 20, 220.00),
(2, 1, 15, 1350.00),
(2, 2, 5, 1700.00),
(3, 8, 10, 550.00),
(3, 10, 30, 380.00),
(4, 9, 20, 200.00),
(5, 5, 10, 1400.00),
(5, 7, 10, 2900.00),
(6, 4, 10, 1300.00),
(7, 3, 5, 1900.00),
(7, 6, 8, 1200.00),
(8, 1, 20, 1300.00),
(8, 7, 15, 2800.00),
(9, 11, 15, 480.00),
(10, 12, 10, 220.00),
(11, 2, 14, 1650.00),
(11, 3, 15, 1850.00),
(12, 13, 9, 4100.00),
(13, 2, 14, 1650.00),
(14, 2, 5, 1650.00),
(14, 7, 13, 2700.00),
(15, 13, 13, 4100.00),
(16, 2, 10, 1650.00),
(17, 2, 6, 1650.00),
(18, 2, 14, 1650.00),
(19, 2, 10, 1650.00),
(20, 5, 15, 1350.00),
(21, 1, 13, 1300.00),
(22, 2, 9, 1650.00),
(24, 13, 14, 4100.00),
(26, 2, 6, 1650.00),
(70, 2, 15, 1650.00),
(70, 13, 15, 4100.00);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `detalii_vanzare`
--

CREATE TABLE `detalii_vanzare` (
  `id_vanzare` int(11) NOT NULL,
  `id_produs` int(11) NOT NULL,
  `cantitate` int(11) DEFAULT NULL,
  `pret_vanzare_final` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `detalii_vanzare`
--

INSERT INTO `detalii_vanzare` (`id_vanzare`, `id_produs`, `cantitate`, `pret_vanzare_final`) VALUES
(1, 1, 1, 1600.00),
(1, 5, 1, 1600.00),
(2, 10, 1, 450.00),
(3, 8, 2, 650.00),
(4, 1, 1, 1600.00),
(5, 11, 1, 550.00),
(6, 5, 1, 1650.00),
(7, 3, 1, 2100.00),
(7, 7, 1, 3200.00),
(8, 10, 1, 450.00),
(9, 4, 1, 1550.00),
(10, 6, 1, 1450.00),
(11, 9, 1, 250.00),
(12, 1, 1, 1600.00),
(13, 8, 1, 650.00),
(13, 10, 1, 450.00),
(14, 11, 1, 550.00),
(15, 5, 1, 1650.00),
(16, 3, 1, 2100.00),
(17, 8, 4, 650.00),
(18, 4, 1, 1550.00),
(19, 6, 1, 1450.00),
(20, 9, 2, 250.00),
(21, 7, 1, 3200.00),
(22, 2, 1, 2000.00),
(23, 13, 1, 4900.00),
(32, 1, 1, 1600.00),
(32, 2, 1, 2000.00),
(33, 1, 1, 1600.00),
(34, 2, 1, 2000.00),
(35, 10, 1, 450.00),
(36, 5, 1, 1650.00),
(37, 1, 1, 1600.00),
(38, 3, 1, 2100.00),
(39, 8, 1, 650.00),
(40, 7, 1, 3200.00),
(41, 2, 1, 2000.00),
(42, 1, 1, 1600.00),
(43, 10, 1, 450.00),
(44, 13, 1, 4900.00),
(45, 1, 1, 1600.00),
(46, 2, 1, 2000.00),
(47, 4, 1, 1550.00),
(48, 1, 1, 1600.00),
(49, 2, 1, 2000.00),
(50, 7, 1, 3200.00),
(51, 8, 1, 650.00),
(52, 5, 1, 1650.00),
(53, 1, 1, 1600.00),
(54, 13, 1, 4900.00),
(55, 3, 1, 2100.00),
(56, 10, 1, 450.00),
(57, 2, 1, 2000.00),
(58, 1, 1, 1600.00),
(59, 5, 1, 1650.00),
(60, 7, 1, 3200.00),
(61, 1, 1, 1600.00),
(62, 2, 1, 2000.00),
(63, 10, 1, 450.00),
(64, 2, 1, 2000.00),
(65, 1, 1, 1600.00),
(66, 7, 1, 3200.00),
(67, 1, 1, 1600.00),
(68, 2, 1, 2000.00),
(68, 3, 1, 2100.00),
(69, 1, 1, 1600.00),
(69, 4, 1, 1550.00),
(70, 1, 1, 1600.00),
(71, 1, 1, 1600.00),
(72, 2, 1, 2000.00),
(72, 3, 1, 2100.00),
(73, 5, 2, 1650.00),
(73, 8, 1, 650.00),
(74, 3, 1, 2100.00),
(74, 5, 1, 1650.00),
(75, 1, 1, 1600.00),
(75, 2, 1, 2000.00),
(75, 3, 1, 2100.00),
(75, 8, 1, 650.00),
(76, 10, 1, 450.00),
(76, 11, 3, 550.00),
(77, 13, 2, 4900.00),
(77, 14, 1, 7500.00),
(77, 16, 1, 5200.00),
(77, 17, 1, 5800.00),
(77, 18, 1, 6500.00),
(78, 13, 2, 4900.00),
(78, 14, 1, 7500.00),
(78, 16, 1, 5200.00),
(78, 17, 1, 5800.00),
(78, 18, 1, 6500.00),
(79, 13, 2, 4900.00),
(79, 14, 1, 7500.00),
(79, 16, 1, 5200.00),
(79, 17, 1, 5800.00),
(79, 18, 1, 6500.00),
(80, 13, 2, 4900.00),
(80, 14, 1, 7500.00),
(80, 16, 1, 5200.00),
(80, 17, 1, 5800.00),
(80, 18, 1, 6500.00),
(81, 13, 2, 4900.00),
(81, 14, 1, 7500.00),
(81, 16, 1, 5200.00),
(81, 17, 1, 5800.00),
(81, 18, 1, 6500.00),
(82, 13, 2, 4900.00),
(82, 14, 1, 7500.00),
(82, 16, 1, 5200.00),
(82, 17, 1, 5800.00),
(82, 18, 1, 6500.00),
(83, 13, 2, 4900.00),
(83, 14, 1, 7500.00),
(83, 16, 1, 5200.00),
(83, 17, 1, 5800.00),
(83, 18, 1, 6500.00),
(84, 13, 2, 4900.00),
(84, 14, 1, 7500.00),
(84, 16, 1, 5200.00),
(84, 17, 1, 5800.00),
(84, 18, 1, 6500.00),
(85, 13, 2, 4900.00),
(85, 14, 1, 7500.00),
(85, 16, 1, 5200.00),
(85, 17, 1, 5800.00),
(85, 18, 1, 6500.00),
(86, 13, 2, 4900.00),
(86, 14, 1, 7500.00),
(86, 16, 1, 5200.00),
(86, 17, 1, 5800.00),
(86, 18, 1, 6500.00),
(87, 13, 2, 4900.00),
(87, 14, 1, 7500.00),
(87, 16, 1, 5200.00),
(87, 17, 1, 5800.00),
(87, 18, 1, 6500.00),
(88, 13, 2, 4900.00),
(88, 14, 1, 7500.00),
(88, 16, 1, 5200.00),
(88, 17, 1, 5800.00),
(88, 18, 1, 6500.00),
(89, 13, 2, 4900.00),
(89, 14, 1, 7500.00),
(89, 16, 1, 5200.00),
(89, 17, 1, 5800.00),
(89, 18, 1, 6500.00),
(90, 13, 2, 4900.00),
(90, 14, 1, 7500.00),
(90, 16, 1, 5200.00),
(90, 17, 1, 5800.00),
(90, 18, 1, 6500.00),
(91, 13, 2, 4900.00),
(91, 14, 1, 7500.00),
(91, 16, 1, 5200.00),
(91, 17, 1, 5800.00),
(91, 18, 1, 6500.00),
(92, 13, 2, 4900.00),
(92, 14, 1, 7500.00),
(92, 16, 1, 5200.00),
(92, 17, 1, 5800.00),
(92, 18, 1, 6500.00),
(93, 13, 2, 4900.00),
(93, 14, 1, 7500.00),
(93, 16, 1, 5200.00),
(93, 17, 1, 5800.00),
(93, 18, 1, 6500.00),
(94, 13, 2, 4900.00),
(94, 14, 1, 7500.00),
(94, 16, 1, 5200.00),
(94, 17, 1, 5800.00),
(94, 18, 1, 6500.00),
(95, 13, 2, 4900.00),
(95, 14, 1, 7500.00),
(95, 16, 1, 5200.00),
(95, 17, 1, 5800.00),
(95, 18, 1, 6500.00),
(96, 13, 2, 4900.00),
(96, 14, 1, 7500.00),
(96, 16, 1, 5200.00),
(96, 17, 1, 5800.00),
(96, 18, 1, 6500.00),
(97, 13, 2, 4900.00),
(97, 14, 1, 7500.00),
(97, 16, 1, 5200.00),
(97, 17, 1, 5800.00),
(97, 18, 1, 6500.00),
(98, 13, 2, 4900.00),
(98, 14, 1, 7500.00),
(98, 16, 1, 5200.00),
(98, 17, 1, 5800.00),
(98, 18, 1, 6500.00),
(99, 13, 2, 4900.00),
(99, 14, 1, 7500.00),
(99, 16, 1, 5200.00),
(99, 17, 1, 5800.00),
(99, 18, 1, 6500.00),
(100, 13, 2, 4900.00),
(100, 14, 1, 7500.00),
(100, 16, 1, 5200.00),
(100, 17, 1, 5800.00),
(100, 18, 1, 6500.00),
(101, 13, 2, 4900.00),
(101, 14, 1, 7500.00),
(101, 16, 1, 5200.00),
(101, 17, 1, 5800.00),
(101, 18, 1, 6500.00),
(102, 13, 2, 4900.00),
(102, 14, 1, 7500.00),
(102, 16, 1, 5200.00),
(102, 17, 1, 5800.00),
(102, 18, 1, 6500.00),
(103, 13, 2, 4900.00),
(103, 14, 1, 7500.00),
(103, 16, 1, 5200.00),
(103, 17, 1, 5800.00),
(103, 18, 1, 6500.00),
(104, 13, 2, 4900.00),
(104, 14, 1, 7500.00),
(104, 16, 1, 5200.00),
(104, 17, 1, 5800.00),
(104, 18, 1, 6500.00),
(108, 13, 1, 4900.00),
(108, 15, 1, 5500.00),
(108, 16, 1, 5200.00),
(108, 17, 1, 5800.00),
(109, 13, 1, 4900.00),
(109, 15, 1, 5500.00),
(109, 16, 1, 5200.00),
(109, 17, 1, 5800.00),
(110, 13, 1, 4900.00),
(110, 15, 1, 5500.00),
(110, 16, 1, 5200.00),
(110, 17, 1, 5800.00),
(111, 13, 1, 4900.00),
(111, 15, 1, 5500.00),
(111, 16, 1, 5200.00),
(111, 17, 1, 5800.00),
(112, 13, 1, 4900.00),
(112, 15, 1, 5500.00),
(112, 16, 1, 5200.00),
(112, 17, 1, 5800.00),
(113, 13, 1, 4900.00),
(113, 15, 1, 5500.00),
(113, 16, 1, 5200.00),
(113, 17, 1, 5800.00),
(114, 13, 1, 4900.00),
(114, 15, 1, 5500.00),
(114, 16, 1, 5200.00),
(114, 17, 1, 5800.00),
(115, 13, 1, 4900.00),
(115, 15, 1, 5500.00),
(115, 16, 1, 5200.00),
(115, 17, 1, 5800.00),
(116, 13, 1, 4900.00),
(116, 15, 1, 5500.00),
(116, 16, 1, 5200.00),
(116, 17, 1, 5800.00),
(117, 13, 1, 4900.00),
(117, 15, 1, 5500.00),
(117, 16, 1, 5200.00),
(117, 17, 1, 5800.00),
(118, 13, 1, 4900.00),
(118, 15, 1, 5500.00),
(118, 16, 1, 5200.00),
(118, 17, 1, 5800.00),
(119, 13, 1, 4900.00),
(119, 15, 1, 5500.00),
(119, 16, 1, 5200.00),
(119, 17, 1, 5800.00),
(120, 13, 1, 4900.00),
(120, 15, 1, 5500.00),
(120, 16, 1, 5200.00),
(120, 17, 1, 5800.00),
(121, 13, 1, 4900.00),
(121, 15, 1, 5500.00),
(121, 16, 1, 5200.00),
(121, 17, 1, 5800.00),
(122, 13, 1, 4900.00),
(122, 15, 1, 5500.00),
(122, 16, 1, 5200.00),
(122, 17, 1, 5800.00),
(123, 13, 1, 4900.00),
(123, 15, 1, 5500.00),
(123, 16, 1, 5200.00),
(123, 17, 1, 5800.00),
(124, 13, 1, 4900.00),
(124, 15, 1, 5500.00),
(124, 16, 1, 5200.00),
(124, 17, 1, 5800.00),
(125, 13, 1, 4900.00),
(125, 15, 1, 5500.00),
(125, 16, 1, 5200.00),
(125, 17, 1, 5800.00),
(126, 13, 1, 4900.00),
(126, 15, 1, 5500.00),
(126, 16, 1, 5200.00),
(126, 17, 1, 5800.00),
(127, 13, 1, 4900.00),
(127, 15, 1, 5500.00),
(127, 16, 1, 5200.00),
(127, 17, 1, 5800.00);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `furnizori`
--

CREATE TABLE `furnizori` (
  `id_furnizor` int(11) NOT NULL,
  `nume_furnizor` varchar(100) DEFAULT NULL,
  `cui` varchar(20) DEFAULT NULL,
  `adresa` varchar(100) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `furnizori`
--

INSERT INTO `furnizori` (`id_furnizor`, `nume_furnizor`, `cui`, `adresa`, `telefon`, `email`) VALUES
(1, 'Global IT Distribuție', 'RO123456', 'Str. Depozitelor 4, Ilfov', '0722111111', 'comenzi@globalit.ro'),
(2, 'PC Components Import', 'RO654321', 'Bd. Timișoara 10, București', '0733222222', 'contact@pccomps.ro'),
(3, 'Oltenia Tech Distribution', 'RO987654', 'Calea Severinului 15, Craiova', '0744333333', 'sales@olteniatech.ro');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `magazine`
--

CREATE TABLE `magazine` (
  `id_magazin` int(11) NOT NULL,
  `adresa` varchar(100) DEFAULT NULL,
  `oras` varchar(50) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `nume` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `magazine`
--

INSERT INTO `magazine` (`id_magazin`, `adresa`, `oras`, `telefon`, `email`, `site`, `nume`) VALUES
(1, 'Calea București, Nr. 80 (Rotonda)', 'Craiova', '0251112233', 'craiova@magapc.ro', 'www.magapc.ro', 'Craiova'),
(2, 'Bulevardul A.I. Cuza, Nr. 10', 'Slatina', '0249112233', 'slatina@magapc.ro', 'www.magapc.ro', 'Slatina'),
(3, 'Strada Plevnei, Nr. 5', 'Caracal', '0249445566', 'caracal@magapc.ro', 'www.magapc.ro', 'Caracal'),
(4, 'Calea Severinului, Nr 55 (Craiovita Noua)', 'Craiova', '0251234732', 'craiova2@magapc.ro', 'www.magapc.ro', 'Craiova2');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `produse`
--

CREATE TABLE `produse` (
  `id_produs` int(11) NOT NULL,
  `id_categorie` int(11) DEFAULT NULL,
  `denumire` varchar(100) DEFAULT NULL,
  `descriere` varchar(255) DEFAULT NULL,
  `pret_referinta` decimal(10,2) DEFAULT NULL,
  `garantie_luni` int(11) DEFAULT NULL,
  `grad_uzura_morala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `produse`
--

INSERT INTO `produse` (`id_produs`, `id_categorie`, `denumire`, `descriere`, `pret_referinta`, `garantie_luni`, `grad_uzura_morala`) VALUES
(1, 1, 'AMD Ryzen 5 9600X', 'Procesor AMD Socket AM5, 6 nuclee', 1600.00, 36, 0),
(2, 1, 'AMD Ryzen 5 9600XT', 'Procesor AMD Ediție Specială', 2000.00, 36, 0),
(3, 1, 'AMD Ryzen 7 7800X3D', 'Procesor Gaming AM5 3D V-Cache', 2100.00, 36, 0),
(4, 1, 'Intel Core i5 13600K', 'Procesor Intel gen 13', 1550.00, 36, 1),
(5, 2, 'NVIDIA GeForce RTX 4060', 'Placa video 8GB GDDR6', 1650.00, 24, 0),
(6, 2, 'AMD Radeon RX 7600', 'Placa video 8GB GDDR6', 1450.00, 24, 0),
(7, 2, 'NVIDIA GeForce RTX 4070', 'Placa video 12GB GDDR6X', 3200.00, 24, 0),
(8, 3, 'Kingston Fury 32GB DDR5', 'Kit Dual Channel 6000MHz', 650.00, 99, 0),
(9, 3, 'Corsair Vengeance 16GB DDR4', 'Kit 3200MHz CL16', 250.00, 99, 1),
(10, 4, 'Samsung 980 PRO 1TB', 'SSD M.2 NVMe PCIe 4.0', 450.00, 60, 0),
(11, 5, 'Sursa Seasonic 750W', '80 Plus Gold, Modulara', 550.00, 120, 0),
(12, 4, 'HDD Seagate 2TB', 'HDD 7200rpm', 300.00, 24, 1),
(13, 6, 'PC Gaming Oltenia Start', 'Sistem asamblat complet', 4900.00, 24, 0),
(14, 6, 'PC Gaming AMD Elite', 'R7 7800X3D, RTX 4070, 32GB DDR5, 1TB NVMe', 7500.00, 24, 0),
(15, 6, 'PC Gaming Radeon Power', 'R5 9600XT, RX 7600, 32GB DDR5, 1TB NVMe', 5500.00, 24, 0),
(16, 6, 'PC Gaming Budget Pro', 'R5 9600X, RTX 4060, 32GB DDR5, 1TB NVMe', 5200.00, 24, 0),
(17, 6, 'Workstation Intel Studio', 'i5 13600K, RTX 4060, 32GB DDR5, 1TB NVMe, 2TB HDD', 5800.00, 36, 0),
(18, 6, 'Workstation Data Cruncher', 'R5 9600X, 64GB DDR5, 1TB NVMe, 2TB HDD, RTX 4060', 6500.00, 36, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `produs_promotie`
--

CREATE TABLE `produs_promotie` (
  `id_promotie` int(11) NOT NULL,
  `id_produs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `produs_promotie`
--

INSERT INTO `produs_promotie` (`id_promotie`, `id_produs`) VALUES
(1, 3),
(2, 7);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `promotii`
--

CREATE TABLE `promotii` (
  `id_promotie` int(11) NOT NULL,
  `denumire_promotie` varchar(100) DEFAULT NULL,
  `data_inceput` date DEFAULT NULL,
  `data_sfarsit` date DEFAULT NULL,
  `procent_reducere` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `promotii`
--

INSERT INTO `promotii` (`id_promotie`, `denumire_promotie`, `data_inceput`, `data_sfarsit`, `procent_reducere`) VALUES
(1, 'Oltenia Gaming Week', '2025-10-01', '2025-10-07', 10),
(2, 'Black Friday', '2025-11-15', '2025-11-30', 20);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `stocuri`
--

CREATE TABLE `stocuri` (
  `id_stoc` int(11) NOT NULL,
  `id_magazin` int(11) DEFAULT NULL,
  `id_produs` int(11) DEFAULT NULL,
  `cantitate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `stocuri`
--

INSERT INTO `stocuri` (`id_stoc`, `id_magazin`, `id_produs`, `cantitate`) VALUES
(1, 1, 1, 20),
(2, 1, 2, 30),
(3, 1, 5, 45),
(4, 1, 8, 70),
(5, 1, 7, 59),
(6, 1, 13, 15),
(7, 2, 1, 15),
(8, 2, 4, 7),
(9, 2, 6, 5),
(10, 2, 10, 15),
(11, 2, 2, 3),
(12, 3, 1, 3),
(13, 3, 7, 2),
(14, 3, 9, 10),
(15, 3, 11, 8),
(16, 3, 3, 5),
(17, 4, 1, 5),
(18, 4, 2, 2),
(19, 4, 3, 3),
(20, 4, 5, 4),
(21, 4, 8, 9),
(22, 4, 10, 14),
(23, 4, 11, 17),
(24, 4, 13, 3),
(25, 1, 3, 15),
(26, 1, 4, 30),
(27, 1, 6, 30),
(28, 1, 9, 5),
(29, 1, 10, 80),
(30, 1, 11, 96),
(31, 1, 12, 101),
(32, 2, 3, 10),
(33, 2, 5, 10),
(34, 2, 7, 7),
(35, 2, 8, 35),
(36, 2, 9, 5),
(37, 2, 11, 30),
(38, 2, 12, 20),
(39, 2, 13, 5),
(40, 3, 2, 10),
(41, 3, 8, 10),
(42, 1, 14, 15),
(43, 1, 15, 7),
(44, 1, 16, 12),
(45, 1, 17, 4),
(46, 1, 18, 18),
(47, 2, 14, 5),
(48, 2, 15, 14),
(49, 2, 16, 8),
(50, 2, 17, 11),
(51, 2, 18, 6),
(52, 3, 14, 3),
(53, 3, 15, 9),
(54, 3, 16, 17),
(55, 3, 17, 13),
(56, 3, 18, 5),
(57, 4, 14, 11),
(58, 4, 15, 18),
(59, 4, 16, 6),
(60, 4, 17, 9),
(61, 4, 18, 14);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vanzari`
--

CREATE TABLE `vanzari` (
  `id_vanzare` int(11) NOT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_angajat_vanzator` int(11) DEFAULT NULL,
  `id_angajat_livrator` int(11) DEFAULT NULL,
  `data_vanzare` date DEFAULT NULL,
  `total_plata` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `vanzari`
--

INSERT INTO `vanzari` (`id_vanzare`, `id_client`, `id_angajat_vanzator`, `id_angajat_livrator`, `data_vanzare`, `total_plata`) VALUES
(1, 65, 4, NULL, '2025-10-01', 3200.00),
(2, 79, 8, 10, '2025-10-05', 450.00),
(3, 34, 12, NULL, '2025-10-02', 1300.00),
(4, 13, 12, NULL, '2025-10-03', 1600.00),
(5, 46, 4, NULL, '2025-10-05', 550.00),
(6, 28, 4, NULL, '2025-10-08', 1650.00),
(7, 81, 4, NULL, '2025-10-10', 5300.00),
(8, 77, 8, NULL, '2025-10-12', 450.00),
(9, 63, 8, NULL, '2025-10-15', 1550.00),
(10, 81, 12, 14, '2025-10-18', 1450.00),
(11, 54, 4, NULL, '2025-10-20', 250.00),
(12, 25, 12, NULL, '2025-10-22', 1600.00),
(13, 44, 8, NULL, '2025-10-25', 1100.00),
(14, 64, 8, 10, '2025-10-28', 550.00),
(15, 26, 4, NULL, '2025-11-01', 1650.00),
(16, 19, 8, NULL, '2025-11-03', 2100.00),
(17, 15, 8, NULL, '2025-11-05', 2600.00),
(18, 20, 12, NULL, '2025-11-08', 1550.00),
(19, 53, 4, NULL, '2025-11-12', 1450.00),
(20, 43, 8, NULL, '2025-11-15', 500.00),
(21, 56, 4, NULL, '2025-11-18', 3200.00),
(22, 69, 4, NULL, '2025-11-20', 2000.00),
(23, 14, 4, NULL, '2025-11-21', 4900.00),
(24, 25, 4, 10, '2025-01-15', 3600.00),
(25, 3, 12, NULL, '2025-01-20', 1600.00),
(26, 21, 8, 10, '2025-01-25', 2000.00),
(27, 14, 12, 14, '2025-01-28', 450.00),
(28, 8, 8, 10, '2025-02-05', 1650.00),
(29, 76, 12, 14, '2025-02-12', 1600.00),
(30, 31, 4, NULL, '2025-02-18', 2100.00),
(31, 11, 8, 10, '2025-02-25', 650.00),
(32, 39, 4, NULL, '2025-03-03', 3200.00),
(33, 80, 12, 14, '2025-03-10', 2000.00),
(34, 42, 8, 10, '2025-03-15', 1600.00),
(35, 51, 8, 10, '2025-03-22', 450.00),
(36, 46, 4, NULL, '2025-04-05', 4900.00),
(37, 78, 8, 10, '2025-04-12', 1600.00),
(38, 6, 17, 19, '2025-04-20', 2000.00),
(39, 39, 12, 14, '2025-04-28', 1550.00),
(40, 14, 4, NULL, '2025-05-02', 1600.00),
(41, 34, 17, 19, '2025-05-10', 2000.00),
(42, 48, 4, NULL, '2025-05-15', 3200.00),
(43, 54, 8, 10, '2025-05-25', 650.00),
(44, 47, 12, 14, '2025-06-05', 1650.00),
(45, 71, 4, NULL, '2025-06-12', 1600.00),
(46, 53, 17, 19, '2025-06-20', 4900.00),
(47, 50, 8, 10, '2025-06-28', 2100.00),
(48, 9, 12, 14, '2025-07-04', 450.00),
(49, 56, 4, NULL, '2025-07-11', 2000.00),
(50, 10, 8, 10, '2025-07-18', 1600.00),
(51, 44, 4, NULL, '2025-07-25', 1650.00),
(52, 29, 8, 10, '2025-08-02', 3200.00),
(53, 10, 12, 14, '2025-08-10', 1600.00),
(54, 44, 17, 19, '2025-08-15', 2000.00),
(55, 29, 8, 10, '2025-08-28', 450.00),
(56, 10, 12, 14, '2025-12-02', 450.00),
(57, 46, 4, NULL, '2025-12-05', 2000.00),
(58, 36, 8, 10, '2025-12-10', 1600.00),
(59, 43, 4, NULL, '2025-12-12', 1650.00),
(60, 23, 8, 10, '2025-12-15', 3200.00),
(61, 69, 12, 14, '2025-12-18', 1600.00),
(62, 32, 17, 19, '2025-12-18', 2000.00),
(63, 32, 8, 10, '2025-12-18', 450.00),
(64, 63, 8, 10, '2025-09-05', 2000.00),
(65, 57, 4, NULL, '2025-09-12', 1600.00),
(66, 13, 17, NULL, '2025-09-18', 3200.00),
(67, 56, 17, NULL, '2025-09-25', 1600.00),
(68, 78, 4, NULL, '2025-12-19', 4100.00),
(69, 61, 8, NULL, '2025-12-19', 3150.00),
(70, 68, 4, NULL, '2025-12-19', 1600.00),
(71, 78, 12, 14, '2025-12-19', 1600.00),
(72, 25, 17, 19, '2025-12-19', 4100.00),
(73, 49, 17, 19, '2025-12-19', 3950.00),
(74, 9, 4, NULL, '2025-12-19', 3750.00),
(75, 58, 4, NULL, '2025-12-19', 6350.00),
(76, 20, 17, 19, '2025-12-19', 2100.00),
(77, 8, 4, NULL, '2025-01-20', 34800.00),
(78, 58, 8, NULL, '2025-01-20', 34800.00),
(79, 22, 12, NULL, '2025-01-20', 34800.00),
(80, 18, 17, NULL, '2025-01-20', 34800.00),
(81, 24, 4, NULL, '2025-03-20', 34800.00),
(82, 66, 8, NULL, '2025-03-20', 34800.00),
(83, 14, 12, NULL, '2025-03-20', 34800.00),
(84, 33, 17, NULL, '2025-03-20', 34800.00),
(85, 44, 4, NULL, '2025-05-20', 34800.00),
(86, 37, 8, NULL, '2025-05-20', 34800.00),
(87, 53, 12, NULL, '2025-05-20', 34800.00),
(88, 74, 17, NULL, '2025-05-20', 34800.00),
(89, 46, 4, NULL, '2025-07-20', 34800.00),
(90, 9, 8, NULL, '2025-07-20', 34800.00),
(91, 67, 12, NULL, '2025-07-20', 34800.00),
(92, 63, 17, NULL, '2025-07-20', 34800.00),
(93, 36, 4, NULL, '2025-09-20', 34800.00),
(94, 69, 8, NULL, '2025-09-20', 34800.00),
(95, 73, 12, NULL, '2025-09-20', 34800.00),
(96, 80, 17, NULL, '2025-09-20', 34800.00),
(97, 16, 4, NULL, '2025-11-20', 34800.00),
(98, 3, 8, NULL, '2025-11-20', 34800.00),
(99, 49, 12, NULL, '2025-11-20', 34800.00),
(100, 71, 17, NULL, '2025-11-20', 34800.00),
(101, 46, 4, NULL, '2025-12-20', 34800.00),
(102, 18, 8, NULL, '2025-12-20', 34800.00),
(103, 32, 12, NULL, '2025-12-20', 34800.00),
(104, 26, 17, NULL, '2025-12-20', 34800.00),
(108, 31, 4, NULL, '2025-02-20', 21400.00),
(109, 78, 8, NULL, '2025-02-20', 21400.00),
(110, 51, 12, NULL, '2025-02-20', 21400.00),
(111, 23, 17, NULL, '2025-02-20', 21400.00),
(112, 40, 4, NULL, '2025-04-20', 21400.00),
(113, 50, 8, NULL, '2025-04-20', 21400.00),
(114, 47, 12, NULL, '2025-04-20', 21400.00),
(115, 5, 17, NULL, '2025-04-20', 21400.00),
(116, 46, 4, NULL, '2025-06-20', 21400.00),
(117, 51, 8, NULL, '2025-06-20', 21400.00),
(118, 36, 12, NULL, '2025-06-20', 21400.00),
(119, 28, 17, NULL, '2025-06-20', 21400.00),
(120, 32, 4, NULL, '2025-08-20', 21400.00),
(121, 73, 8, NULL, '2025-08-20', 21400.00),
(122, 25, 12, NULL, '2025-08-20', 21400.00),
(123, 69, 17, NULL, '2025-08-20', 21400.00),
(124, 28, 4, NULL, '2025-10-20', 21400.00),
(125, 10, 8, NULL, '2025-10-20', 21400.00),
(126, 50, 12, NULL, '2025-10-20', 21400.00),
(127, 55, 17, NULL, '2025-10-20', 21400.00);

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `angajati`
--
ALTER TABLE `angajati`
  ADD PRIMARY KEY (`id_angajat`);

--
-- Indexuri pentru tabele `aprovizionari`
--
ALTER TABLE `aprovizionari`
  ADD PRIMARY KEY (`id_aprovizionare`);

--
-- Indexuri pentru tabele `camere_magazin`
--
ALTER TABLE `camere_magazin`
  ADD PRIMARY KEY (`id_camera`);

--
-- Indexuri pentru tabele `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexuri pentru tabele `componente`
--
ALTER TABLE `componente`
  ADD PRIMARY KEY (`id_produs_parinte`,`id_produs_componenta`);

--
-- Indexuri pentru tabele `contestatii`
--
ALTER TABLE `contestatii`
  ADD PRIMARY KEY (`id_contestatie`);

--
-- Indexuri pentru tabele `detalii_aprovizionare`
--
ALTER TABLE `detalii_aprovizionare`
  ADD PRIMARY KEY (`id_aprovizionare`,`id_produs`);

--
-- Indexuri pentru tabele `detalii_vanzare`
--
ALTER TABLE `detalii_vanzare`
  ADD PRIMARY KEY (`id_vanzare`,`id_produs`);

--
-- Indexuri pentru tabele `furnizori`
--
ALTER TABLE `furnizori`
  ADD PRIMARY KEY (`id_furnizor`);

--
-- Indexuri pentru tabele `magazine`
--
ALTER TABLE `magazine`
  ADD PRIMARY KEY (`id_magazin`);

--
-- Indexuri pentru tabele `produse`
--
ALTER TABLE `produse`
  ADD PRIMARY KEY (`id_produs`);

--
-- Indexuri pentru tabele `produs_promotie`
--
ALTER TABLE `produs_promotie`
  ADD PRIMARY KEY (`id_promotie`,`id_produs`);

--
-- Indexuri pentru tabele `promotii`
--
ALTER TABLE `promotii`
  ADD PRIMARY KEY (`id_promotie`);

--
-- Indexuri pentru tabele `stocuri`
--
ALTER TABLE `stocuri`
  ADD PRIMARY KEY (`id_stoc`);

--
-- Indexuri pentru tabele `vanzari`
--
ALTER TABLE `vanzari`
  ADD PRIMARY KEY (`id_vanzare`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `angajati`
--
ALTER TABLE `angajati`
  MODIFY `id_angajat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pentru tabele `aprovizionari`
--
ALTER TABLE `aprovizionari`
  MODIFY `id_aprovizionare` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pentru tabele `camere_magazin`
--
ALTER TABLE `camere_magazin`
  MODIFY `id_camera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pentru tabele `clienti`
--
ALTER TABLE `clienti`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pentru tabele `contestatii`
--
ALTER TABLE `contestatii`
  MODIFY `id_contestatie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `furnizori`
--
ALTER TABLE `furnizori`
  MODIFY `id_furnizor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `magazine`
--
ALTER TABLE `magazine`
  MODIFY `id_magazin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pentru tabele `produse`
--
ALTER TABLE `produse`
  MODIFY `id_produs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pentru tabele `promotii`
--
ALTER TABLE `promotii`
  MODIFY `id_promotie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `stocuri`
--
ALTER TABLE `stocuri`
  MODIFY `id_stoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pentru tabele `vanzari`
--
ALTER TABLE `vanzari`
  MODIFY `id_vanzare` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
