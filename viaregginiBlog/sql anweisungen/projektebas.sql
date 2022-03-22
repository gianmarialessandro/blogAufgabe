-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 04, 2020 alle 17:22
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projektebas`
--
CREATE DATABASE IF NOT EXISTS `projektebas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projektebas`;

-- --------------------------------------------------------

--
-- Struttura della tabella `ins`
--

CREATE TABLE `ins` (
  `id` int(11) NOT NULL,
  `vorname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ueberschrift` varchar(70) NOT NULL,
  `artikel` varchar(5000) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ins`
--

INSERT INTO `ins` (`id`, `vorname`, `name`, `ueberschrift`, `artikel`, `datum`) VALUES
(1, 'Egisto', 'Malfatti', 'Nostalgie für die Bergen', 'Donec hendrerit interdum tellus, id semper magna viverra quis. Proin eu metus id diam facilisis commodo. Etiam pulvinar lorem dolor, consectetur facilisis velit interdum id. Donec luctus porta urna, quis consequat lacus ultricies sed. Integer sagittis, libero at sodales cursus, felis nulla laoreet tortor, id molestie dui diam eu nisi. Sed non quam vehicula, varius risus ac, tincidunt erat. Aliquam erat volutpat. Suspendisse potenti. Fusce eu arcu et enim ultricies porttitor vitae vel est. Cras iaculis, dui eget placerat pharetra, diam ante scelerisque leo, ut rhoncus enim ex eget sapien. Praesent facilisis tempus est.', '2020-12-03 14:27:06'),
(2, 'Leonardo', 'Barsella &quot;Menghino&quot;', 'Sehnsucht nach dem Meer', 'Sed a lacus aliquam, malesuada eros quis, convallis lectus. In vel semper velit. Quisque dui quam, gravida vel congue et, mattis at tortor. Donec tincidunt venenatis magna, eget bibendum elit. Praesent suscipit, est eget posuere convallis, augue magna sagittis quam, vitae cursus risus arcu eget ipsum. Praesent rutrum urna ut massa pharetra, ac imperdiet dui sagittis. Ut vitae ligula lobortis, vulputate orci quis, molestie orci. Integer interdum odio eget hendrerit tristique. Donec et erat faucibus, facilisis augue vel, mollis nulla. Pellentesque blandit maximus sem nec interdum. Donec ac mauris ornare, auctor lectus ac, accumsan est.\r\n\r\nDonec congue ultrices mauris, vitae ullamcorper mi pulvinar ut. Aliquam laoreet, ligula in porttitor ultrices, felis augue faucibus enim, nec fermentum nunc nisl eu velit. Morbi et nisi pulvinar lectus iaculis euismod. Suspendisse potenti. Sed tempor congue velit, non tincidunt lectus pretium eget. Sed vitae diam ac tortor tempus imperdiet id a libero. Nunc ut justo non orci commodo cursus eu et erat. Donec tortor erat, vestibulum non mauris a, posuere tincidunt sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vel dictum nibh, et accumsan sapien. Proin fringilla nec ligula at pellentesque.', '2020-12-03 14:29:09'),
(3, 'Galileo', 'Chini', 'Der Liberty-Stil', 'Maecenas quam eros, posuere quis fermentum id, luctus at diam. Praesent venenatis ullamcorper enim in congue. Fusce volutpat imperdiet eleifend. Nullam elit nulla, mollis non tincidunt sed, commodo vitae metus. Integer egestas tristique posuere. Morbi dictum sit amet dui in mollis. Sed vulputate imperdiet ligula ac eleifend. In a fermentum felis.\r\n\r\nCras nec efficitur velit, id cursus justo. Donec sit amet ligula a augue porttitor condimentum sit amet eu arcu. Suspendisse nec mi hendrerit, mattis nulla id, mattis eros. Integer porttitor suscipit ornare. Aenean tristique sapien quis velit tincidunt ullamcorper id vitae ex. Donec sed ornare est. Nullam vitae sapien justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ornare orci tincidunt eros bibendum feugiat. Aliquam malesuada, urna eu finibus rhoncus, nunc arcu pellentesque elit, eu malesuada nisl neque nec magna. In molestie mauris placerat diam vulputate, quis luctus nulla fermentum. Quisque dignissim convallis nisi vel tincidunt. Phasellus vehicula turpis a dui congue, sed pharetra urna bibendum.', '2020-12-03 14:30:01'),
(4, 'Lorenzo', 'Viani', 'Il Balena con la coperta', 'Ut risus massa, imperdiet at arcu congue, fermentum ullamcorper ex. Duis luctus ornare nulla ut blandit. Nunc et neque convallis, feugiat ligula ac, finibus nisl. Praesent gravida tristique lacus ut viverra. Fusce odio metus, dictum in venenatis at, aliquet ut orci. Cras arcu dolor, consectetur ut lobortis a, cursus non turpis. Vestibulum lectus leo, convallis at diam vitae, lobortis euismod odio. Duis nec fringilla magna. Aenean quam nisl, lacinia nec orci quis, placerat placerat eros. Nam risus dolor, mattis eu dignissim eu, consequat non lacus. Nulla nec ipsum eu velit aliquam mattis a nec libero. Nunc condimentum purus in semper ornare. Integer vitae dignissim magna. Cras rutrum accumsan pulvinar. Nunc rhoncus enim rhoncus metus tempor pharetra.\r\n\r\nNunc ornare condimentum eros placerat feugiat. In cursus tempus leo, sed finibus ex. Vestibulum venenatis rutrum mauris et iaculis. Aenean rutrum vehicula tortor, eu commodo quam ultrices a. Nulla facilisi. Vivamus sit amet euismod lacus. Suspendisse fermentum, libero ut sollicitudin bibendum, nulla metus pharetra tellus, imperdiet bibendum quam sapien vel nunc. Integer nec neque sed ipsum fringilla consectetur. Donec sit amet dictum orci, in placerat purus. Aliquam quis gravida elit. Cras cursus nisi elit, ac ultrices dui tincidunt ut. Nulla efficitur ex ac dolor vulputate dapibus.\r\n\r\nMaecenas quam eros, posuere quis fermentum id, luctus at diam. Praesent venenatis ullamcorper enim in congue. Fusce volutpat imperdiet eleifend. Nullam elit nulla, mollis non tincidunt sed, commodo vitae metus. Integer egestas tristique posuere. Morbi dictum sit amet dui in mollis. Sed vulputate imperdiet ligula ac eleifend. In a fermentum felis.\r\n\r\nCras nec efficitur velit, id cursus justo. Donec sit amet ligula a augue porttitor condimentum sit amet eu arcu. Suspendisse nec mi hendrerit, mattis nulla id, mattis eros. Integer porttitor suscipit ornare. Aenean tristique sapien quis velit tincidunt ullamcorper id vitae ex. Donec sed ornare est. Nullam vitae sapien justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ornare orci tincidunt eros bibendum feugiat. Aliquam malesuada, urna eu finibus rhoncus, nunc arcu pellentesque elit, eu malesuada nisl neque nec magna. In molestie mauris placerat diam vulputate, quis luctus nulla fermentum. Quisque dignissim convallis nisi vel tincidunt. Phasellus vehicula turpis a dui congue, sed pharetra urna bibendum.', '2020-12-03 14:31:20'),
(6, 'Ranata', 'Zoria', 'Die Strandpromenade', 'Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '2020-12-04 15:03:17'),
(7, 'Augusto', 'Graziano', 'Pfaden in den Apuanischen Alpen', 'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.', '2020-12-04 15:07:07'),
(8, 'Giacomo', 'Puccini', 'Die Oper in Torre del Lago', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', '2020-12-04 15:11:40');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `ins`
--
ALTER TABLE `ins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `ins`
--
ALTER TABLE `ins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
