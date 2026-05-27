-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Maio-2026 às 22:53
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtos`
--
CREATE DATABASE IF NOT EXISTS `produtos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtos`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `categoria`, `descricao`) VALUES
(1, 'Eletrônicos', 'Dispositivos eletrônicos e gadgets'),
(2, 'Informática', 'Hardware e periféricos de computador'),
(3, 'Eletrodomésticos', 'Aparelhos para uso doméstico'),
(4, 'Móveis', 'Mobiliário para escritório e casa'),
(5, 'Papelaria', 'Artigos de escritório e escolar'),
(6, 'Ferramentas', 'Equipamentos para reparos e manutenção'),
(7, 'Vestuário', 'Roupas e acessórios'),
(8, 'Limpeza', 'Produtos de higiene e limpeza doméstica'),
(9, 'Hortifruti', 'Frutas, verduras e legumes frescos'),
(10, 'Padaria', 'Pães, bolos e derivados'),
(11, 'Bebidas', 'Refrigerantes, sucos e águas'),
(12, 'Mercearia', 'Alimentos não perecíveis'),
(13, 'Higiene Pessoal', 'Cuidados corporais e higiene'),
(14, 'Carnes', 'Cortes bovinos, suínos e aves');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `nomeproduto` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `datacadastro` date NOT NULL,
  `ativo` bit(1) NOT NULL,
  `marca` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `idcategoria`, `nomeproduto`, `preco`, `qtde`, `datacadastro`, `ativo`, `marca`) VALUES
(1, 1, 'Smartphone X', '2500.00', 10, '2026-04-05', b'1', 'Xiomi'),
(2, 1, 'Fone Bluetooth', '150.00', 50, '2026-04-12', b'1', ''),
(3, 2, 'Notebook Gamer', '5500.00', 5, '2026-04-18', b'1', ''),
(4, 2, 'Mouse Sem Fio', '80.00', 100, '2026-04-22', b'1', ''),
(5, 2, 'Teclado Mecânico', '300.00', 30, '2026-04-28', b'1', ''),
(6, 3, 'Liquidificador', '200.00', 20, '2026-05-02', b'1', ''),
(7, 3, 'Cafeteira Expresso', '450.00', 15, '2026-05-05', b'1', ''),
(8, 4, 'Cadeira Ergonômica', '1200.00', 8, '2026-05-08', b'1', ''),
(9, 4, 'Mesa de Escritório', '800.00', 12, '2026-05-10', b'1', ''),
(10, 5, 'Caderno Universitário', '25.00', 200, '2026-05-12', b'1', ''),
(11, 5, 'Caneta Azul', '2.00', 500, '2026-05-15', b'1', ''),
(12, 6, 'Parafusadeira', '350.00', 25, '2026-05-18', b'1', ''),
(13, 6, 'Jogo de Chaves', '120.00', 40, '2026-05-20', b'1', ''),
(14, 7, 'Camiseta Algodão', '60.00', 100, '2026-05-22', b'1', ''),
(15, 7, 'Tênis Esportivo', '300.00', 50, '2026-05-25', b'1', ''),
(16, 1, 'Sabão em Pó 1kg', '12.50', 40, '2026-04-10', b'1', ''),
(17, 1, 'Amaciante 2L', '9.80', 25, '2026-04-25', b'1', ''),
(18, 1, 'Esponja de Aço', '3.50', 100, '2026-05-01', b'1', ''),
(19, 2, 'Tomate (kg)', '7.80', 30, '2026-05-20', b'1', ''),
(20, 2, 'Cebola (kg)', '5.90', 40, '2026-05-22', b'1', ''),
(21, 3, 'Pão de Forma', '7.50', 20, '2026-05-24', b'1', ''),
(22, 4, 'Suco de Laranja 1L', '6.90', 35, '2026-05-26', b'1', ''),
(23, 5, 'Macarrão Espaguete 500g', '4.20', 80, '2026-05-05', b'1', ''),
(24, 5, 'Molho de Tomate', '2.90', 120, '2026-05-12', b'1', ''),
(25, 5, 'Óleo de Soja', '6.50', 50, '2026-05-18', b'1', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
