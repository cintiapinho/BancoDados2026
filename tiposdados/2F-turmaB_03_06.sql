-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Jun-2026 às 21:27
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
(1, 'Eletrônicos', 'Smartphones, TVs, áudio e vídeo'),
(2, 'Eletrodomésticos', 'Linha branca e eletroportáteis'),
(3, 'Informática', 'Computadores, peças, acessórios e periféricos'),
(4, 'Móveis', 'Móveis para escritório e casa'),
(5, 'Laticínios', 'Leites, queijos, iogurtes e derivados'),
(6, 'Limpeza', 'Produtos para higienização de ambientes e roupas');

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
(1, 1, 'Smartphone Galaxy S23', '3500.00', 50, '2026-01-15', b'1', 'Samsung'),
(2, 1, 'Smart TV 55 4K', '2800.50', 30, '2026-02-28', b'1', 'LG'),
(3, 1, 'Fone de Ouvido Bluetooth', '250.00', 150, '2026-03-12', b'1', 'JBL'),
(4, 2, 'Geladeira Frost Free', '4200.00', 15, '2026-04-05', b'1', 'Brastemp'),
(5, 2, 'Micro-ondas 20L', '550.00', 40, '2026-07-22', b'1', 'Electrolux'),
(6, 3, 'Placa de Vídeo RTX 4060', '2100.00', 20, '2026-08-14', b'1', 'ASUS'),
(7, 3, 'SSD 1TB NVMe', '450.00', 100, '2026-09-30', b'1', 'Kingston'),
(8, 3, 'Memória RAM 16GB DDR4', '320.00', 80, '2026-10-18', b'1', 'Corsair'),
(9, 4, 'Cadeira de Escritório Ergonômica', '890.00', 25, '2026-11-03', b'1', 'Flexform'),
(10, 4, 'Mesa de Computador em L', '650.00', 20, '2026-12-11', b'1', 'Kappesberg'),
(11, 5, 'Leite Integral 1L', '5.50', 200, '2026-01-05', b'1', 'Itambé'),
(12, 5, 'Queijo Mussarela Fatiado 500g', '15.45', 45, '2026-02-14', b'1', 'Sadia'),
(13, 6, 'Sabão em Pó 2kg', '18.50', 80, '2026-04-20', b'1', 'OMO'),
(14, 6, 'Desinfetante Uso Geral 1L', '8.90', 120, '2026-05-02', b'1', 'Pinho Sol'),
(15, 6, 'Detergente', '3.50', 50, '2026-06-25', b'1', 'Ypê');

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
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
