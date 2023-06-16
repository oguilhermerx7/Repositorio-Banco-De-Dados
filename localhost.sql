-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 16/06/2023 às 13:25
-- Versão do servidor: 10.11.2-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `atividade1`
--
CREATE DATABASE IF NOT EXISTS `atividade1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `atividade1`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `bebe`
--

CREATE TABLE `bebe` (
  `codBB` int(5) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `datan` date DEFAULT NULL,
  `cpf_mae` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mae`
--

CREATE TABLE `mae` (
  `cpf` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `bebe`
--
ALTER TABLE `bebe`
  ADD PRIMARY KEY (`codBB`),
  ADD KEY `cpf_mae` (`cpf_mae`);

--
-- Índices de tabela `mae`
--
ALTER TABLE `mae`
  ADD PRIMARY KEY (`cpf`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `bebe`
--
ALTER TABLE `bebe`
  ADD CONSTRAINT `bebe_ibfk_1` FOREIGN KEY (`cpf_mae`) REFERENCES `mae` (`cpf`);
--
-- Banco de dados: `aula1`
--
CREATE DATABASE IF NOT EXISTS `aula1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `aula1`;
--
-- Banco de dados: `aula3`
--
CREATE DATABASE IF NOT EXISTS `aula3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `aula3`;
--
-- Banco de dados: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `especializacao` char(20) DEFAULT NULL,
  `cpf` int(11) NOT NULL,
  `carga_horario` int(10) DEFAULT NULL,
  `nome` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sala`
--

CREATE TABLE `sala` (
  `numero_sala` varchar(10) NOT NULL,
  `bloco` varchar(10) DEFAULT NULL,
  `tamanho` varchar(10) DEFAULT NULL,
  `tipo_sala` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `serie` int(10) NOT NULL,
  `numero_turma` varchar(10) DEFAULT NULL,
  `numeros_alunos` char(10) DEFAULT NULL,
  `disciplina` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`numero_sala`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`serie`);
--
-- Banco de dados: `tabelas`
--
CREATE DATABASE IF NOT EXISTS `tabelas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `tabelas`;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Banco de dados: `venda`
--
CREATE DATABASE IF NOT EXISTS `venda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `venda`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `cod` int(4) NOT NULL,
  `nome` char(30) NOT NULL,
  `estado` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(7) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `codcidade` int(4) NOT NULL,
  `cpf` int(11) DEFAULT NULL,
  `rua` varchar(150) DEFAULT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `compras`
--

CREATE TABLE `compras` (
  `cod_compras` int(10) DEFAULT NULL,
  `cod_cliente` int(7) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `cod_prod` int(10) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `preco` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `prod_comp`
--

CREATE TABLE `prod_comp` (
  `cod_prod_copm` int(10) NOT NULL,
  `co_prodt` int(10) DEFAULT NULL,
  `cod_comp` int(10) DEFAULT NULL,
  `qtd_prod` int(5) DEFAULT NULL,
  `valor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codcidade`);

--
-- Índices de tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cod_prod`);

--
-- Índices de tabela `prod_comp`
--
ALTER TABLE `prod_comp`
  ADD PRIMARY KEY (`cod_prod_copm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
