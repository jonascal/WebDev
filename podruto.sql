-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07-Nov-2016 às 19:06
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `podruto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comerdarios`
--

CREATE TABLE `comerdarios` (
  `ID` int(11) NOT NULL,
  `id_produtos` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `nota` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comerdarios`
--

INSERT INTO `comerdarios` (`ID`, `id_produtos`, `comentario`, `nota`) VALUES
(1, 5, 'moh merda esse negocio', 1),
(2, 1, 'hjBSFASCFZSD', 4),
(13, 6, 'szsfzvzdvxfv', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `valor` int(6) DEFAULT NULL,
  `qnt` int(3) NOT NULL,
  `descricao` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`ID`, `nome`, `valor`, `qnt`, `descricao`) VALUES
(1, 'abacate', 500, 10, 'Deliciosa fruta do verão!'),
(2, 'mouse sem fio', 50, 2, NULL),
(3, 'controle remoto', 1900, 5, 'liga a tv'),
(4, 'caneta', 200, 199, 'escreve colorido'),
(5, 'teclado', 19900, 35, 'digita tudo'),
(6, 'batata', 8001, 23, 'seu cu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comerdarios`
--
ALTER TABLE `comerdarios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_produtos` (`id_produtos`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comerdarios`
--
ALTER TABLE `comerdarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comerdarios`
--
ALTER TABLE `comerdarios`
  ADD CONSTRAINT `Regra` FOREIGN KEY (`id_produtos`) REFERENCES `produtos` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
