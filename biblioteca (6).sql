-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/10/2024 às 20:42
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
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `Nome` varchar(11) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `CPF_cliente` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`Nome`, `id_cliente`, `CPF_cliente`) VALUES
('João', 4, 7832100),
('Ana', 20, 785236944),
('Cinthia', 21, 542369874),
('Alex', 22, 453697852),
('Maria', 23, 786321059),
('Mariana', 24, 784236029),
('Enzo', 25, 547963014),
('Nicolas', 26, 896523014),
('Antonio', 27, 789652016),
('Marcos B.', 28, 741025693),
('Narciso', 29, 485632105),
('Vitor', 30, 745632108),
('Vitória', 31, 999852034),
('Janaina', 32, 775632014),
('David L.', 33, 745036988),
('Clara B.', 34, 762103456),
('Cauã', 35, 471320699),
('Eduardo', 36, 541023697),
('Eduardo Gab', 37, 452013698),
('Adriana', 38, 102369874),
('Wanessa', 39, 854103697),
('Lucas', 40, 111111),
('Lucas', 41, 111111),
('Lucas', 42, 111111),
('Lucas', 43, 111111),
('Lucas', 44, 111111),
('Lucas', 45, 111111),
('Lucas', 46, 111111),
('Lucas', 47, 111111),
('Lucas', 48, 111111),
('Lucas', 49, 111111),
('Lucas', 50, 111111),
('Lucas', 51, 111111),
('Lucas', 52, 111111),
('Lucas', 53, 111111),
('Lucas', 54, 111111),
('Lucas', 55, 111111),
('Lucas', 56, 111111),
('Lucas', 57, 111111);

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id_filme` int(100) NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Ano` int(100) NOT NULL,
  `Quantidade` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id_filme`, `Categoria`, `Nome`, `Ano`, `Quantidade`) VALUES
(6, 'Terror', 'A freira ', 2018, 2),
(7, 'Animação', 'Divertidamente 2 ', 2024, 1),
(8, 'Romance', 'Titanic', 1998, 3),
(9, 'Humor', 'Os Farofeiros 2 ', 2024, 2),
(10, 'Ação', 'Indiana Jones ', 1981, 4),
(11, 'Terror 2', 'Telefone Preto', 2021, 2),
(12, 'Animação 3', 'O Rei Leão', 1994, 4),
(13, 'Drama\r\n', 'Pulp Fiction', 1994, 4),
(14, 'Romance 2 ', 'Forest Gump', 1994, 1),
(15, 'Ação', 'Mad Max', 2015, 3),
(16, 'Drama 3', 'Parasita', 2019, 3),
(17, 'Terror 3', 'O Silêncio dos Inocentes ', 1991, 2),
(18, 'Ficção Científica 2 ', 'Blade Runner 2049', 2017, 1),
(19, 'Aventura 2', 'As aventuras de tinTim', 2011, 1),
(20, 'Romance/animação', 'A bela e a fera ', 1991, 2),
(21, 'conto de fadas 3 ', 'o Magico de Oz', 1911, 2);

--
-- Acionadores `filmes`
--
DELIMITER $$
CREATE TRIGGER `updatefilmes` AFTER UPDATE ON `filmes` FOR EACH ROW INSERT INTO filmes VALUES(null, id_filme, "atualizado", NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionarios` int(100) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Função` varchar(100) NOT NULL,
  `Turno` varchar(100) NOT NULL,
  `CPF` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionarios`, `Nome`, `Função`, `Turno`, `CPF`) VALUES
(2, 'Maria das Graças', 'Bibliotecária', 'Manhã', 478965203),
(3, 'Douglas', 'Organizador', 'Tarde', 478562315),
(4, 'Milton', 'Bibliotecario', 'noite', 785320149),
(5, 'Caique', 'Administrador', 'manhã', 756321059),
(6, 'Giovanni', 'Gerente', 'Tarde', 120369785),
(7, 'Alessandra', 'Limpeza', 'manhã', 874653201),
(8, 'Ana clara', 'Administradora', 'Noite', 475621034),
(9, 'Marcos', 'Limpeza', 'Tarde', 845210369),
(10, 'Raissa', 'Recepcionista', 'Manhã', 741025836),
(11, 'Hugo', 'Recepcionista', 'Noite', 586320974),
(12, 'Maria A.', 'Vice-Gerente', 'tarde', 789321065),
(13, 'Davi', 'limpeza', 'noite', 789321054),
(14, 'Alvaro', 'bibliotecário', 'manhã', 347895120),
(15, 'Rafael', 'técnico', 'noite', 789632014),
(16, 'Ahnna', 'técnica', 'manhã', 755520036),
(17, 'Gabriel', 'Técnico', 'tarde', 745300259),
(18, 'Orlando', 'administrador ', 'noite', 566633301),
(19, 'Giulia ', 'Aprendiz', 'manhã', 789995120),
(20, 'Guilherme ', 'Aprendiz', 'noite', 441036987);

