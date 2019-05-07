-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 07/05/2019 às 11:36
-- Versão do servidor: 10.1.38-MariaDB
-- Versão do PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `PJ Vendas`
--
CREATE DATABASE IF NOT EXISTS `PJ Vendas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `PJ Vendas`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Clientes`
--

CREATE TABLE `Clientes` (
  `id INT` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(50) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `cep` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Clientes`
--

INSERT INTO `Clientes` (`id INT`, `nome`, `telefone`, `celular`, `email`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `cep`) VALUES
(1, 'Florentina Gods Souza', '(44) 3266-8858', '(44) 99858-8588', 'florentinagods@gmail.com', 'Rua José Alves ', 97, 'Casa', 'Jardim Romano', 'Nova Maria', '87112-960'),
(2, 'Mario de Virgem', '(44) 3092-9785', '(44) 98956-3893', 'virgemmario@gmail.com', 'Rua Castelo Amarelo', 190, 'Apartamento', 'Jardim Ouro', 'Boa Rica', '97312-860');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Produtos`
--

CREATE TABLE `Produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `valor_venda` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Produtos`
--

INSERT INTO `Produtos` (`id`, `nome`, `descricao`, `valor_venda`) VALUES
(1, 'Alvejante', 'Alvejante Clean o Melhor Para Sua Casa', '19.00'),
(2, 'Arroz', 'Arroz o Melhor Para Sua Casa', '14.00'),
(3, 'Feijão', 'Feijão o Melhor Para Sua Casa', '8.00'),
(4, 'Bombom', 'Bombom o Sabor Do Cacau, o Melhor Pra Sua Casa', '57.00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Vendas`
--

CREATE TABLE `Vendas` (
  `id  INT` int(11) NOT NULL,
  `data_venda` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Vendas`
--

INSERT INTO `Vendas` (`id  INT`, `data_venda`, `id_cliente`, `id_vendedor`) VALUES
(1, '2019-02-19', 1, 1),
(2, '2019-09-12', 2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Vendas_itens`
--

CREATE TABLE `Vendas_itens` (
  `id` int(11) NOT NULL,
  `id_vendas` int(11) NOT NULL,
  `id_produtos` int(11) NOT NULL,
  `quantidade` decimal(12,2) NOT NULL,
  `valor_unitario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Vendedores`
--

CREATE TABLE `Vendedores` (
  `id INT` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `perc_comissao` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Vendedores`
--

INSERT INTO `Vendedores` (`id INT`, `nome`, `celular`, `email`, `perc_comissao`) VALUES
(1, 'Gustavo Pereira', '(44) 99569-7301', 'gustavoperereira@gmail.com', '30.00'),
(2, 'Garibel Gantes', '(44) 95955-9065', 'garibelgantes@gmail.com', '40.00');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`id INT`);

--
-- Índices de tabela `Produtos`
--
ALTER TABLE `Produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `Vendas`
--
ALTER TABLE `Vendas`
  ADD PRIMARY KEY (`id  INT`),
  ADD KEY `fk_id_cliente` (`id_cliente`),
  ADD KEY `fk_id_vendedor` (`id_vendedor`);

--
-- Índices de tabela `Vendas_itens`
--
ALTER TABLE `Vendas_itens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_vendas` (`id_vendas`),
  ADD KEY `fk_id_produtos` (`id_produtos`);

--
-- Índices de tabela `Vendedores`
--
ALTER TABLE `Vendedores`
  ADD PRIMARY KEY (`id INT`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `id INT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `Produtos`
--
ALTER TABLE `Produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `Vendas`
--
ALTER TABLE `Vendas`
  MODIFY `id  INT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `Vendas_itens`
--
ALTER TABLE `Vendas_itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Vendedores`
--
ALTER TABLE `Vendedores`
  MODIFY `id INT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `Vendas`
--
ALTER TABLE `Vendas`
  ADD CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id INT`),
  ADD CONSTRAINT `fk_id_vendedor` FOREIGN KEY (`id_vendedor`) REFERENCES `Vendedores` (`id INT`);

--
-- Restrições para tabelas `Vendas_itens`
--
ALTER TABLE `Vendas_itens`
  ADD CONSTRAINT `fk_id_produtos` FOREIGN KEY (`id_produtos`) REFERENCES `Produtos` (`id`),
  ADD CONSTRAINT `fk_id_vendas` FOREIGN KEY (`id_vendas`) REFERENCES `Vendas` (`id  INT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
