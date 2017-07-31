-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 31 2017 г., 16:44
-- Версия сервера: 10.1.25-MariaDB
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `days`
--

-- --------------------------------------------------------

--
-- Структура таблицы `days`
--

CREATE TABLE `days` (
  `name` varchar(35) CHARACTER SET utf8mb4 NOT NULL,
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `time_begin` varchar(5) NOT NULL,
  `time_end` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `days`
--

INSERT INTO `days` (`name`, `id`, `title`, `info`, `type`, `time_begin`, `time_end`) VALUES
('Day 1', 1, 'Title 1 ', 'LoremLorem ipsum dolor sit amet, consectetur adipisicing elit. Id obcaecati, animi ut ipsum. Nisi omnis, magni tenetur itaque ipsa animi repudiandae, tempore ratione commodi fugiat perspiciatis! Exercitationem, assumenda, molestias? Cupiditate.', 'styling', '07:21', '07:35'),
('Day 1', 2, 'Title 1 ', 'LoremLorem ipsum dolor sit amet, consectetur adipisicing elit. Id obcaecati, animi ut ipsum. Nisi omnis, magni tenetur itaque ipsa animi repudiandae, tempore ratione commodi fugiat perspiciatis! Exercitationem, assumenda, molestias? Cupiditate.', 'styling', '08:23', '08:40'),
('Day 1', 3, 'Title 1 ', 'LoremLorem ipsum dolor sit amet, consectetur adipisicing elit. Id obcaecati, animi ut ipsum. Nisi omnis, magni tenetur itaque ipsa animi repudiandae, tempore ratione commodi fugiat perspiciatis! Exercitationem, assumenda, molestias? Cupiditate.', 'styling', '09:18', '10:00'),
('Day 1', 4, 'Title 1 ', 'LoremLorem ipsum dolor sit amet, consectetur adipisicing elit. Id obcaecati, animi ut ipsum. Nisi omnis, magni tenetur itaque ipsa animi repudiandae, tempore ratione commodi fugiat perspiciatis! Exercitationem, assumenda, molestias? Cupiditate.', 'styling', '10:00', '10:35');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
