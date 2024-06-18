CREATE DATABASE wda_crud;
USE wda_crud;

CREATE TABLE `enfermeiros` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `COREN` int(11) NOT NULL,
  `DataNasc` date NOT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `enfermeiros` (`id`, `nome`, `endereco`, `COREN`, `DataNasc`, `foto`) VALUES
(1, 'Giovanna Henrique', 'Rua Francisca de Queiroz, no bairro Vila Independência, 34', '00001111', '2001-08-16 ', 'enfermeira_gih.jpg'),
(2, 'Raphael de Oliveira', 'Avenida Domingos Júlio, no bairro Campolim, 999', '00002222', '2002-05-08 ', 'enfermeiro_rapha.jpg'),
(3, 'Júlio Antonio dos Santos', 'Avenida Caribe, no bairro Jardim América, 777', '00003333', '2000-04-18 ', 'enfermeiro_júio.jpg'),
(4, 'Hariadny Tacashc', 'Avenida Professor Arthur Fonseca, no bairro Jardim Emília, 333', '00004444', '1990-02-28 ', 'enfermeira_hary.jpg'),
(5, 'Guilherme August dos Ramos', 'Avenida Engenheiro Carlos Reinaldo Mendes, no bairro Alto da Boa Vista, 452', '00005555', '2001-05-21 ', 'enfermeiro_gui.jpg');


CREATE TABLE `customers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(14) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `hood` varchar(100) NOT NULL,
  `zip_code` varchar(8) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(2) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `ie` varchar(15) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `customers` (`id`, `name`, `cpf_cnpj`, `birthdate`, `address`, `hood`, `zip_code`, `city`, `state`, `phone`, `mobile`, `ie`, `created`, `modified`) VALUES
(1, 'Giovanna Marina Gomes', '123.456.789-22', '2022-04-12 ', 'Rua Peixeira Silva, 452', 'Vila ShawMends', '18080550', 'Sorocaba', 'SP', '30310379', '15996023560', '215524', '2016-05-24 00:00:00', '2023-11-26 02:22:06'),
(2, 'Hariadny das Neves', '321.654.987-03', '2006-11-18 ', 'Rua Visconde Nóbrega, 895', 'Carlinho Brown', '18080650', 'Sorocaba', 'SP', '30602457', '15991817258', '237705', '2016-05-24 00:00:00', '2023-11-26 02:22:08');


CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `usuarios` (`id`, `nome`, `user`, `password`, `foto`) VALUES
(1, 'admin', 'admin', '$2a$08$Cf1f11ePArKlBJomM0F6a.UFZ6Sp2bbz/FEWdXSFF6hx71tGrjUc.', 'admin.png');


ALTER TABLE `enfermeiros`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `enfermeiros`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `customers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
