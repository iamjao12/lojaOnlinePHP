-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31/10/2024 às 02:14
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

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
CREATE DATABASE IF NOT EXISTS `loja` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loja`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'Monitores'),
(2, 'Mouses'),
(3, 'Teclados'),
(4, 'Headsets'),
(5, 'Mousepads');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf_cnpj_cli` varchar(18) NOT NULL,
  `nome_cli` varchar(50) DEFAULT NULL,
  `numero_cli` varchar(10) DEFAULT NULL,
  `bairro_cli` varchar(10) DEFAULT NULL,
  `cidade_cli` varchar(20) DEFAULT NULL,
  `cep_cli` varchar(10) DEFAULT NULL,
  `estado_cli` varchar(2) DEFAULT NULL,
  `endereco_cli` varchar(50) DEFAULT NULL,
  `senha_cli` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cpf_cnpj_cli`, `nome_cli`, `numero_cli`, `bairro_cli`, `cidade_cli`, `cep_cli`, `estado_cli`, `endereco_cli`, `senha_cli`) VALUES
('000000000', 'Reginaldo da Silva', '9812787481', 'Bairro Rús', 'Garrafas', '874245000', 'MG', 'Rua das Flores', '5f6955d227a320c7f1f6c7da2a6d96a851a8118f'),
('03179145536', 'Hannah Dias Souza', '7388272653', 'Bairro Acl', 'Teixeira de Freitas', '45996035', 'Ba', 'Rua Grão Pará', 'ce7a9208af27fe9a842e686bade36eef69dee959'),
('0987654321', 'Ruan Alves', '', '', '', '', 'AC', '', '7742d4950ec87cceeee04be56864e30dc4b96b76'),
('1111', 'Fátima Bernardes', '847721351', 'Jardim Bra', 'Belém', '86462000', 'PA', 'Rua Acarajé', '9f8e8ed4a01ed7432b9394d627922ae3bb0a4fbe'),
('456', 'Átila', '', '', '', '', '', '', '8aefb06c426e07a0a671a1e2488b4858d694a730'),
('46868613814', 'João Victor Moraes', '1194149542', 'Jardim Por', 'Bom Jesus dos Perdõe', '12955000', 'SP', 'Rua João Dubs', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
('777', 'Gomes', '11', 'Bairro Gom', 'Toledo', '12945987', 'PR', 'Rua Gomes', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compra`
--