-- --------------------------------------------------------

--
-- Estrutura para tabela `instrumentos`
--

CREATE TABLE `instrumentos` (
  `id_instrumentos` int(100) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Qntd_instrumentos` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `instrumentos`
--

INSERT INTO `instrumentos` (`id_instrumentos`, `Tipo`, `Nome`, `Qntd_instrumentos`) VALUES
(2, 'Corda', 'Violão', 2),
(3, 'Percussão', 'Atabaque', 1),
(4, 'Sopro', 'Clarinete', 2),
(5, 'Percussão', 'Bateria (completa)', 1),
(6, 'Tecla', 'Arcodeón', 1),
(7, 'sopro 2 ', 'flauta', 1),
(8, 'sopro  metálico', 'trompete', 3),
(9, 'cordas e arco', 'violino', 3),
(10, 'cordas grandes ', 'harpa', 1),
(11, 'percussão 2 ', 'conga', 2),
(12, 'percussão 3', 'chocalho', 2),
(13, 'cordas e arco grande ', 'contra-baixo', 2),
(14, 'percussão - batuque', 'tambor', 2),
(15, 'sopro metálico 2 ', 'saxofone', 2),
(16, 'sopro pequeno', 'gaita', 3),
(17, 'sopro metálico grande ', 'trombone', 1),
(18, 'cordas pequeno', 'ukulele', 2),
(19, 'percussão (pandeiro)', 'pandeiro', 2),
(20, 'percussão de madeira', 'marimba', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogos`
--

CREATE TABLE `jogos` (
  `id_jogos` int(100) NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Plataforma` varchar(100) NOT NULL,
  `Qntd_jogos` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`id_jogos`, `Categoria`, `Nome`, `Plataforma`, `Qntd_jogos`) VALUES
(4, 'Blefe', 'Coup', 'Mesa', 3),
(5, 'RPG', 'GTA 5 ', 'Ps5 e Xbox One', 2),
(6, 'Levels', 'CupHead', 'PS4, Xbox One e PS5', 3),
(7, 'Estratégia', 'WAR', 'Mesa', 4),
(8, 'Variada', 'Baralho tradicional (52 cartas)', 'Mesa', 10),
(9, 'Battle Royale', 'Fortnite', 'ps4/ps5/xbox one/xbox series x ', 4),
(10, 'MOBA', 'LOL', 'PC', 50),
(11, 'Party game', 'among us', 'ps4/ps5/xbox one', 3),
(12, 'FPS', 'Valorant', 'PC', 50),
(13, 'Sandbox', 'Minecraft', 'ps4/ps5/xbox one/xbox series x/xbox one/PC', 10),
(14, 'Battle Royale', 'Apex Legends ', 'ps4/ps5', 2),
(15, 'RPG', 'Genshin Impact', 'ps4/xbox one/PC', 12),
(16, 'Battle Royale', 'Call of Duty Warzone ', 'ps4/xbox one', 2),
(17, 'Cooperativo', 'Pandemic ', 'mesa 2', 2),
(18, 'estratégia', 'Ticket to Ride the original', 'mesa 3 ', 1),
(19, 'RPG de mesa ', 'Dungeons e Dragons ', 'mesa 4 ', 2),
(20, 'Estratégia 2', 'Azul', 'mesa 5 ', 1),
(21, 'simulação', 'Stardew Valley', 'xbox one/ xbox series s ', 2),
(22, 'Estratégia 3 ', 'King of Tokyo', 'mesa 6 ', 2),
(23, 'civilização', '7 wonders ', 'mesa 7 ', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `id_livro` int(100) NOT NULL,
  `Categoria` varchar(100) DEFAULT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Ano` int(100) DEFAULT NULL,
  `Quantidade` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`id_livro`, `Categoria`, `Nome`, `Ano`, `Quantidade`) VALUES
(11, 'Acadêmico', 'Dicionário Aurélio de Português', 2010, 3),
(12, 'Romance', 'Mar Morto', 1936, 1),
(13, 'Ficção Científica', 'Jurassic Park', 1990, 3),
(14, 'Conto de Fadas', 'Dom Quixote', 1605, 7),
(15, 'Conto de Fadas', 'Robin Hood', 1250, 3),
(16, 'Suspense', 'Vidas Secas', 1938, 2),
(17, 'Romance', 'Um girassol na Janela', 2012, 2),
(18, 'Acadêmico', 'Vade Mecum', 2024, 1),
(19, 'Romance 2 ', 'Orgulho e Preconceito', 1813, 2),
(20, 'ficção cinetifica 2 ', '1984', 1949, 2),
(21, 'classico 2 ', 'Moby Dick', 1851, 3),
(22, 'Realismo magico', 'Cem anos de solidão', 1967, 3),
(23, 'política', 'a revolução dos bichos', 1945, 1),
(24, 'fantasia', 'o senhor dos anéis', 1954, 3),
(25, 'ficção', 'a metamorfose', 1915, 2),
(26, 'romance 2 ', 'dom casmurro', 1899, 2),
(27, 'ficção 2 ', 'a menina que roubava livros', 2005, 5),
(28, 'drama', 'o sol é para todos', 1960, 6),
(29, 'gótico', 'O Frankenstein', 1818, 3),
(30, 'ficção 3 ', 'a sombra do vento', 2001, 1),
(31, 'aventura 3 ', 'as aventuras de huckleberry finn', 1884, 4),
(32, 'drama 3 ', 'os miseráveis', 1862, 4),
(33, 'misterio', 'o código da vinci', 2003, 1),
(34, 'conto de fadas 2', 'the game of thrones', 1996, 3),
(35, 'existencialismo', 'o estrangeiro', 1942, 2),
(36, 'conto de fadas 3 ', 'the hobbit', 1937, 4),
(37, 'mistério 2 ', 'o nome da rosa ', 1980, 1),
(38, 'drama 4', 'a cor púrpura', 1982, 1),
(39, 'wgegfe', NULL, 0, 0),
(40, 'egweg', NULL, 0, 0),
(41, 'gsgsg', NULL, 0, 0),
(42, 'faef', NULL, 0, 0),
(43, 'gwegfwe', NULL, 0, 0),
(44, 'feqafaf', NULL, 0, 0),
(45, 'fgawdkg', NULL, 0, 0),
(46, 'hgffggfgfh', NULL, 0, 0);

--
-- Acionadores `livros`
--
DELIMITER $$
CREATE TRIGGER `updatelivros` AFTER UPDATE ON `livros` FOR EACH ROW INSERT INTO livros VALUES (null, id_livro, "atualizado", NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva de filmes`
--

CREATE TABLE `reserva de filmes` (
  `id_reservafilme` int(100) NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Data_retirada` date NOT NULL,
  `Data_devolucao` date NOT NULL,
  `CPF_cliente` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reserva de filmes`
--

INSERT INTO `reserva de filmes` (`id_reservafilme`, `Categoria`, `Titulo`, `Data_retirada`, `Data_devolucao`, `CPF_cliente`) VALUES
(6, 'Terror', 'A Freira ', '2024-09-20', '2024-09-27', '5678762345'),
(7, 'Animação', 'Divertidamente 2 ', '2024-09-25', '2024-09-30', '5432344569'),
(8, 'Romance', 'Titanic ', '2024-09-02', '2024-09-17', '7657890845'),
(9, 'Humor', 'Os Farofeiros 2 ', '2024-09-18', '2024-09-25', '5678908765'),
(10, 'Ação', 'Indiana Jones', '2024-09-30', '2024-10-07', '3458907650'),
(11, 'terror', 'telefone preto', '2024-10-08', '2024-10-17', '456387192'),
(13, 'drama', 'o coringa', '2024-09-26', '2024-09-27', '785214369'),
(20, 'roamnce ', 'a bela e a fera', '2024-10-02', '2024-10-04', '741253698');

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva de instrumentos`
--

CREATE TABLE `reserva de instrumentos` (
  `id_reservainstrumentos` int(100) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `CPF_cliente` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reserva de instrumentos`
--

INSERT INTO `reserva de instrumentos` (`id_reservainstrumentos`, `Tipo`, `Nome`, `CPF_cliente`) VALUES
(2, 'Corda', 'Violão', 765789084),
(3, 'Percussão', 'Bateria', 123456789),
(4, 'Sopro', 'Clarinete', 765789084),
(5, 'Percussão', 'Atabaque', 987099634),
(6, 'Tecla', 'Arcordeón', 474590987),
(8, 'sopro metalico', 'trompete ', 471323698),
(9, 'cordas e arco', 'violino', 630217895),
(13, 'cordas ', 'contra-baixo', 554120369),
(15, 'sopro metalico', 'saxofone', 741023698),
(16, 'sopro pequeno', 'gaita', 874630115),
(17, 'sopro metalico grande ', 'trombone', 552014796),
(18, 'cordas pequeno', 'ukulele', 789632014),
(19, 'percussao', 'pandeiro', 452036978),
(20, 'percussao de madeira ', 'tambor', 552301479);

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva de jogos`
--

CREATE TABLE `reserva de jogos` (
  `id_reservajogos` int(11) NOT NULL,
  `Data` int(11) NOT NULL,
  `Periodo` varchar(6) NOT NULL,
  `Qntd_controles` int(100) NOT NULL,
  `CPF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reserva de jogos`
--

INSERT INTO `reserva de jogos` (`id_reservajogos`, `Data`, `Periodo`, `Qntd_controles`, `CPF`) VALUES
(4, 11, '1h', 0, 123456789),
(5, 9, '2h', 1, 38485509),
(6, 12, '1h30', 2, 234566890),
(7, 30, '3h', 0, 456780294),
(8, 25, '40min', 0, 84950500),
(10, 5, '5hrs', 10, 471306985),
(11, 12, '2h30', 1, 412036985),
(13, 26, '1h30', 2, 541203698),
(14, 2, '1h', 2, 415236789),
(15, 30, '1h40', 2, 541023698),
(16, 22, '2h', 1, 412036895),
(17, 3, '30min', 0, 411102569),
(19, 1, '2h', 0, 478532016),
(21, 22, '1h', 3, 741269852),
(23, 25, '3h', 0, 471456320);

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva de livros`
--

CREATE TABLE `reserva de livros` (
  `id_reserva` int(100) NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Data_retirada` date NOT NULL,
  `Data_devolucao` date NOT NULL,
  `CPF_cliente` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reserva de livros`
--

INSERT INTO `reserva de livros` (`id_reserva`, `Categoria`, `Nome`, `Data_retirada`, `Data_devolucao`, `CPF_cliente`) VALUES
(11, 'Acadêmico', 'Dicionário de Português ', '2024-09-25', '2024-09-27', 345678999),
(13, 'Ficção Científica', 'Jurassic Park', '2024-10-16', '2024-10-24', 66556789),
(14, 'Conto de Fadas', 'Dom Quixote ', '2024-09-18', '2024-09-25', 234567890),
(15, 'Conto de Fadas', 'Robin Hood', '2024-10-12', '2024-10-19', 334456800),
(16, 'Suspense', 'Vidas Secas', '2024-10-01', '2024-10-09', 987656788),
(18, 'Acadêmico', 'Vade Mecum', '2024-09-02', '2024-09-23', 123456789),
(26, 'aventura ', 'forest gumpp', '2024-10-09', '2024-10-12', 789412036),
(29, 'gotico', 'o frenkistein', '2024-10-16', '2024-10-19', 785201698),
(33, 'misterio', 'o código da vinci', '2024-10-01', '2024-10-03', 774120365),
(43, 'romance', 'titanic', '2024-10-01', '2024-10-04', 145236987);

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva de salas`
--

CREATE TABLE `reserva de salas` (
  `id_reservasalas` int(100) NOT NULL,
  `Data` date NOT NULL,
  `Periodo` time(6) NOT NULL,
  `Qntd_pessoas` int(10) NOT NULL,
  `CPF_cliente` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reserva de salas`
--

INSERT INTO `reserva de salas` (`id_reservasalas`, `Data`, `Periodo`, `Qntd_pessoas`, `CPF_cliente`) VALUES
(2, '2024-09-09', '02:29:42.000000', 7, 2398788),
(4, '2024-09-25', '01:11:01.000000', 3, 23456899),
(5, '2024-09-27', '01:54:46.000000', 6, 123456789),
(6, '2024-10-10', '02:59:20.000000', 10, 304949400),
(7, '2024-09-16', '00:45:53.000000', 1, 9897979),
(8, '0000-00-00', '00:00:01.000000', 4, 741023695),
(10, '0000-00-00', '00:00:01.000000', 2, 741236589),
(11, '0000-00-00', '00:00:02.000000', 4, 541023698),
(12, '0000-00-00', '00:00:03.000000', 12, 541036978),
(13, '0000-00-00', '00:00:01.000000', 2, 410257963),
(14, '0000-00-00', '02:10:15.000000', 13, 451230657),
(15, '0000-00-00', '00:00:40.000000', 3, 412036578),
(17, '0000-00-00', '00:00:02.000000', 1, 410263078),
(18, '0000-00-00', '00:00:02.000000', 5, 741036219),
(19, '0000-00-00', '00:00:02.000000', 3, 552103697),
(21, '0000-00-00', '00:00:01.000000', 3, 741036589);

-- --------------------------------------------------------

--
-- Estrutura para tabela `salas`
--

CREATE TABLE `salas` (
  `id_salas` int(100) NOT NULL,
  `Numero_sala` int(100) NOT NULL,
  `Qntd_projetor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `salas`
--

INSERT INTO `salas` (`id_salas`, `Numero_sala`, `Qntd_projetor`) VALUES
(2, 1, '1'),
(3, 2, '2 e uma lousa'),
(4, 3, '0 - sala de concentração'),
(5, 4, '3 - sala de apresentação'),
(6, 4, '1 '),
(7, 5, '1 e hack de computador '),
(8, 7, '1'),
(9, 8, '0 / sala de concentração'),
(10, 9, '1 - mesa e lousa'),
(11, 10, '3'),
(12, 11, 'sofas e telão'),
(13, 12, 'sala de estudos'),
(14, 13, '4 - telao de apresentação'),
(15, 14, 'cadeiras, mesas e lousa'),
(16, 15, '2 - sala pequena '),
(17, 16, '2'),
(18, 17, '1 e lousa'),
(19, 18, '0 - sala criativa'),
(20, 19, 'sala de descanço'),
(21, 20, '1 e computador');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id_filme`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionarios`);

--
-- Índices de tabela `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`id_instrumentos`);

--
-- Índices de tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id_jogos`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id_livro`);

--
-- Índices de tabela `reserva de filmes`
--
ALTER TABLE `reserva de filmes`
  ADD PRIMARY KEY (`id_reservafilme`);

--
-- Índices de tabela `reserva de instrumentos`
--
ALTER TABLE `reserva de instrumentos`
  ADD PRIMARY KEY (`id_reservainstrumentos`);

--
-- Índices de tabela `reserva de jogos`
--
ALTER TABLE `reserva de jogos`
  ADD PRIMARY KEY (`id_reservajogos`);

--
-- Índices de tabela `reserva de livros`
--
ALTER TABLE `reserva de livros`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Índices de tabela `reserva de salas`
--
ALTER TABLE `reserva de salas`
  ADD PRIMARY KEY (`id_reservasalas`);

--
-- Índices de tabela `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id_salas`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id_filme` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionarios` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `instrumentos`
--
ALTER TABLE `instrumentos`
  MODIFY `id_instrumentos` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id_jogos` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id_livro` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `reserva de filmes`
--
ALTER TABLE `reserva de filmes`
  MODIFY `id_reservafilme` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `reserva de instrumentos`
--
ALTER TABLE `reserva de instrumentos`
  MODIFY `id_reservainstrumentos` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `reserva de jogos`
--
ALTER TABLE `reserva de jogos`
  MODIFY `id_reservajogos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `reserva de livros`
--
ALTER TABLE `reserva de livros`
  MODIFY `id_reserva` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `reserva de salas`
--
ALTER TABLE `reserva de salas`
  MODIFY `id_reservasalas` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `salas`
--
ALTER TABLE `salas`
  MODIFY `id_salas` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `reserva de filmes`
--
ALTER TABLE `reserva de filmes`
  ADD CONSTRAINT `reservadefilme` FOREIGN KEY (`id_reservafilme`) REFERENCES `filmes` (`id_filme`) ON DELETE CASCADE;

--
-- Restrições para tabelas `reserva de instrumentos`
--
ALTER TABLE `reserva de instrumentos`
  ADD CONSTRAINT `fkreservadeinstrumentos` FOREIGN KEY (`id_reservainstrumentos`) REFERENCES `instrumentos` (`id_instrumentos`);

--
-- Restrições para tabelas `reserva de jogos`
--
ALTER TABLE `reserva de jogos`
  ADD CONSTRAINT `fkreservajogos` FOREIGN KEY (`id_reservajogos`) REFERENCES `jogos` (`id_jogos`);

--
-- Restrições para tabelas `reserva de livros`
--
ALTER TABLE `reserva de livros`
  ADD CONSTRAINT `fkreservadelivros` FOREIGN KEY (`id_reserva`) REFERENCES `livros` (`id_livro`) ON DELETE CASCADE;

--
-- Restrições para tabelas `reserva de salas`
--
ALTER TABLE `reserva de salas`
  ADD CONSTRAINT `fkreservadesalas` FOREIGN KEY (`id_reservasalas`) REFERENCES `salas` (`id_salas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
