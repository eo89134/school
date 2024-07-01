-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 11 apr 2022 om 14:31
-- Serverversie: 10.4.22-MariaDB
-- PHP-versie: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--
CREATE DATABASE IF NOT EXISTS `healthone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `healthone`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`) VALUES
(1, 'crosstrainer', NULL),
(2, 'roeitrainer', NULL),
(3, 'loopband', NULL),
(4, 'hometrainer', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `categorie_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `categorie_id`) VALUES
(1, 'Crosstrainer - VirtuFit CTR 1.0 - Met Tablethouder - Cross Trainer Fitness ', NULL, 'Blijf fit en op het juiste gewicht met de VirtuFit CTR 1.0 Crosstrainer met Tablethouder. Deze lichte en compacte crosstrainer is een goede keuze als je weinig ruimte over hebt. Hij neemt weinig plaats in en is na het sporten gemakkelijk te verplaatsen me', 1),
(2, 'Toorx Fitness Elliptical ERX-300 Crosstrainer', NULL, 'De Toorx Elliptical ERX-300 Crosstrainer is voorzien van een Magnetisch remsysteem met gemotoriseerde 32-niveau-weerstandsversteller. Beschikt over een 16 Kg vliegwielsysteem. Het Maximaal gebruikersgewicht bedraagt 150 Kg. Ook een HRC-Heart Rate Control ', 1),
(3, 'Sportstech CX2 crosstrainer - 27 kg vliegwiel - ellipstrainer', NULL, 'De Sportstech CX2 biedt je een cardiotraining, waarbij bijna alle hoofdspiergroepen op hetzelfde moment worden getraind. Een gewrichtsvriendelijke training die tegelijkertijd je lichaamshouding en bewegingscoördinatie verbetert. Zet je tablet of smartphon', 1),
(4, 'Crosstrainer Hometrainer Fitness - FitBoostR', NULL, 'Wil jij ook thuis sporten en aan je conditie werken? Deze crosstrainer is speciaal ontworpen voor wie fit wil blijven en calorieën wil verbranden. De hometrainer heeft een lcd-scherm waarop je het volgende kunt zien: de tijd, afstand, snelheid en verbrand', 1),
(5, '2 in 1 Hometrainer / Crosstrainer - 85 x 50 x 157 cm', NULL, 'Product kenmerken:\r\nCrosstrainer en hometrainer in één\r\nFitnessapparatuur voor training van boven- en onderlichaam\r\nVersterkt het cardiovasculaire systeem\r\nVerbetert conditie, kracht en coördinatie\r\nGebruiksvriendelijke trainingscomputer met gemakkelijk a', 1),
(13, 'Roeitrainer - VirtuFit Row 1.0 - Roeimachine - Roeiapparaat', NULL, 'De VirtuFit Row 1.0 is een eenvoudige roeitrainer die makkelijk in gebruik is. De roeitrainer met verstelbare elastomeer weerstand maakt een fijne roeibeweging. De ergonomisch gevormde zitting glijdt soepel over een stevig aluminium rail. De anti-slip ped', 2),
(14, 'Water roeitrainer - opklapbaar - verticale tank - video events & app multiplayer - Sportstech WRX400', NULL, 'De producten van Sportstech staan voor de hoogste kwaliteit en duurzaamheid, omdat jij als klant alleen het beste verdient!\r\n\r\nProfiteer van de beproefde Sportstech-kwaliteit en overtuig jezelf van het slimme ontwerp en de extreem hoge trainingsefficiënti', 2),
(17, 'roeitrainer - Sportstech RSX500 - vouwbaar - polsmeter - roeimachine', NULL, 'Het roeitoestel biedt je verschillende trainingsmogelijkheden voor een effectieve training van het hele lichaam. Versterk je rug, benen en buik om je houding te verbeteren. Train efficiënt met de app-compatibele console met je smartphone of tablet en volg', 2),
(18, 'Roeitrainer - VirtuFit Row 450 - Roeimachine - Roeiapparaat - Inklapbaar', NULL, 'De VirtuFit Row 450 heeft een “silent magnetic” weerstandssysteem waardoor je flexibel de weerstand kunt aanpassen. Daarnaast maakt het schakelen tussen de 10 verschillende weerstanden nauwelijks geluid. Dit maakt het apparaat ideaal om thuis mee te sport', 2),
(20, 'Tunturi Cardio Fit R20 Roeier - Roeimachine - Roeiapparaat', NULL, 'Fitness is fun! Eén van de meest efficiënte manieren om je lichaam te trainen is met een roeitrainer. Met de Tunturi Cardio Fit R20 ga je thuis aan de slag. Deze roeibeweging zet bijna alle belangrijke spieren aan het werk.\r\n\r\nDe voordelen van de Tunturi ', 2),
(21, 'Loopband - VirtuFit Totally Foldable TR-50i ', NULL, 'De VirtuFit Totally Foldable TR-50i Loopband geeft je de voordelen van thuis wandelen of hardlopen in een fractie van de ruimte die de meeste loopbanden in gebruik nemen. Hardlopen helpt je af te vallen, je conditie te verbeteren en fitter en gezonder te ', 3),
(22, 'Dreaver® Professionele Loopband - Inclusief GRATIS beschermmat ', NULL, 'Na het werk nog naar de sportschool gaan is altijd een opgave. Als we er eenmaal zijn is het leuk, maar de weg er naar toe is meestal ontmoedigend. Het koude weer en de korte dagen helpen daar echter ook niet bij.\r\n\r\nOm toch aan onze dagelijkse beweging t', 3),
(23, 'Day2Fit Fitness Loopband – Elektrisch en Inklapbaar', NULL, 'Ben je op zoek naar een fitness loopband? Je herkent het wel: je probeert regelmatig te bewegen en fit te blijven alleen maken de omstandigheden het je niet altijd even makkelijk. Wanneer je thuis komt van werk bijvoorbeeld ben je mentaal gesloopt en heb ', 3),
(24, 'Tunturi Cardio Fit T5 Loopband - Hardloopband', NULL, 'Train comfortabel binnen\r\nEven geen zin om buiten te trainen, of is het buiten te koud, nat of glad? Met de Tunturi Cardio Fit T5 tover jij je kamer in een oogwenk om tot een trainingsruimte en train je veilig en comfortabel binnen! Deze compacte loopband', 3),
(25, 'GymForm Slim Fold, Foldable treadmill, opvouwbare loopband', NULL, 'Informatie Inklapbare Loopband met GRATIS Voedingsgids\r\nGymForm Pro loopband is de ultieme loopband voor thuis, ontworpen voor alle fitness niveaus om thuis in vorm te komen. Het ontwerp is eenvoudig op te vouwen, waardoor het perfect is om na gebruik op ', 3),
(26, 'VirtuFit HTR 1.0 hometrainer - 8 weerstandsniveaus - Extra stevige constructie - Hartslagfunctie', NULL, 'De VirtuFit HTR 1.0 Hometrainer voelt net aan alsof je op je eigen fiets zit. De 8 kg roterende massa is een realistische benadering van een echte fiets. De vorm van het zadel, de omwenteling van de trappers en de zithouding zijn dan ook goed afgekeken. H', 4),
(27, 'Hometrainer Fitbike Ride 5 - Incl. trainingscomputer en tablethouder - 16', NULL, 'De Fitbike Ride 5 is door zijn fantastische prijs/kwaliteitverhouding al jarenlang enorm populair. Deze hometrainer is stabiel, duurzaam, comfortabel in gebruik en biedt daarnaast vele trainingsmogelijkheden om je persoonlijke doelen te bereiken. Door de ', 4),
(28, 'BluMill X-Bike - Opvouwbare Hometrainer - Fitness Fiets', NULL, 'Ideale hometrainer voor thuis\r\nZoekt u een hometrainer voor thuis zodat u gewicht kunt verliezen, in beweging kan blijven of mee kunt revalideren? Dan is de BluMill XBike de ideale hometrainer voor u.\r\n\r\nDe BluMill XBike opvouwbare hometrainer met rugleun', 4),
(29, 'Tunturi Cardio Fit B40 Hometrainer met lage instap', NULL, 'Extra comfortabel fietsen op een hometrainer? Dat kan: met de Tunturi Cardio Fit B40 haal je je ideale trainingspartner in huis om je conditie op peil te houden, gewicht te verliezen of te revalideren na een blessure. Opstappen gaat moeiteloos dankzij de ', 4),
(30, 'Tunturi Cardio Fit B25 X-Bike - Hometrainer - X-Bike ', NULL, 'Zoek je een hometrainer voor een training met lichte tot matige intensiteit? Die ook comfortabel zit en voldoende steun geeft in de rug? Dan is de Tunturi Cardio Fit B25 een geweldige trainer. Dit is het juiste fitness apparaat om in beweging te blijven e', 4);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie` (`categorie_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `categorie` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
