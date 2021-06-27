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
(1, 'Eveline EXTENSION VOLUME 4D FALSE DEFINITION LONG & CURL MASKARA', '11.99', 'Maskara maksymalnie pogrubia i rozdziela rzęsy, gwarantując niepowtarzalny efekt sztucznych rzęs. Wyjątkowa, elastyczna szczoteczka Perfect Brush, opatentowana przez Eveline Cosmetics, wykonana została z użyciem najnowszych materiałów w technologii DuPoint Hytrel. Zapewnia wykonanie perfekcyjnego makijażu oczu, precyzyjnie rozdzielając rzęsy i umożliwiając pokrycie wszystkich włosków nawet w kącikach oka. Tusz Extension Volume posiada wyjątkową kompozycję składników aktywnych, która wzmacnia i o', '2020-04-29'),
(2, 'Maybelline TOTAL TEMPTATION MASKARA', '20.90', 'Tusz Maybelline Total Temptation oferuje perfekcyjną objętość rzęs oraz głęboki i nasycony kolor.\r\nWidocznie zwiększona objętość rzęs, dociera do każdej, nawet najmniejszej rzęsy zapewnia efekt gęstych i zwielokrotnionych rzęs.\r\nUrocze, różowe opakowanie kryj tusz... który zapachem kokosa przeniesie Twoje zmysły w rozkoszną podróż do ciepłych krajów!', '2020-05-26'),
(3, 'Golden Rose SMOKEY LASHES MASKARA', '15.90', 'Tusz do rzęs, który dzięki swojej innowacyjnej i szybkoschnącej formule zwiększy objętość i podkręci rzęsy oraz nada im czarny kolor nie pozostawiając smug.Unikatowa i miękka szczoteczka umożliwi idealne rozprowadzenie produktu na rzęsach.', '2020-05-26'),
(4, 'L\'Oreal VOLUME MILLION LASHES SO CONTURE MASKARA', '39.00', 'Podkreśl swoje spojrzenie kultowym tuszem Volume Million Lashes od L\'Oréal Paris! Dzięki wyjątkowej formule rzęsy zyskają zjawiskową objętość. Silikonowa szczoteczka millionizer zapewni efekt idealnie rozdzielonych i wydłużonych rzęs bez grudek! Wyjątkowa formuła została wzbogacona o drogocenne olejki. Pielęgnuj spojrzenie z Volume Million Lashes.', '2020-06-29'),
(6, 'Bourjois HEALTHY MIX PODKŁAD', '24.99', 'Rozświetlający, owocowy podkład Healthy Mix zapewnia promienny wygląd i wspaniały blask, który będzie utrzymywał się na skórze przez 16 godzin. Delikatna i kremowa formuła podkładu subtelnie integruje się ze skórą, dzięki temu efekt makijażu jest bardzo naturalny. Podkład zapewnia półmatowe wykończenie.', '2020-04-06'),
(7, 'Mybelline FIT ME PODKŁAD 105', '30.00', 'Matujący i wygładzający pory podkład Maybelline Fit Me! Matte + Poreless Foundation został stworzony w odpowiedzi na potrzeby normalnej i tłustej skóry, ponieważ skutecznie kontroluje połysk nie zatykając porów.\r\nDzięki swej niesamowicie lekkiej, niemal wodnistej konsystencji, podkład Maybelline Fit Me! jest niezwykle łatwy w aplikacji i niewyczuwalny na skórze. Skóra pod nim oddycha.', '2020-03-07'),
(8, 'Eveline LIQUID CONTROL HD 005 PODKŁAD', '20.99', 'Eveline Liquid Control HD, Mattifying Drops Foundation baby Face Effect Long Lasting Formula 24h to innowacyjny podkład nowej generacji. Jego płynna, nietłusta i niezwykle lekka konsystencja zapewnia maksymalnie naturalny efekt „drugiej skóry”.\r\nPodkład Eveline Liquid Control HD doskonale kryje i długotrwale matuje cerę do nawet 24 godzin, bez efektu maski. Idealnie wyrównuje koloryt, zapewniając rezultat udoskonalonej cery, tzw. „baby face effect”.', '2020-05-04'),
(9, 'Nouba MILLEBACI 7 POMADKA', '99.99', 'Pomadka w płynie o wyjątkowej trwałości, nawilża i wygładza usta. Nadaje intensywny, długotrwały połysk. Pomadka Millebaci to pełen blasku kolor, który nie rozmazuje się i nie pozostawia uczucia lepkości. Lekka na ustach a kolor utrzymuje się cały dzień. Po nałożeniu pomadki należy odczekać chwilkę w celu utrwalenia. By efekt był bardziej zdecydowany, powtórzyć aplikację. Z Millebaci uzyskasz perfekcyjny makijaż i zachwycający efekt — na każdą okazję.', '2020-05-06'),
(10, 'Golden Rose SOFT & MATTE CREAMY LIP POMADKA', '14.99', 'Lekka i długotrwała formuła pozostawia na ustach matowe, w pełni kryjące wykończenie.\r\nInnowacyjny skład sprawia, że produkt łatwo i wygodnie się aplikuje.\r\nDodatkowo jego niezasychająca formuła nawilża usta nie dopuszczając, by kolor wyblakł lub by zaaplikowany produkt pękał na ustach.\r\nZawiera zmiękczające i nawilżające olejki jojoba i awokado.', '2020-05-12'),
(11, 'Maybelline STAY MATTE INK POMADKA', '16.99', 'Z nową, matową pomadką Maybelline Super Stay Matte Ink możesz uwolnić się od poprawek makijażu ust! Wystarczy, że nałożysz ją tylko jeden raz w ciągu dnia, a kolor utrzyma się na ustach nawet do 16 godzin. Nie zetrze się, nie odbije na szklance, nie zniknie podczas jedzenia.\r\nPomadki Maybelline Super Stay Matte Ink zachwycają szeroką gamą odcieni, pięknym zapachem oraz intensywnością i trwałością koloru. Są niesamowicie lekkie i niemal niewyczuwalne na ustach, nie wysuszają ich delikatnej skóry.', '2020-05-10'),
(12, 'Golden Rose LONGSTAY LIQUID MATTE LIPSTICK POMADKA', '15.99', 'Pomadka w płynie gwarantuje perfekcyjne, pełne pokrycie ust matowym kolorem przez wiele godzin, bez uczucia przesuszenia i lepkości. Lekka formuła wzbogacona w witaminę E i olej z awokado sprawia, że usta stają się niezwykle nawilżone i gładkie. Elastyczny aplikator i kremowa konsystencja zapewniają wygodne rozprowadzanie produktu.\r\n\r\nPo aplikacji należy odczekać chwilę, aby uniknąć rozmazania.', '2020-04-27'),
(13, 'Wibo BANANA LOOSE POWDER', '15.99', 'Banana loose powder to sypki puder, który służy do aksamitnego wykończenia makijażu i tworzenia konturu twarzy.\r\nPuder ma żółty odcień, który pozostawia cerę świetlistą i odświeżoną. Komponuję się z każdym rodzajem i odcieniem skóry. Puder bardzo pomocny przy cerze tłustej, koryguje widoczne zaczerwieniania oraz sińce pod oczami.', '2020-06-14'),
(14, 'Moia PUDER SYPI RYŻOWY', '21.99', 'Daje efekt idealnie matowej skóry, nie przesuszając jej i nie tworząc efektu maski. Stanowi świetne wykończenie makijażu.', '2020-04-27'),
(15, 'Ecocera SYPKI PUDER JĘCZMIENNY', '19.90', 'Sypki Puder jęczmienny Ecocera skutecznie pochłania nadmiar sebum, długotrwale matując cerę oraz zapewniając jej piękny i naturalny wygląd. Utrwala makijaż na cały dzień sprawiając, że skóra wygląda świeżo i promiennie nawet przez 16 godzin. Jest lekki, transparentny, nie bieli skóry, za to doskonale wyrównuje jej koloryt. Nie podkreśla suchych skórek, nie zbiera się w załamaniach. Nie zatyka porów, nie powoduje podrażnień, nie przesusza skóry.', '2020-05-18');

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
-- Indeksy dla zrzutów tabel
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
-- Ograniczenia dla zrzutów tabel
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
