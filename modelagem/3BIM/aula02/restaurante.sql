-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/08/2025 às 13:16
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
-- Banco de dados: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `areasrestaurante`
--

CREATE TABLE `areasrestaurante` (
  `codarea` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `areasrestaurante`
--

INSERT INTO `areasrestaurante` (`codarea`, `descricao`) VALUES
(1, 'Salão Principal'),
(2, 'Varanda'),
(3, 'Área VIP'),
(4, 'Salão Superior'),
(5, 'Jardim Externo'),
(6, 'Salão Inferior'),
(7, 'Terraço'),
(8, 'Área de Eventos'),
(9, 'Lounge'),
(10, 'Pátio');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codatendimento` int(11) NOT NULL,
  `codgarcom` int(11) DEFAULT NULL,
  `codmesa` int(11) DEFAULT NULL,
  `horarioentrada` datetime NOT NULL,
  `horariosaida` datetime NOT NULL,
  `qtdpessoas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento`
--

INSERT INTO `atendimento` (`codatendimento`, `codgarcom`, `codmesa`, `horarioentrada`, `horariosaida`, `qtdpessoas`) VALUES
(1, 1, 1, '2025-08-01 12:00:00', '2025-08-01 13:15:00', 2),
(2, 2, 2, '2025-08-02 19:00:00', '2025-08-02 20:45:00', 4),
(3, 3, 3, '2025-08-03 18:30:00', '2025-08-03 19:20:00', 2),
(4, 4, 4, '2025-08-04 13:00:00', '2025-08-04 14:10:00', 5),
(5, 5, 5, '2025-08-05 20:00:00', '2025-08-05 21:00:00', 3),
(6, 6, 6, '2025-08-06 18:15:00', '2025-08-06 19:00:00', 4),
(7, 7, 7, '2025-08-07 12:30:00', '2025-08-07 13:50:00', 2),
(8, 8, 8, '2025-08-08 19:10:00', '2025-08-08 20:30:00', 6),
(9, 9, 9, '2025-08-09 14:00:00', '2025-08-09 15:00:00', 2),
(10, 10, 10, '2025-08-10 21:00:00', '2025-08-10 22:30:00', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `conta`
--

CREATE TABLE `conta` (
  `codconta` int(11) NOT NULL,
  `data` date NOT NULL,
  `valortotal` decimal(10,2) NOT NULL,
  `valorporpessoa` decimal(10,2) NOT NULL,
  `codmesa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `conta`
--

INSERT INTO `conta` (`codconta`, `data`, `valortotal`, `valorporpessoa`, `codmesa`) VALUES
(1, '2025-08-01', 50.00, 25.00, 1),
(2, '2025-08-02', 120.00, 30.00, 2),
(3, '2025-08-03', 70.00, 35.00, 3),
(4, '2025-08-04', 200.00, 40.00, 4),
(5, '2025-08-05', 90.00, 30.00, 5),
(6, '2025-08-06', 140.00, 35.00, 6),
(7, '2025-08-07', 60.00, 30.00, 7),
(8, '2025-08-08', 240.00, 40.00, 8),
(9, '2025-08-09', 80.00, 40.00, 9),
(10, '2025-08-10', 160.00, 40.00, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `garcom`
--

CREATE TABLE `garcom` (
  `codgarcom` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `garcom`
--

INSERT INTO `garcom` (`codgarcom`, `nome`) VALUES
(1, 'Carlos Andrade'),
(2, 'Mariana Lopes'),
(3, 'Rafael Nunes'),
(4, 'Fernanda Dias'),
(5, 'João Pedro'),
(6, 'Camila Torres'),
(7, 'André Souza'),
(8, 'Patrícia Ramos'),
(9, 'Gustavo Lima'),
(10, 'Renata Silva');

-- --------------------------------------------------------

--
-- Estrutura para tabela `item`
--

CREATE TABLE `item` (
  `coditem` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `item`
--

INSERT INTO `item` (`coditem`, `preco`, `nome`) VALUES
(1, 25.00, 'Pizza Margherita'),
(2, 30.00, 'Pizza Calabresa'),
(3, 35.00, 'Pizza Quatro Queijos'),
(4, 40.00, 'Pizza Portuguesa'),
(5, 20.00, 'Hambúrguer Simples'),
(6, 28.00, 'Hambúrguer Duplo'),
(7, 32.00, 'Hambúrguer Bacon'),
(8, 15.00, 'Batata Frita'),
(9, 18.00, 'Anéis de Cebola'),
(10, 22.00, 'Nuggets de Frango'),
(11, 12.00, 'Refrigerante Lata'),
(12, 15.00, 'Suco Natural'),
(13, 8.00, 'Água Mineral'),
(14, 25.00, 'Cerveja Long Neck'),
(15, 45.00, 'Taça de Vinho'),
(16, 55.00, 'Garrafa de Vinho'),
(17, 18.00, 'Salada Caesar'),
(18, 20.00, 'Salada Grega'),
(19, 60.00, 'Filé Mignon Grelhado'),
(20, 48.00, 'Salmão Grelhado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itensconta`
--

CREATE TABLE `itensconta` (
  `cod_itensconta` int(11) NOT NULL,
  `codconta` int(11) DEFAULT NULL,
  `coditem` int(11) DEFAULT NULL,
  `qtde` int(11) NOT NULL,
  `totalitem` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itensconta`
--

INSERT INTO `itensconta` (`cod_itensconta`, `codconta`, `coditem`, `qtde`, `totalitem`) VALUES
(1, 1, 1, 2, 50.00),
(2, 2, 4, 4, 120.00),
(3, 3, 3, 2, 70.00),
(4, 4, 20, 5, 200.00),
(5, 5, 6, 3, 90.00),
(6, 6, 7, 4, 140.00),
(7, 7, 5, 2, 60.00),
(8, 8, 19, 4, 240.00),
(9, 9, 12, 4, 80.00),
(10, 10, 15, 4, 160.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesa`
--

CREATE TABLE `mesa` (
  `codmesa` int(11) NOT NULL,
  `comporta` int(11) NOT NULL,
  `codarea` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mesa`
--

INSERT INTO `mesa` (`codmesa`, `comporta`, `codarea`) VALUES
(1, 4, 1),
(2, 6, 2),
(3, 2, 3),
(4, 8, 4),
(5, 4, 5),
(6, 6, 6),
(7, 4, 7),
(8, 10, 8),
(9, 2, 9),
(10, 6, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `areasrestaurante`
--
ALTER TABLE `areasrestaurante`
  ADD PRIMARY KEY (`codarea`);

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codatendimento`),
  ADD KEY `codgarcom` (`codgarcom`),
  ADD KEY `codmesa` (`codmesa`);

--
-- Índices de tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`codconta`),
  ADD KEY `codmesa` (`codmesa`);

--
-- Índices de tabela `garcom`
--
ALTER TABLE `garcom`
  ADD PRIMARY KEY (`codgarcom`);

--
-- Índices de tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`coditem`);

--
-- Índices de tabela `itensconta`
--
ALTER TABLE `itensconta`
  ADD PRIMARY KEY (`cod_itensconta`),
  ADD KEY `codconta` (`codconta`),
  ADD KEY `coditem` (`coditem`);

--
-- Índices de tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`codmesa`),
  ADD KEY `codarea` (`codarea`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `areasrestaurante`
--
ALTER TABLE `areasrestaurante`
  MODIFY `codarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codatendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `codconta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `garcom`
--
ALTER TABLE `garcom`
  MODIFY `codgarcom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `coditem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `itensconta`
--
ALTER TABLE `itensconta`
  MODIFY `cod_itensconta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `mesa`
--
ALTER TABLE `mesa`
  MODIFY `codmesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`codgarcom`) REFERENCES `garcom` (`codgarcom`),
  ADD CONSTRAINT `atendimento_ibfk_2` FOREIGN KEY (`codmesa`) REFERENCES `mesa` (`codmesa`);

--
-- Restrições para tabelas `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`codmesa`) REFERENCES `mesa` (`codmesa`);

--
-- Restrições para tabelas `itensconta`
--
ALTER TABLE `itensconta`
  ADD CONSTRAINT `itensconta_ibfk_1` FOREIGN KEY (`codconta`) REFERENCES `conta` (`codconta`),
  ADD CONSTRAINT `itensconta_ibfk_2` FOREIGN KEY (`coditem`) REFERENCES `item` (`coditem`);

--
-- Restrições para tabelas `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`codarea`) REFERENCES `areasrestaurante` (`codarea`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
