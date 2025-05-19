-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/05/2025 às 14:07
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
-- Banco de dados: `etecmcm2`
--
CREATE DATABASE IF NOT EXISTS `etecmcm2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm2`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'Limpeza'),
(2, 'Frios'),
(3, 'Laticínios'),
(4, 'Enlatados'),
(5, 'Carnes'),
(6, 'Hortifruti'),
(7, 'Perfumaria'),
(8, 'Bebidas'),
(9, 'Eletroeletrônicos'),
(10, 'Congelados'),
(11, 'Embalagens');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(255) DEFAULT NULL,
  `qtde_produto` int(11) DEFAULT NULL,
  `preco_produto` decimal(10,2) DEFAULT NULL,
  `marca_produto` varchar(255) DEFAULT NULL,
  `fk_categorias_id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome_produto`, `qtde_produto`, `preco_produto`, `marca_produto`, `fk_categorias_id_categoria`, `unidade_medida`) VALUES
(1, 'Sabão em pó', 4, 25.00, 'OMO', 1, 'Uni'),
(2, 'Detergente', 20, 3.25, 'Ypê', 1, 'Uni'),
(3, 'Mussarela', 100, 55.60, 'Presidente', 3, 'Kg'),
(4, 'Iogurte Natural', 100, 3.29, 'Nestle', 3, 'Uni'),
(5, 'Papel Alumínio', 50, 7.59, 'Wyda', 11, 'Uni'),
(6, 'Papel Toalha', 75, 4.24, 'Scala', 11, 'Uni'),
(7, 'Coxa de Frango', 100, 55.60, 'Sadia', 5, 'Kg'),
(8, 'Carne moída', 100, 65.99, 'Friboi', 5, 'Kg'),
(9, 'Maçã', 100, 5.99, 'Turma da Mônica', 6, 'Kg'),
(10, 'Mix de verduras', 100, 7.99, 'Swift', 6, 'Kg'),
(11, 'Perfume de Cereja', 100, 75.99, 'Oboticário', 7, 'Uni'),
(12, 'Carbon Fiber', 250, 99.99, 'Jequiti', 7, 'Uni'),
(13, 'Presunto Fatiado', 100, 6.80, 'Seara', 2, 'Kg'),
(14, 'Queijo prato', 80, 8.90, 'Aurora', 2, 'Kg'),
(15, 'Milho Verde', 78, 4.50, 'Quero', 4, 'Uni'),
(16, 'Ervilha', 150, 3.52, 'Quero', 4, 'Uni'),
(17, 'Refrigerante Cola 2L', 200, 7.50, 'Coca-Cola', 8, 'Uni'),
(18, 'Suco de Uva Integral', 90, 12.00, 'Aurora', 8, 'Uni'),
(19, 'Fone de Ouvido', 40, 49.90, 'Multilaser', 9, 'Uni'),
(20, 'Carregador USB', 55, 29.90, 'Samsung', 9, 'Uni'),
(21, 'Pizza Calabresa', 60, 18.90, 'Perdigão', 10, 'Kg'),
(22, 'Lasanha Bolonhesa', 50, 17.50, 'Sadia', 10, 'Kg');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `FK_produto_2` (`fk_categorias_id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `FK_produto_2` FOREIGN KEY (`fk_categorias_id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
