-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/09/2025 às 14:03
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Subsolo 1'),
(2, 60, 'Subsolo 2'),
(3, 40, 'Térreo'),
(4, 35, '1º Andar'),
(5, 30, '2º Andar'),
(6, 45, '3º Andar'),
(7, 55, '4º Andar'),
(8, 50, '5º Andar'),
(9, 25, '6º Andar'),
(10, 20, 'Cobertura');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtnasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtnasc`, `nome`) VALUES
('10101010101', '1986-02-10 00:00:00', 'Mariana Duarte'),
('11111111111', '1985-04-12 00:00:00', 'Carlos Silva'),
('22222222222', '1990-07-23 00:00:00', 'Ana Pereira'),
('33333333333', '1978-11-02 00:00:00', 'Marcos Oliveira'),
('55555555555', '1988-09-15 00:00:00', 'Ricardo Santos'),
('66666666666', '2000-12-01 00:00:00', 'Fernanda Costa'),
('77777777777', '1993-03-09 00:00:00', 'Paulo Mendes'),
('88888888888', '1982-06-25 00:00:00', 'Camila Rocha'),
('99999999999', '1997-08-18 00:00:00', 'Gabriel Lima');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `codestaciona` int(11) NOT NULL,
  `horsaida` datetime DEFAULT NULL,
  `dtentrada` datetime DEFAULT NULL,
  `horentrada` datetime DEFAULT NULL,
  `dtsaida` datetime DEFAULT NULL,
  `placa` char(7) DEFAULT NULL,
  `codlugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`codestaciona`, `horsaida`, `dtentrada`, `horentrada`, `dtsaida`, `placa`, `codlugar`) VALUES
(1, '2025-09-01 18:30:00', '2025-09-01 00:00:00', '2025-09-01 08:00:00', '2025-09-01 00:00:00', 'ABC1234', 1),
(2, '2025-09-01 19:00:00', '2025-09-01 00:00:00', '2025-09-01 09:15:00', '2025-09-01 00:00:00', 'DEF5678', 2),
(3, '2025-09-01 17:45:00', '2025-09-01 00:00:00', '2025-09-01 07:40:00', '2025-09-01 00:00:00', 'GHI9012', 3),
(5, '2025-09-01 16:50:00', '2025-09-01 00:00:00', '2025-09-01 06:55:00', '2025-09-01 00:00:00', 'MNO7890', 5),
(6, '2025-09-01 21:00:00', '2025-09-01 00:00:00', '2025-09-01 11:20:00', '2025-09-01 00:00:00', 'PQR1122', 6),
(7, '2025-09-01 18:10:00', '2025-09-01 00:00:00', '2025-09-01 08:45:00', '2025-09-01 00:00:00', 'STU3344', 7),
(8, '2025-09-01 19:30:00', '2025-09-01 00:00:00', '2025-09-01 09:30:00', '2025-09-01 00:00:00', 'VWX5566', 8),
(9, '2025-09-01 20:50:00', '2025-09-01 00:00:00', '2025-09-01 10:10:00', '2025-09-01 00:00:00', 'YZA7788', 9),
(10, '2025-09-01 17:00:00', '2025-09-01 00:00:00', '2025-09-01 07:20:00', '2025-09-01 00:00:00', 'BCD9900', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 'Fiat Uno'),
(2, 'Volkswagen Gol'),
(3, 'Chevrolet Onix'),
(4, 'Toyota Corolla'),
(5, 'Honda Civic'),
(6, 'Ford Ka'),
(7, 'Renault Sandero'),
(8, 'Jeep Compass'),
(9, 'Hyundai HB20'),
(10, 'Nissan Kicks');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` char(7) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `codmodelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codmodelo`) VALUES
('ABC1234', 'Preto', '11111111111', 1),
('BCD9900', 'Prata', '10101010101', 7),
('DEF5678', 'Dourado', '22222222222', 2),
('GHI9012', 'Branco', '33333333333', 3),
('MNO7890', 'Azul', '55555555555', 5),
('PQR1122', 'Cinza', '66666666666', 6),
('STU3344', 'Verde', '77777777777', 7),
('VWX5566', 'Amarelo', '88888888888', 8),
('YZA7788', 'Preto', '99999999999', 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codestaciona`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codlugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `codestaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