CREATE TABLE `compra` (
  `numero_compra` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `cpf_cnpj_cli` varchar(18) DEFAULT NULL,
  `valor_compra` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `compra`
--

INSERT INTO `compra` (`numero_compra`, `data`, `cpf_cnpj_cli`, `valor_compra`) VALUES
(1, '2024-06-09', '46868613814', 4059.79),
(2, '2024-06-09', '1111', 1000.00),
(3, '2024-06-09', '46868613814', 799.99),
(4, '2024-06-10', '46868613814', 4059.79),
(5, '2024-06-10', '03179145536', 4019.90),
(6, '2024-06-10', '000000000', 2709.80),
(7, '2024-06-11', '46868613814', 169.99),
(8, '2024-06-11', '03179145536', 349.99),
(9, '2024-06-11', '777', 6519.60),
(10, '2024-06-12', '46868613814', 1629.90),
(11, '2024-06-12', '46868613814', 5379.77),
(12, '2024-06-12', '456', 3429.79),
(13, '2024-10-13', '46868613814', 6669.58);

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagem`
--

CREATE TABLE `imagem` (
  `codigo_img` int(11) NOT NULL,
  `codigo_prod` varchar(10) DEFAULT NULL,
  `nome_arquivo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `imagem`
--

INSERT INTO `imagem` (`codigo_img`, `codigo_prod`, `nome_arquivo`) VALUES
(1, '1', 'monitor-teste.jpg'),
(2, '2', 'mouse-teste.jpg'),
(3, '3', 'teclado-teste.jpg'),
(4, '4', 'headset-teste.jpg'),
(5, '1', 'monitor-teste-2.jpg'),
(9, '2', 'mouse-teste2.jpg'),
(10, '2', 'mouse-teste3.jpg'),
(11, '6', 'mousepad-teste1.jpg'),
(12, '6', 'mousepad-teste2.jpg'),
(13, '6', 'mousepad-teste3.jpg'),
(14, '5', 'headset1-teste1.jpg'),
(15, '5', 'headset1-teste2.jpg'),
(16, '3', 'apex_pro_mini.png'),
(17, '4', 'Headset_gamer-31.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itemcompra`
--

CREATE TABLE `itemcompra` (
  `id_item_compra` int(11) NOT NULL,
  `numero_compra` int(11) NOT NULL,
  `codigo_prod` varchar(10) NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `quantidade` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `itemcompra`
--

INSERT INTO `itemcompra` (`id_item_compra`, `numero_compra`, `codigo_prod`, `valor`, `quantidade`) VALUES
(0, 1, '1', 799.99, 1.00),
(0, 1, '2', 1629.90, 2.00),
(0, 2, '1', 1000.00, 1.00),
(0, 3, '1', 799.99, 1.00),
(0, 4, '1', 799.99, 1.00),
(0, 4, '2', 1629.90, 2.00),
(0, 5, '3', 980.00, 3.00),
(0, 6, '2', 1629.90, 1.00),
(0, 7, '6', 169.99, 1.00),
(0, 8, '5', 349.99, 1.00),
(0, 9, '2', 1629.90, 4.00),
(0, 10, '2', 1629.90, 1.00),
(0, 11, '1', 799.99, 1.00),
(0, 11, '2', 1629.90, 2.00),
(0, 11, '3', 980.00, 1.00),
(0, 11, '6', 169.99, 2.00),
(0, 12, '2', 1629.90, 2.00),
(0, 12, '6', 169.99, 1.00),
(0, 13, '2', 1629.90, 3.00),
(0, 13, '5', 349.99, 2.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `codigo_prod` varchar(10) NOT NULL,
  `nome_pro` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor_unitario` decimal(10,2) DEFAULT NULL,
  `quantidade` decimal(5,2) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`codigo_prod`, `nome_pro`, `descricao`, `valor_unitario`, `quantidade`, `id`, `id_status`) VALUES
('1', 'Monitor Gamer Acer Nitro 23.8 LED Full HD', 'Tela de 23.8 polegadas com resolução full HD (1920x1080) com taxa de atualização de até 165hz, tempo de resposta 1ms VRB (Visual Response Boot), tecnologia HDR-10 com tecnologias Acer VisionCare, tecnologia AMD FreeSync Premium', 799.99, 10.00, 1, 2),
('2', 'Beast X Wireless Mouse Gamer', 'Mouse gamer feito de liga de magnésio. Inclui feet dots de PTFE e vidro e também um dongle 4K e peso de 39g', 1629.90, 10.00, 2, 2),
('3', 'Teclado Apex Pro Mini Wireless', 'Teclado com formato 60%, Wireless, com switchs hipermagnéticos Omnipoint 2.0, Rapid Trigger e com tempo de resposta 11x mais rápido que os teclados mecânicos tradicionais', 980.00, 10.00, 3, 2),
('4', 'Headset Gamer Wireless Logitech G935', 'O Headset G935 é um headset gamer sem fio, feito com a tecnologia de áudio Logitech com drivers Pro-G de 50 mm, feitos de malha híbrida para reduzir a distorção, possui também RGB LIGHTSYNC totalmente personalizável através do software da Logitech', 1079.90, 4.00, 4, 2),
('5', 'Headset Gamer Razer Kraken X, P2, Drivers 40mm', 'Desde a sua criação, o Razer Kraken vem construindo uma reputação de clássico cult na comunidade dos jogos, e se impôs como uma presença básica em incontáveis eventos, convenções e campeonatos.', 349.99, 3.00, 4, 2),
('6', 'Mousepad Gamer Fallen CS2 Hyper Beast - Speed   G', 'Os mousepads da Fallen são de alto padrão e são ideais para jogadores de esports que buscam maior precisão e velocidade nos movimentos do mouse. Ele é robusto, confortável e fabricado com materiais de alta qualidade, garantindo maior durabilidade.', 169.99, 19.00, 5, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `nome_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `status`
--

INSERT INTO `status` (`id_status`, `nome_status`) VALUES
(1, 'Inativo'),
(2, 'Ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf_cnpj_cli`);

--
-- Índices de tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`numero_compra`),
  ADD KEY `cpf_cnpj_cli` (`cpf_cnpj_cli`);

--
-- Índices de tabela `imagem`
--
ALTER TABLE `imagem`
  ADD PRIMARY KEY (`codigo_img`),
  ADD KEY `codigo_prod` (`codigo_prod`);

--
-- Índices de tabela `itemcompra`
--
ALTER TABLE `itemcompra`
  ADD PRIMARY KEY (`numero_compra`,`codigo_prod`),
  ADD KEY `numero_compra` (`numero_compra`),
  ADD KEY `codigo_prod` (`codigo_prod`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codigo_prod`),
  ADD KEY `id` (`id`),
  ADD KEY `fk_id_status` (`id_status`);

--
-- Índices de tabela `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `imagem`
--
ALTER TABLE `imagem`
  ADD CONSTRAINT `imagem_ibfk_1` FOREIGN KEY (`codigo_prod`) REFERENCES `produto` (`codigo_prod`);

--
-- Restrições para tabelas `itemcompra`
--
ALTER TABLE `itemcompra`
  ADD CONSTRAINT `ItemCompra_ibfk_1` FOREIGN KEY (`numero_compra`) REFERENCES `compra` (`numero_compra`),
  ADD CONSTRAINT `ItemCompra_ibfk_2` FOREIGN KEY (`codigo_prod`) REFERENCES `produto` (`codigo_prod`);

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_id_status` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
