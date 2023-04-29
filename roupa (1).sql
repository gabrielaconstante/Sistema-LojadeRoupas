-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Dez-2022 às 05:36
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `roupa`
--

CREATE TABLE `roupa` (
  `CodRoupa` int(200) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `CodTipo` int(5) NOT NULL,
  `tamanho` varchar(5) NOT NULL,
  `cor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `roupa`
--

INSERT INTO `roupa` (`CodRoupa`, `Nome`, `CodTipo`, `tamanho`, `cor`) VALUES
(1, 'Bolsa Guerreira ', 1, 'U', 'Preta'),
(2, 'Bolsa Saco Veraneio', 2, 'U', 'Palha'),
(3, 'Bolsa ContryGirl', 4, 'U', 'Marrom'),
(4, 'Lenço com estampa floral', 10, 'M', 'Rosa e azul'),
(5, 'Arquinho Diana', 13, 'U', 'Lilás  '),
(6, 'Bolsa FW 2022', 4, 'U', 'Rosa');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `roupa`
--
ALTER TABLE `roupa`
  ADD PRIMARY KEY (`CodRoupa`),
  ADD KEY `CodTipo` (`CodTipo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `roupa`
--
ALTER TABLE `roupa`
  MODIFY `CodRoupa` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `roupa`
--
ALTER TABLE `roupa`
  ADD CONSTRAINT `roupa_ibfk_1` FOREIGN KEY (`CodTipo`) REFERENCES `tipo` (`CodTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
