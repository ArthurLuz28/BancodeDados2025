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
-- Banco de dados: `lavarapido`
--
CREATE DATABASE IF NOT EXISTS `lavarapido` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lavarapido`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codatendimento` int(11) NOT NULL,
  `totalgeral` decimal(10,2) NOT NULL,
  `data` date NOT NULL,
  `codcarro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento`
--

INSERT INTO `atendimento` (`codatendimento`, `totalgeral`, `data`, `codcarro`) VALUES
(1, 50.00, '2025-01-10', 1),
(2, 80.00, '2025-01-15', 2),
(3, 30.00, '2025-02-05', 3),
(4, 150.00, '2025-02-12', 4),
(5, 200.00, '2025-03-01', 5),
(6, 60.00, '2025-03-10', 6),
(7, 250.00, '2025-03-20', 7),
(8, 100.00, '2025-04-05', 8),
(9, 70.00, '2025-04-15', 9),
(10, 120.00, '2025-04-25', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimento_servico`
--

CREATE TABLE `atendimento_servico` (
  `codatend_servico` int(11) NOT NULL,
  `totalserv` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `codservico` int(11) DEFAULT NULL,
  `codatendimento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimento_servico`
--

INSERT INTO `atendimento_servico` (`codatend_servico`, `totalserv`, `qtde`, `codservico`, `codatendimento`) VALUES
(1, 50.00, 1, 2, 1),
(2, 80.00, 1, 4, 2),
(3, 30.00, 1, 1, 3),
(4, 150.00, 1, 9, 4),
(5, 200.00, 1, 7, 5),
(6, 60.00, 1, 6, 6),
(7, 250.00, 1, 10, 7),
(8, 100.00, 1, 5, 8),
(9, 70.00, 1, 8, 9),
(10, 120.00, 1, 3, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codcarro` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `codcliente` int(11) DEFAULT NULL,
  `codmodelo` int(11) DEFAULT NULL,
  `placa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codcarro`, `ano`, `codcliente`, `codmodelo`, `placa`) VALUES
(1, 2020, 1, 1, 'ABC1A23'),
(2, 2019, 2, 2, 'DEF4B56'),
(3, 2021, 3, 3, 'GHI7C89'),
(4, 2018, 4, 4, 'JKL0D12'),
(5, 2022, 5, 5, 'MNO3E45'),
(6, 2020, 6, 6, 'PQR6F78'),
(7, 2017, 7, 7, 'STU9G01'),
(8, 2019, 8, 8, 'VWX2H34'),
(9, 2021, 9, 9, 'YZA5I67'),
(10, 2018, 10, 10, 'BCD8J90');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL,
  `telefone` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `codendereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `nome`, `datanascimento`, `telefone`, `email`, `codendereco`) VALUES
(1, 'João Silva', '1985-04-15', '1198765432', 'joao.silva@email.com', 1),
(2, 'Maria Oliveira', '1990-08-20', '2198765432', 'maria.oliveira@email.com', 2),
(3, 'Carlos Souza', '1978-11-05', '3198765432', 'carlos.souza@email.com', 3),
(4, 'Ana Santos', '1995-02-12', '4198765432', 'ana.santos@email.com', 4),
(5, 'Paulo Lima', '1982-06-25', '8198765432', 'paulo.lima@email.com', 5),
(6, 'Fernanda Costa', '1989-09-30', '2191234567', 'fernanda.costa@email.com', 6),
(7, 'Rafael Alves', '1993-01-18', '4191234567', 'rafael.alves@email.com', 7),
(8, 'Luciana Martins', '1980-12-01', '3191234567', 'luciana.martins@email.com', 8),
(9, 'Bruno Rocha', '1998-03-08', '8191234567', 'bruno.rocha@email.com', 9),
(10, 'Camila Ferreira', '1992-07-22', '1191234567', 'camila.ferreira@email.com', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `codendereco` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `num` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`codendereco`, `rua`, `num`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Rua das Flores', '101', 'Centro', 'São Paulo', 'SP', '01001000'),
(2, 'Av. Paulista', '200', 'Bela Vista', 'São Paulo', 'SP', '01311000'),
(3, 'Rua Aroeiras', '345', 'Jardim', 'Campinas', 'SP', '13015000'),
(4, 'Rua Palmeiras', '50', 'Centro', 'Santos', 'SP', '11010000'),
(5, 'Rua das Acácias', '78', 'Boa Vista', 'Recife', 'PE', '50050000'),
(6, 'Av. Brasil', '1500', 'Copacabana', 'Rio de Janeiro', 'RJ', '22041001'),
(7, 'Rua Verde', '23', 'Centro', 'Curitiba', 'PR', '80010000'),
(8, 'Rua Azul', '67', 'Industrial', 'Betim', 'MG', '32600000'),
(9, 'Rua Amarela', '12', 'Centro', 'Fortaleza', 'CE', '60060000'),
(10, 'Av. Atlântica', '890', 'Meia Praia', 'Itapema', 'SC', '88220000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca`
--

CREATE TABLE `marca` (
  `codmarca` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `marca`
--

INSERT INTO `marca` (`codmarca`, `marca`) VALUES
(1, 'Chevrolet'),
(2, 'Volkswagen'),
(3, 'Fiat'),
(4, 'Ford'),
(5, 'Honda'),
(6, 'Toyota'),
(7, 'Hyundai'),
(8, 'Renault'),
(9, 'Nissan'),
(10, 'Peugeot');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `codmarca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`, `codmarca`) VALUES
(1, 'Onix', 1),
(2, 'Gol', 2),
(3, 'Argo', 3),
(4, 'Ka', 4),
(5, 'Civic', 5),
(6, 'Corolla', 6),
(7, 'HB20', 7),
(8, 'Sandero', 8),
(9, 'Versa', 9),
(10, '208', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(100) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`codservico`, `servico`, `valor`) VALUES
(1, 'Lavagem Simples', 30.00),
(2, 'Lavagem Completa', 50.00),
(3, 'Polimento', 120.00),
(4, 'Higienização Interna', 80.00),
(5, 'Enceramento', 100.00),
(6, 'Lavagem a Seco', 60.00),
(7, 'Cristalização de Pintura', 200.00),
(8, 'Limpeza de Motor', 70.00),
(9, 'Descontaminação de Pintura', 150.00),
(10, 'Vitrificação', 250.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codatendimento`),
  ADD KEY `codcarro` (`codcarro`);

--
-- Índices de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD PRIMARY KEY (`codatend_servico`),
  ADD KEY `codservico` (`codservico`),
  ADD KEY `codatendimento` (`codatendimento`);

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codcarro`),
  ADD KEY `codcliente` (`codcliente`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD KEY `codendereco` (`codendereco`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`codendereco`);

--
-- Índices de tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codmarca`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`),
  ADD KEY `codmarca` (`codmarca`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codservico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codatendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  MODIFY `codatend_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codcarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `codendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `codmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`codcarro`) REFERENCES `carro` (`codcarro`);

--
-- Restrições para tabelas `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD CONSTRAINT `atendimento_servico_ibfk_1` FOREIGN KEY (`codservico`) REFERENCES `servico` (`codservico`),
  ADD CONSTRAINT `atendimento_servico_ibfk_2` FOREIGN KEY (`codatendimento`) REFERENCES `atendimento` (`codatendimento`);

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`codendereco`) REFERENCES `endereco` (`codendereco`);

--
-- Restrições para tabelas `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`codmarca`) REFERENCES `marca` (`codmarca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
