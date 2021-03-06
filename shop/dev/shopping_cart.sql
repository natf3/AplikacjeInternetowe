-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Cze 2020, 20:34
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `shopping_cart`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(4, 'Admin', 'admin@gmail.com', '$2y$10$JtHhFJS3ZARVAElYklJLl.7VbzCMCXHB8OtaYsIi9yZF8Nz2sDtMy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `customers`
--

CREATE TABLE `customers` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `PHONE` int(9) NOT NULL,
  `EMAIL` varchar(70) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `POSTAL_CODE` varchar(6) NOT NULL,
  `CITY` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `customers`
--

INSERT INTO `customers` (`CUSTOMER_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE`, `EMAIL`, `ADDRESS`, `POSTAL_CODE`, `CITY`) VALUES
(44, 'erteterter', 'egetgetgte', 123456789, 'getgeet@rmgierk.com', 'etgetgteget', '12-345', 'egttegetref'),
(45, 'sfgws', 'eddwd', 123456789, 'edewdew@fkwrjf.com', 'rgreer', '23-456', 'rgergefrgfefe'),
(46, 'rrgere', 'reterr', 123456789, 'rtreer@jorkw.com', 'sfgeferfer', '12-890', 'dtetgergre'),
(47, 'ghdfgdfg', 'fdgfdgfdsf', 123456789, 'grmgmlre@fjeijf.com', 'fdgdgd', '12-003', 'ertertetee'),
(62, 'xfgffdgg', 'sdfsdfds', 123456789, 'sfdsfs@fker.com', 'rferrw', '56-888', 'rgtertre');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order_items`
--

CREATE TABLE `order_items` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRICE` decimal(6,2) NOT NULL,
  `DESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`PRODUCT_ID`, `PRODUCT_NAME`, `PRICE`, `DESCRIPTION`, `created`) VALUES
(1, 'Eveline EXTENSION VOLUME 4D FALSE DEFINITION LONG & CURL MASKARA', '11.99', 'Maskara maksymalnie pogrubia i rozdziela rz??sy, gwarantuj??c niepowtarzalny efekt sztucznych rz??s. Wyj??tkowa, elastyczna szczoteczka Perfect Brush, opatentowana przez Eveline Cosmetics, wykonana zosta??a z u??yciem najnowszych materia????w w technologii DuPoint Hytrel. Zapewnia wykonanie perfekcyjnego makija??u oczu, precyzyjnie rozdzielaj??c rz??sy i umo??liwiaj??c pokrycie wszystkich w??osk??w nawet w k??cikach oka. Tusz Extension Volume posiada wyj??tkow?? kompozycj?? sk??adnik??w aktywnych, kt??ra wzmacnia i o', '2020-04-29'),
(2, 'Maybelline TOTAL TEMPTATION MASKARA', '20.90', 'Tusz Maybelline Total Temptation oferuje perfekcyjn?? obj??to???? rz??s oraz g????boki i nasycony kolor.\r\nWidocznie zwi??kszona obj??to???? rz??s, dociera do ka??dej, nawet najmniejszej rz??sy zapewnia efekt g??stych i zwielokrotnionych rz??s.\r\nUrocze, r????owe opakowanie kryj tusz... kt??ry zapachem kokosa przeniesie Twoje zmys??y w rozkoszn?? podr???? do ciep??ych kraj??w!', '2020-05-26'),
(3, 'Golden Rose SMOKEY LASHES MASKARA', '15.90', 'Tusz do rz??s, kt??ry dzi??ki swojej innowacyjnej i szybkoschn??cej formule zwi??kszy obj??to???? i podkr??ci rz??sy oraz nada im czarny kolor nie pozostawiaj??c smug.Unikatowa i mi??kka szczoteczka umo??liwi idealne rozprowadzenie produktu na rz??sach.', '2020-05-26'),
(4, 'L\'Oreal VOLUME MILLION LASHES SO CONTURE MASKARA', '39.00', 'Podkre??l swoje spojrzenie kultowym tuszem Volume Million Lashes od L\'Or??al Paris! Dzi??ki wyj??tkowej formule rz??sy zyskaj?? zjawiskow?? obj??to????. Silikonowa szczoteczka millionizer zapewni efekt idealnie rozdzielonych i wyd??u??onych rz??s bez grudek! Wyj??tkowa formu??a zosta??a wzbogacona o drogocenne olejki. Piel??gnuj spojrzenie z Volume Million Lashes.', '2020-06-29'),
(6, 'Bourjois HEALTHY MIX PODK??AD', '24.99', 'Roz??wietlaj??cy, owocowy podk??ad Healthy Mix zapewnia promienny wygl??d i wspania??y blask, kt??ry b??dzie utrzymywa?? si?? na sk??rze przez 16 godzin. Delikatna i kremowa formu??a podk??adu subtelnie integruje si?? ze sk??r??, dzi??ki temu efekt makija??u jest bardzo naturalny. Podk??ad zapewnia p????matowe wyko??czenie.', '2020-04-06'),
(7, 'Mybelline FIT ME PODK??AD 105', '30.00', 'Matuj??cy i wyg??adzaj??cy pory podk??ad Maybelline Fit Me! Matte + Poreless Foundation zosta?? stworzony w odpowiedzi na potrzeby normalnej i t??ustej sk??ry, poniewa?? skutecznie kontroluje po??ysk nie zatykaj??c por??w.\r\nDzi??ki swej niesamowicie lekkiej, niemal wodnistej konsystencji, podk??ad Maybelline Fit Me! jest niezwykle ??atwy w aplikacji i niewyczuwalny na sk??rze. Sk??ra pod nim oddycha.', '2020-03-07'),
(8, 'Eveline LIQUID CONTROL HD 005 PODK??AD', '20.99', 'Eveline Liquid Control HD, Mattifying Drops Foundation baby Face Effect Long Lasting Formula 24h to innowacyjny podk??ad nowej generacji. Jego p??ynna, niet??usta i niezwykle lekka konsystencja zapewnia maksymalnie naturalny efekt ???drugiej sk??ry???.\r\nPodk??ad Eveline Liquid Control HD doskonale kryje i d??ugotrwale matuje cer?? do nawet 24 godzin, bez efektu maski. Idealnie wyr??wnuje koloryt, zapewniaj??c rezultat udoskonalonej cery, tzw. ???baby face effect???.', '2020-05-04'),
(9, 'Nouba MILLEBACI 7 POMADKA', '99.99', 'Pomadka w p??ynie o wyj??tkowej trwa??o??ci, nawil??a i wyg??adza usta. Nadaje intensywny, d??ugotrwa??y po??ysk. Pomadka Millebaci to pe??en blasku kolor, kt??ry nie rozmazuje si?? i nie pozostawia uczucia lepko??ci. Lekka na ustach a kolor utrzymuje si?? ca??y dzie??. Po na??o??eniu pomadki nale??y odczeka?? chwilk?? w celu utrwalenia. By efekt by?? bardziej zdecydowany, powt??rzy?? aplikacj??. Z Millebaci uzyskasz perfekcyjny makija?? i zachwycaj??cy efekt ??? na ka??d?? okazj??.', '2020-05-06'),
(10, 'Golden Rose SOFT & MATTE CREAMY LIP POMADKA', '14.99', 'Lekka i d??ugotrwa??a formu??a pozostawia na ustach matowe, w pe??ni kryj??ce wyko??czenie.\r\nInnowacyjny sk??ad sprawia, ??e produkt ??atwo i wygodnie si?? aplikuje.\r\nDodatkowo jego niezasychaj??ca formu??a nawil??a usta nie dopuszczaj??c, by kolor wyblak?? lub by zaaplikowany produkt p??ka?? na ustach.\r\nZawiera zmi??kczaj??ce i nawil??aj??ce olejki jojoba i awokado.', '2020-05-12'),
(11, 'Maybelline STAY MATTE INK POMADKA', '16.99', 'Z now??, matow?? pomadk?? Maybelline Super Stay Matte Ink mo??esz uwolni?? si?? od poprawek makija??u ust! Wystarczy, ??e na??o??ysz j?? tylko jeden raz w ci??gu dnia, a kolor utrzyma si?? na ustach nawet do 16 godzin. Nie zetrze si??, nie odbije na szklance, nie zniknie podczas jedzenia.\r\nPomadki Maybelline Super Stay Matte Ink zachwycaj?? szerok?? gam?? odcieni, pi??knym zapachem oraz intensywno??ci?? i trwa??o??ci?? koloru. S?? niesamowicie lekkie i niemal niewyczuwalne na ustach, nie wysuszaj?? ich delikatnej sk??ry.', '2020-05-10'),
(12, 'Golden Rose LONGSTAY LIQUID MATTE LIPSTICK POMADKA', '15.99', 'Pomadka w p??ynie gwarantuje perfekcyjne, pe??ne pokrycie ust matowym kolorem przez wiele godzin, bez uczucia przesuszenia i lepko??ci. Lekka formu??a wzbogacona w witamin?? E i olej z awokado sprawia, ??e usta staj?? si?? niezwykle nawil??one i g??adkie. Elastyczny aplikator i kremowa konsystencja zapewniaj?? wygodne rozprowadzanie produktu.\r\n\r\nPo aplikacji nale??y odczeka?? chwil??, aby unikn???? rozmazania.', '2020-04-27'),
(13, 'Wibo BANANA LOOSE POWDER', '15.99', 'Banana loose powder to sypki puder, kt??ry s??u??y do aksamitnego wyko??czenia makija??u i tworzenia konturu twarzy.\r\nPuder ma ??????ty odcie??, kt??ry pozostawia cer?? ??wietlist?? i od??wie??on??. Komponuj?? si?? z ka??dym rodzajem i odcieniem sk??ry. Puder bardzo pomocny przy cerze t??ustej, koryguje widoczne zaczerwieniania oraz si??ce pod oczami.', '2020-06-14'),
(14, 'Moia PUDER SYPI RY??OWY', '21.99', 'Daje efekt idealnie matowej sk??ry, nie przesuszaj??c jej i nie tworz??c efektu maski. Stanowi ??wietne wyko??czenie makija??u.', '2020-04-27'),
(15, 'Ecocera SYPKI PUDER J??CZMIENNY', '19.90', 'Sypki Puder j??czmienny Ecocera skutecznie poch??ania nadmiar sebum, d??ugotrwale matuj??c cer?? oraz zapewniaj??c jej pi??kny i naturalny wygl??d. Utrwala makija?? na ca??y dzie?? sprawiaj??c, ??e sk??ra wygl??da ??wie??o i promiennie nawet przez 16 godzin. Jest lekki, transparentny, nie bieli sk??ry, za to doskonale wyr??wnuje jej koloryt. Nie podkre??la suchych sk??rek, nie zbiera si?? w za??amaniach. Nie zatyka por??w, nie powoduje podra??nie??, nie przesusza sk??ry.', '2020-05-18');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`, `created`, `modified`) VALUES
(1, 1, 'j3.jpg', '2016-10-28 20:58:02', '2020-06-09 15:15:24'),
(2, 2, 'j14.jpg', '2016-10-28 20:56:23', '2020-06-09 15:16:41'),
(3, 3, 'j2.jpg', '2016-10-28 20:56:23', '2020-06-09 15:15:24'),
(4, 4, 'j1.jpg', '2020-08-06 00:00:00', '2020-06-09 15:15:24'),
(5, 6, 'j13.jpg', '2019-07-13 00:00:00', '2020-06-09 15:15:24'),
(6, 7, 'j12.jpg', '2020-06-01 17:17:06', '2020-06-09 15:17:53'),
(7, 8, 'j11.jpg', '2020-05-19 17:19:18', '2020-06-09 15:19:57'),
(8, 9, 'j10.jpg', '2020-06-02 17:19:18', '2020-06-09 15:19:57'),
(9, 10, 'j9.jpg', '2020-05-19 17:20:00', '2020-06-09 15:20:39'),
(10, 11, 'j8.jpg', '2020-04-20 17:20:00', '2020-06-09 15:20:39'),
(11, 12, 'j7.jpg', '2020-04-22 17:20:53', '2020-06-09 15:21:40'),
(12, 13, 'j6.jpg', '2020-04-14 17:20:53', '2020-06-09 15:21:40'),
(13, 14, 'j5.jpg', '2020-04-21 17:21:44', '2020-06-09 15:22:17'),
(14, 15, 'j4.jpg', '2020-04-27 17:21:44', '2020-06-09 15:22:17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sold_items`
--

CREATE TABLE `sold_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `sold_items`
--

INSERT INTO `sold_items` (`id`, `product_id`, `quantity`) VALUES
(11, 4, 2),
(12, 15, 1),
(13, 13, 3);

--
-- Indeksy dla zrzut??w tabel
--

--
-- Indeksy dla tabeli `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CUSTOMER_ID`);

--
-- Indeksy dla tabeli `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- Indeksy dla tabeli `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeksy dla tabeli `sold_items`
--
ALTER TABLE `sold_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id_idx` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `customers`
--
ALTER TABLE `customers`
  MODIFY `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT dla tabeli `order_items`
--
ALTER TABLE `order_items`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `sold_items`
--
ALTER TABLE `sold_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ograniczenia dla zrzut??w tabel
--

--
-- Ograniczenia dla tabeli `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`PRODUCT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `sold_items`
--
ALTER TABLE `sold_items`
  ADD CONSTRAINT `sold_items_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`PRODUCT_ID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
