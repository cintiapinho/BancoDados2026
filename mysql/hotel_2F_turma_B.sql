-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Ago-2026 às 21:14
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `cliente`, `email`, `cpf`) VALUES
(1, 'Cintia Pinho', 'cintia@email.com', '123.456.789-42'),
(2, 'Sandra Maria', 'sandra@email.com', '456.456.789-42'),
(3, 'Sabrina Cato', 'sabrina@email.com', '789.456.789-42'),
(4, 'Geovana Souza', 'geo@email.com', '422.456.789-42'),
(5, 'Silvana Silva', 'sil@email.com', '888.456.789-42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospedagem`
--

CREATE TABLE `hospedagem` (
  `idhospedagem` int(11) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date DEFAULT NULL,
  `horaentrada` time NOT NULL,
  `horasaida` time DEFAULT NULL,
  `totalhospedagem` decimal(7,2) NOT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `idquarto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `hospedagem`
--

INSERT INTO `hospedagem` (`idhospedagem`, `dataentrada`, `datasaida`, `horaentrada`, `horasaida`, `totalhospedagem`, `idcliente`, `idquarto`) VALUES
(1, '2026-08-05', NULL, '15:50:45', '00:00:00', 0.00, 3, 1),
(2, '2026-08-04', NULL, '17:50:45', NULL, 0.00, 4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `quarto`
--

CREATE TABLE `quarto` (
  `idquarto` int(11) NOT NULL,
  `andar` varchar(255) NOT NULL,
  `quarto` varchar(255) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `quarto`
--

INSERT INTO `quarto` (`idquarto`, `andar`, `quarto`, `tipo`) VALUES
(1, '1º Andar', '11', 'Indivual'),
(2, '1º Andar', '12', 'Casal'),
(3, '1º Andar', '13', 'Familia + Cama Solteiro'),
(4, '1º Andar', '14', 'Familia + 2 camas solteiro'),
(5, '2º Andar', '21', 'Familia + Cama Solteiro'),
(6, '2º Andar', '22', 'Familia + 2 camas solteiro'),
(7, '2º Andar', '23', 'Mega Familia'),
(8, '2º Andar', '24', 'Suite Presidencial'),
(9, '3º Andar', '31', 'Familia + Cama Solteiro'),
(10, '3º Andar', '32', 'Familia + Cama Solteiro'),
(11, '3º Andar', '33', 'Mega Familia'),
(12, '3º Andar', '34', 'Suite Presidencial');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `idservico` int(11) NOT NULL,
  `servico` varchar(255) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`idservico`, `servico`, `valor`, `tipo`) VALUES
(1, 'Coca Cola Lata', 5.00, 'Bebida'),
(2, 'Coca Cola 2l', 20.00, 'Bebida'),
(3, 'Coca Cola 600', 8.00, 'Bebida'),
(4, 'Cerveja Lata - Skol', 10.50, 'Bebida'),
(5, 'Cerveja Lata - Amstel', 12.90, 'Bebida'),
(6, 'Cerveja Lata - Amstel Ultra', 15.00, 'Bebida'),
(7, 'Porção Fritas Pequena', 25.00, 'Bar Piscina'),
(8, 'Porção Fritas Grande', 40.00, 'Bar Piscina'),
(9, 'Sorvete Massa kg', 120.00, 'Bar Piscina'),
(10, 'Cerveja Lata - Amstel Ultra', 15.00, 'Bebida'),
(11, 'Massagem Simples', 100.00, 'Cuidados Estéticos'),
(12, 'Massagem Completa', 200.00, 'Cuidados Estéticos'),
(13, 'Almoço - Buffet Completo', 69.00, 'Alimentação'),
(14, 'Jantar - Buffet Completo', 69.00, 'Alimentação'),
(15, 'Café da Manhã - Buffet Completo', 39.00, 'Alimentação'),
(16, 'Porção de Mandioca Pequena', 25.00, 'Piscina Bar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicohospedagem`
--

CREATE TABLE `servicohospedagem` (
  `idhospedagem` int(11) DEFAULT NULL,
  `idservico` int(11) DEFAULT NULL,
  `datacompra` date NOT NULL,
  `horacompra` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `servicohospedagem`
--

INSERT INTO `servicohospedagem` (`idhospedagem`, `idservico`, `datacompra`, `horacompra`) VALUES
(1, 13, '2026-07-01', '13:00:38'),
(1, 13, '2026-07-02', '12:00:38'),
(1, 2, '2026-07-01', '10:04:52'),
(1, 11, '2026-07-03', '16:00:38'),
(1, 14, '2026-08-03', '16:07:15'),
(1, 5, '2026-08-02', '16:00:00'),
(2, 12, '2026-08-03', '16:09:19'),
(2, 8, '2026-08-01', '16:09:19');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD PRIMARY KEY (`idhospedagem`),
  ADD KEY `idcliente` (`idcliente`),
  ADD KEY `idquarto` (`idquarto`);

--
-- Índices para tabela `quarto`
--
ALTER TABLE `quarto`
  ADD PRIMARY KEY (`idquarto`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`idservico`);

--
-- Índices para tabela `servicohospedagem`
--
ALTER TABLE `servicohospedagem`
  ADD KEY `idhospedagem` (`idhospedagem`),
  ADD KEY `idservico` (`idservico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  MODIFY `idhospedagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `quarto`
--
ALTER TABLE `quarto`
  MODIFY `idquarto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `idservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD CONSTRAINT `hospedagem_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`),
  ADD CONSTRAINT `hospedagem_ibfk_2` FOREIGN KEY (`idquarto`) REFERENCES `quarto` (`idquarto`);

--
-- Limitadores para a tabela `servicohospedagem`
--
ALTER TABLE `servicohospedagem`
  ADD CONSTRAINT `servicohospedagem_ibfk_1` FOREIGN KEY (`idhospedagem`) REFERENCES `hospedagem` (`idhospedagem`),
  ADD CONSTRAINT `servicohospedagem_ibfk_2` FOREIGN KEY (`idservico`) REFERENCES `servico` (`idservico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
