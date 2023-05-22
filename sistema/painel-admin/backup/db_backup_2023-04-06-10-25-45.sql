DROP TABLE IF EXISTS alertas;

CREATE TABLE `alertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_alerta` varchar(20) NOT NULL,
  `titulo_mensagem` varchar(100) NOT NULL,
  `mensagem` varchar(1000) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `data` date NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO alertas VALUES("3","fdsafdsfa","fdfadf","dfasfdsafsad","http://localhost/hugo_cursos/loja/produto-sapato-social","WhatsApp Image 2023-04-05 at 16.13.05.jpeg","2023-09-01","Sim");


DROP TABLE IF EXISTS avaliacoes;

CREATE TABLE `avaliacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `texto` varchar(500) NOT NULL,
  `nota` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO avaliacoes VALUES("3","1","8","Muito bom, gostei muito.","5","2020-09-17");
INSERT INTO avaliacoes VALUES("4","25","8","Muito bom, excelente Produto!!","5","2020-09-17");
INSERT INTO avaliacoes VALUES("5","25","6","Fiquei impressionado com a qualidade do produto, superou todas as minhas expectativas, realmente muito bom e num preço totalmente acessível, super indico!","5","2020-09-17");


DROP TABLE IF EXISTS banner;

CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(30) NOT NULL,
  `subtitulo` varchar(20) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `textobt` varchar(15) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `imagem` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO banner VALUES("2","Produtos de Primeira Linha","BOUTIQUE FREITAS","Aqui você encontra os melhores preços!!","http://localhost/loja/sub-categoria-de-moda-feminina","COMPRAR AGORA","Não","16-06-2021-12-11-11-banner.jpg");
INSERT INTO banner VALUES("4","Promoção Camisa Social","Aproveite Já","Todas com 30% de Desconto","http://localhost/loja/produto-camisa-social","COMPRAR AGORA","Sim","16-06-2021-12-19-00-banner-social.jpg");
INSERT INTO banner VALUES("5","teste","teste","teste","http://google.com","sfsdfds","Não","sem-foto.jpg");


DROP TABLE IF EXISTS blog;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descricao_1` varchar(1000) NOT NULL,
  `descricao_2` varchar(1000) NOT NULL,
  `imagem` varchar(150) NOT NULL,
  `data` date NOT NULL,
  `palavras` varchar(150) DEFAULT NULL,
  `nome_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO blog VALUES("1","Titulo da Postagem do Blog","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames.","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing","curso-de-bootstrap-5.jpeg","2020-09-21","curso de bootstrap 5, novidades bootstrap 5, aulas de bootstrap 5, treinamento com bootstrap, aulas bootstrap","titulo-da-postagem-do-blog");
INSERT INTO blog VALUES("3","Saiba como verificar a originalidade de uma roupa","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing","nao-pode-provar-roupas-em-loja.jpg","2020-09-21","roupa original, como saber, como saber se a roupa é original","saiba-como-verificar-a-originalidade-de-uma-roupa");
INSERT INTO blog VALUES("4","Como verificar a qualidade de uma roupa?","Nos países de língua inglesa o texto apresenta-se em forma um pouco diferente, apresentada a seguir:\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.","Nos países de língua inglesa o texto apresenta-se em forma um pouco diferente, apresentada a seguir:\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.","mv-modas1.jpg","2020-09-21","qualidade de roupa, verificar qualidade","como-verificar-a-qualidade-de-uma-roupa-");
INSERT INTO blog VALUES("5","Tendência para o verão de 2020","Aquele que ama ou exerce ou deseja a dor, pode ocasionalmente adquirir algum prazer na labuta. Para dar um exemplo trivial, qual de nós se submete a laborioso exercício físico, exceto para obter alguma vantagem com isso. Desmoralizado pelos encantos do prazer, percebe que a dor não resulta em prazer algum. Está tão cego pelo desejo que não pode prever quem não cumprirá seu dever por fraqueza de vontade","Aquele que ama ou exerce ou deseja a dor, pode ocasionalmente adquirir algum prazer na labuta. Para dar um exemplo trivial, qual de nós se submete a laborioso exercício físico, exceto para obter alguma vantagem com isso. Desmoralizado pelos encantos do prazer, percebe que a dor não resulta em prazer algum. Está tão cego pelo desejo que não pode prever quem não cumprirá seu dever por fraqueza de vontadeAquele que ama ou exerce ou deseja a dor, pode ocasionalmente adquirir algum prazer na labuta. Para dar um exemplo trivial, qual de nós se submete a laborioso exercício físico, exceto para obter alguma vantagem com isso. Desmoralizado pelos encantos do prazer, percebe que a dor não resulta em prazer algum. Está tão cego pelo desejo que não pode prever quem não cumprirá seu dever por fraqueza de vontade","Roupas-feitas-com-renda-1.jpg","2020-09-21","tendencias para o versão 2020, tendencia verão, roupa verão","tendencia-para-o-verao-de-2020");


DROP TABLE IF EXISTS carac;

CREATE TABLE `carac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO carac VALUES("1","Tamanho");
INSERT INTO carac VALUES("2","Cor");
INSERT INTO carac VALUES("3","Numeração");
INSERT INTO carac VALUES("4","Voltagem");


DROP TABLE IF EXISTS carac_itens;

CREATE TABLE `carac_itens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carac_prod` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor_item` varchar(50) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

INSERT INTO carac_itens VALUES("1","11","Azul","#80acf2","Sim","0.00");
INSERT INTO carac_itens VALUES("2","3","Azul","#80acf2","Sim","0.00");
INSERT INTO carac_itens VALUES("3","3","Vermelho","#cf4023","Sim","0.00");
INSERT INTO carac_itens VALUES("4","10","P",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("5","10","M",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("6","10","G",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("7","10","GG",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("8","3","Amarelo",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("9","3","Verde",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("12","11","Vermelho",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("13","15","30 e 31",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("14","15","32 e 33",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("15","16","Marron",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("16","16","Preto",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("19","18","Azul",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("20","20","P",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("22","21","Preta","#000","Sim","0.00");
INSERT INTO carac_itens VALUES("23","21","Azul","#939ced","Sim","0.00");
INSERT INTO carac_itens VALUES("24","22","P",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("25","22","M",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("26","22","G",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("27","22","GG",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("29","21","Verde Escuro","#073817","Sim","0.00");
INSERT INTO carac_itens VALUES("30","21","Verde Claro","#6fd691","Sim","0.00");
INSERT INTO carac_itens VALUES("31","21","Laranja","#b5631b","Sim","0.00");
INSERT INTO carac_itens VALUES("34","20","M",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("35","23","Preto","#000","Sim","0.00");
INSERT INTO carac_itens VALUES("36","24","P",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("37","24","M",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("38","24","G",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("39","25","31 e 32",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("40","25","33 e 34",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("41","26","P",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("42","26","M",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("46","19","Cinza","#CCC","Sim","0.00");
INSERT INTO carac_itens VALUES("47","19","Azul","#11478a","Sim","0.00");
INSERT INTO carac_itens VALUES("48","19","Preto","#000","Sim","0.00");
INSERT INTO carac_itens VALUES("50","29","31",NULL,"Sim","5.00");
INSERT INTO carac_itens VALUES("51","29","33",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("52","29","35",NULL,"Sim","3.00");
INSERT INTO carac_itens VALUES("53","17","34/35",NULL,"Sim","10.00");
INSERT INTO carac_itens VALUES("54","17","36/37",NULL,"Sim","10.00");
INSERT INTO carac_itens VALUES("55","17","38/39",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("56","17","40/41",NULL,"Sim","5.00");
INSERT INTO carac_itens VALUES("57","16","Dourada",NULL,"Sim","20.00");
INSERT INTO carac_itens VALUES("58","32","Loja Virtual",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("59","33","Branca","#fffff","Sim","100.00");
INSERT INTO carac_itens VALUES("60","31","Loja Virtual",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("61","43","42",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("62","43","44",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("63","20","42",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("64","45","42",NULL,"Sim","0.00");
INSERT INTO carac_itens VALUES("65","44","42",NULL,"Sim","0.00");


DROP TABLE IF EXISTS carac_itens_car;

CREATE TABLE `carac_itens_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carrinho` int(11) NOT NULL,
  `id_carac` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
  `adicional` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8;

INSERT INTO carac_itens_car VALUES("32","104","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("33","104","1","G","0.00");
INSERT INTO carac_itens_car VALUES("34","220","1","M","0.00");
INSERT INTO carac_itens_car VALUES("36","223","1","M","0.00");
INSERT INTO carac_itens_car VALUES("37","223","2","Verde Escuro","0.00");
INSERT INTO carac_itens_car VALUES("38","220","2","Preto","0.00");
INSERT INTO carac_itens_car VALUES("39","220","3","31 e 32","0.00");
INSERT INTO carac_itens_car VALUES("41","315","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("42","222","2","Preto","0.00");
INSERT INTO carac_itens_car VALUES("43","318","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("44","320","2","Verde Escuro","0.00");
INSERT INTO carac_itens_car VALUES("45","321","2","Verde Claro","0.00");
INSERT INTO carac_itens_car VALUES("46","322","2","Verde Claro","0.00");
INSERT INTO carac_itens_car VALUES("47","323","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("48","324","2","Laranja","0.00");
INSERT INTO carac_itens_car VALUES("49","325","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("50","326","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("51","327","2","Verde Escuro","0.00");
INSERT INTO carac_itens_car VALUES("52","328","2","Laranja","0.00");
INSERT INTO carac_itens_car VALUES("53","329","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("54","330",NULL,NULL,"0.00");
INSERT INTO carac_itens_car VALUES("55","331","2","Verde Escuro","0.00");
INSERT INTO carac_itens_car VALUES("56","332","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("57","333","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("58","334","2","Verde Escuro","0.00");
INSERT INTO carac_itens_car VALUES("59","335","2","Verde Escuro","0.00");
INSERT INTO carac_itens_car VALUES("60","336","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("61","337","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("62","337","1","M","0.00");
INSERT INTO carac_itens_car VALUES("63","338",NULL,NULL,"0.00");
INSERT INTO carac_itens_car VALUES("64","338","1","G","0.00");
INSERT INTO carac_itens_car VALUES("65","339","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("66","339","1","G","0.00");
INSERT INTO carac_itens_car VALUES("67","340","2","Preto","0.00");
INSERT INTO carac_itens_car VALUES("68","340","1","M","0.00");
INSERT INTO carac_itens_car VALUES("69","340","3","31 e 32","0.00");
INSERT INTO carac_itens_car VALUES("78","441","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("79","441","1","P","0.00");
INSERT INTO carac_itens_car VALUES("80","455","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("81","455","1","M","0.00");
INSERT INTO carac_itens_car VALUES("82","457","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("83","457","1","P","0.00");
INSERT INTO carac_itens_car VALUES("84","458","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("85","458","1","G","0.00");
INSERT INTO carac_itens_car VALUES("86","459","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("87","459","1","M","0.00");
INSERT INTO carac_itens_car VALUES("88","465","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("89","465","1","M","0.00");
INSERT INTO carac_itens_car VALUES("90","467","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("91","467","1","M","0.00");
INSERT INTO carac_itens_car VALUES("92","469","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("93","469","1","GG","0.00");
INSERT INTO carac_itens_car VALUES("100","473","2","Verde Escuro","0.00");
INSERT INTO carac_itens_car VALUES("101","473","1","G","0.00");
INSERT INTO carac_itens_car VALUES("105","492","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("106","492","1","M","0.00");
INSERT INTO carac_itens_car VALUES("109","497","2","Verde Escuro","0.00");
INSERT INTO carac_itens_car VALUES("110","497","1","G","0.00");
INSERT INTO carac_itens_car VALUES("111","498","1","P","0.00");
INSERT INTO carac_itens_car VALUES("112","498","2","Verde Escuro","0.00");
INSERT INTO carac_itens_car VALUES("113","499","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("114","499","1","M","0.00");
INSERT INTO carac_itens_car VALUES("117","504","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("118","504","1","G","0.00");
INSERT INTO carac_itens_car VALUES("119","505","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("120","505","1","M","0.00");
INSERT INTO carac_itens_car VALUES("121","509","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("122","509","1","G","0.00");
INSERT INTO carac_itens_car VALUES("123","510","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("124","510","1","G","0.00");
INSERT INTO carac_itens_car VALUES("125","512","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("126","512","1","M","0.00");
INSERT INTO carac_itens_car VALUES("133","518","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("134","518","1","P","0.00");
INSERT INTO carac_itens_car VALUES("135","519","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("136","519","1","P","0.00");
INSERT INTO carac_itens_car VALUES("137","520","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("138","520","1","M","0.00");
INSERT INTO carac_itens_car VALUES("139","521","2","Verde Escuro","0.00");
INSERT INTO carac_itens_car VALUES("140","521","1","G","0.00");
INSERT INTO carac_itens_car VALUES("141","522","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("142","522","1","M","0.00");
INSERT INTO carac_itens_car VALUES("143","523","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("144","523","1","G","0.00");
INSERT INTO carac_itens_car VALUES("145","524","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("146","524","1","P","0.00");
INSERT INTO carac_itens_car VALUES("147","525","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("148","525","1","P","0.00");
INSERT INTO carac_itens_car VALUES("149","526","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("150","526","1","P","0.00");
INSERT INTO carac_itens_car VALUES("151","527","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("152","527","1","M","0.00");
INSERT INTO carac_itens_car VALUES("153","528","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("154","528","1","M","0.00");
INSERT INTO carac_itens_car VALUES("155","529","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("156","529","1","P","0.00");
INSERT INTO carac_itens_car VALUES("157","530","2","Marron","0.00");
INSERT INTO carac_itens_car VALUES("158","530","3","34/35","0.00");
INSERT INTO carac_itens_car VALUES("159","531","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("160","531","1","G","0.00");
INSERT INTO carac_itens_car VALUES("161","533","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("162","533","1","P","0.00");
INSERT INTO carac_itens_car VALUES("163","534","2","Preto","0.00");
INSERT INTO carac_itens_car VALUES("164","534","1","P","0.00");
INSERT INTO carac_itens_car VALUES("165","534","3","31 e 32","0.00");
INSERT INTO carac_itens_car VALUES("166","535","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("167","535","1","M","0.00");
INSERT INTO carac_itens_car VALUES("168","536","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("169","536","1","M","0.00");
INSERT INTO carac_itens_car VALUES("170","537","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("171","537","1","P","0.00");
INSERT INTO carac_itens_car VALUES("172","538","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("173","538","1","P","0.00");
INSERT INTO carac_itens_car VALUES("174","541","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("175","541","1","P","0.00");
INSERT INTO carac_itens_car VALUES("176","542","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("177","542","1","P","0.00");
INSERT INTO carac_itens_car VALUES("178","558","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("179","558","1","M","0.00");
INSERT INTO carac_itens_car VALUES("180","559","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("181","559","1","P","0.00");
INSERT INTO carac_itens_car VALUES("182","560","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("183","560","1","P","0.00");
INSERT INTO carac_itens_car VALUES("184","561","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("185","561","1","M","0.00");
INSERT INTO carac_itens_car VALUES("186","562","2","Preto","0.00");
INSERT INTO carac_itens_car VALUES("187","562","1","P","0.00");
INSERT INTO carac_itens_car VALUES("188","562","3","33 e 34","0.00");
INSERT INTO carac_itens_car VALUES("189","563","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("190","563","1","P","0.00");
INSERT INTO carac_itens_car VALUES("191","564","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("192","564","1","P","0.00");
INSERT INTO carac_itens_car VALUES("193","575","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("194","575","1","P","0.00");
INSERT INTO carac_itens_car VALUES("195","578","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("196","578","1","P","0.00");
INSERT INTO carac_itens_car VALUES("197","580","2","Preto","0.00");
INSERT INTO carac_itens_car VALUES("198","580","1","P","0.00");
INSERT INTO carac_itens_car VALUES("199","580","3","31 e 32","0.00");
INSERT INTO carac_itens_car VALUES("201","584","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("202","584","1","P","0.00");
INSERT INTO carac_itens_car VALUES("203","585","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("204","585","1","P","0.00");
INSERT INTO carac_itens_car VALUES("205","592","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("206","592","1","P","0.00");
INSERT INTO carac_itens_car VALUES("207","593","2","Cinza","0.00");
INSERT INTO carac_itens_car VALUES("208","593","1","P","0.00");
INSERT INTO carac_itens_car VALUES("209","602","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("210","602","1","P","0.00");
INSERT INTO carac_itens_car VALUES("219","652","2","Cinza","0.00");
INSERT INTO carac_itens_car VALUES("220","652","1","P","0.00");
INSERT INTO carac_itens_car VALUES("221","664","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("222","664","1","M","0.00");
INSERT INTO carac_itens_car VALUES("223","665","2","Cinza","0.00");
INSERT INTO carac_itens_car VALUES("224","665","1","P","0.00");
INSERT INTO carac_itens_car VALUES("225","666","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("226","666","1","M","0.00");
INSERT INTO carac_itens_car VALUES("227","667","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("228","667","1","M","0.00");
INSERT INTO carac_itens_car VALUES("229","669","2","Cinza","0.00");
INSERT INTO carac_itens_car VALUES("230","669","1","M","0.00");
INSERT INTO carac_itens_car VALUES("273","709","2","Dourada","20.00");
INSERT INTO carac_itens_car VALUES("274","709","3","36/37","10.00");
INSERT INTO carac_itens_car VALUES("275","710","2","Preto","0.00");
INSERT INTO carac_itens_car VALUES("276","710","3","34/35","10.00");
INSERT INTO carac_itens_car VALUES("277","711","2","Marron","0.00");
INSERT INTO carac_itens_car VALUES("278","711","3","40/41","5.00");
INSERT INTO carac_itens_car VALUES("279","713","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("280","713","1","P","0.00");
INSERT INTO carac_itens_car VALUES("281","716","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("282","716","1","P","0.00");
INSERT INTO carac_itens_car VALUES("283","720","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("284","720","1","M","0.00");
INSERT INTO carac_itens_car VALUES("285","721","2","Dourada","20.00");
INSERT INTO carac_itens_car VALUES("286","721","3","34/35","10.00");
INSERT INTO carac_itens_car VALUES("287","723","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("288","723","1","M","0.00");
INSERT INTO carac_itens_car VALUES("289","724","2","Dourada","20.00");
INSERT INTO carac_itens_car VALUES("290","724","3","40/41","5.00");
INSERT INTO carac_itens_car VALUES("291","725","2","Preta","0.00");
INSERT INTO carac_itens_car VALUES("292","725","1","M","0.00");
INSERT INTO carac_itens_car VALUES("293","726","2","Dourada","20.00");
INSERT INTO carac_itens_car VALUES("294","726","3","36/37","10.00");
INSERT INTO carac_itens_car VALUES("299","735","1","P","0.00");
INSERT INTO carac_itens_car VALUES("300","736","2","Azul","0.00");
INSERT INTO carac_itens_car VALUES("301","736","1","M","0.00");


DROP TABLE IF EXISTS carac_prod;

CREATE TABLE `carac_prod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carac` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

INSERT INTO carac_prod VALUES("3","2","1");
INSERT INTO carac_prod VALUES("10","1","1");
INSERT INTO carac_prod VALUES("11","2","3");
INSERT INTO carac_prod VALUES("12","3","3");
INSERT INTO carac_prod VALUES("13","1","3");
INSERT INTO carac_prod VALUES("14","4","3");
INSERT INTO carac_prod VALUES("15","3","1");
INSERT INTO carac_prod VALUES("16","2","23");
INSERT INTO carac_prod VALUES("17","3","23");
INSERT INTO carac_prod VALUES("18","2","31");
INSERT INTO carac_prod VALUES("23","2","22");
INSERT INTO carac_prod VALUES("24","1","22");
INSERT INTO carac_prod VALUES("25","3","22");
INSERT INTO carac_prod VALUES("33","2","15");
INSERT INTO carac_prod VALUES("48","2","12");
INSERT INTO carac_prod VALUES("58","3","20");
INSERT INTO carac_prod VALUES("62","3","25");
INSERT INTO carac_prod VALUES("67","1","30");


DROP TABLE IF EXISTS carrinho;

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `data` date NOT NULL,
  `combo` varchar(5) NOT NULL,
  `sessao` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=738 DEFAULT CHARSET=utf8;

INSERT INTO carrinho VALUES("427","8","25","1","42","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("428","8","30","1","43","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("429","8","25","1","43","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("430","8","30","1","44","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("431","8","25","1","44","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("434","8","22","1","45","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("435","8","24","1","46","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("436","8","15","1","46","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("437","8","10","1","46","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("438","8","24","1","47","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("439","8","15","1","47","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("440","8","10","1","47","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("457","8","30","1","48","2020-09-16","Não",NULL);
INSERT INTO carrinho VALUES("458","8","25","1","48","2020-09-16","Não",NULL);
INSERT INTO carrinho VALUES("459","8","25","1","49","2020-09-16","Não",NULL);
INSERT INTO carrinho VALUES("460","8","1","1","49","2020-09-16","Sim",NULL);
INSERT INTO carrinho VALUES("465","8","25","1","50","2020-09-16","Não",NULL);
INSERT INTO carrinho VALUES("466","8","1","1","50","2020-09-16","Sim",NULL);
INSERT INTO carrinho VALUES("473","8","25","1","51","2020-09-16","Não",NULL);
INSERT INTO carrinho VALUES("495","8","4","1","53","2020-09-17","Sim",NULL);
INSERT INTO carrinho VALUES("497","8","25","1","54","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("498","8","25","1","55","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("499","8","25","1","56","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("502","8","4","1","57","2020-09-17","Sim",NULL);
INSERT INTO carrinho VALUES("503","8","32","1","58","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("504","8","25","1","58","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("505","8","25","1","59","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("508","8","24","1","60","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("509","6","25","1","61","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("510","8","25","1","62","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("511","8","32","1","63","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("512","8","25","2","64","2020-09-21","Não",NULL);
INSERT INTO carrinho VALUES("518","6","30","1","65","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("519","6","25","1","66","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("520","6","25","1","67","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("521","6","25","1","68","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("522","6","25","1","69","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("523","6","25","1","71","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("524","6","25","1","72","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("525","6","30","1","73","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("526","6","30","1","74","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("527","6","25","1","75","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("528","6","25","1","76","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("529","6","25","1","77","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("530","6","23","1","78","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("531","6","25","1","79","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("532","6","12","1","79","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("533","6","30","1","80","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("534","6","22","1","80","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("535","6","25","1","81","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("536","6","25","1","82","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("537","6","30","1","83","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("538","6","30","1","84","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("539","6","20","1","85","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("540","6","20","1","86","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("541","6","30","1","87","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("542","6","30","6","87","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("543","6","15","1","88","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("544","6","8","1","88","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("558","6","25","3","89","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("559","6","25","2","89","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("560","6","25","1","90","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("561","6","30","1","91","2021-06-16","Não",NULL);
INSERT INTO carrinho VALUES("562","6","22","1","91","2021-06-16","Não",NULL);
INSERT INTO carrinho VALUES("563","6","30","1","92","2021-06-16","Não",NULL);
INSERT INTO carrinho VALUES("564","6","30","1","93","2021-06-16","Não",NULL);
INSERT INTO carrinho VALUES("573","6","10","1","94","2021-06-16","Não","16-06-2021 11:14:06");
INSERT INTO carrinho VALUES("574","6","15","1","94","2021-06-16","Não","16-06-2021 11:14:06");
INSERT INTO carrinho VALUES("575","6","30","1","94","2021-06-16","Não","16-06-2021 11:18:25");
INSERT INTO carrinho VALUES("577","6","10","1","94","2021-06-16","Não","16-06-2021 13:17:31");
INSERT INTO carrinho VALUES("578","6","25","1","94","2021-06-16","Não","16-06-2021 13:17:31");
INSERT INTO carrinho VALUES("579","6","24","1","95","2021-06-16","Não","16-06-2021 13:17:31");
INSERT INTO carrinho VALUES("580","6","22","1","95","2021-06-16","Não","16-06-2021 13:17:31");
INSERT INTO carrinho VALUES("584","6","30","1","95","2021-06-16","Não","16-06-2021 13:17:31");
INSERT INTO carrinho VALUES("585","6","25","1","96","2022-01-20","Não","20-01-2022 19:10:20");
INSERT INTO carrinho VALUES("586","6","10","1","97","2022-10-31","Não","31-10-2022 10:10:14");
INSERT INTO carrinho VALUES("587","6","10","1","97","2022-10-31","Não","31-10-2022 10:31:48");
INSERT INTO carrinho VALUES("588","6","20","1","97","2022-10-31","Não","31-10-2022 10:31:48");
INSERT INTO carrinho VALUES("589","6","1","1","98","2022-10-31","Sim","31-10-2022 10:52:53");
INSERT INTO carrinho VALUES("590","6","20","1","98","2022-10-31","Não","31-10-2022 10:52:53");
INSERT INTO carrinho VALUES("591","6","10","1","99","2022-10-31","Não","31-10-2022 10:52:53");
INSERT INTO carrinho VALUES("592","6","25","1","99","2022-10-31","Não","31-10-2022 10:52:53");
INSERT INTO carrinho VALUES("593","6","30","1","99","2022-10-31","Não","31-10-2022 10:52:53");
INSERT INTO carrinho VALUES("602","6","25","1","99","2022-10-31","Não","31-10-2022-12:38:37-1323");
INSERT INTO carrinho VALUES("603","6","15","1","99","2022-10-31","Não","31-10-2022-12:38:37-1323");
INSERT INTO carrinho VALUES("645","6","15","1","101","2022-10-31","Não","31-10-2022-14:05:30-148");
INSERT INTO carrinho VALUES("646","6","10","1","101","2022-10-31","Não","31-10-2022-14:05:30-148");
INSERT INTO carrinho VALUES("647","6","12","1","101","2022-10-31","Não","31-10-2022-14:05:30-148");
INSERT INTO carrinho VALUES("648","6","15","1","102","2022-10-31","Não","31-10-2022-14:05:30-148");
INSERT INTO carrinho VALUES("649","6","1","1","102","2022-10-31","Sim","31-10-2022-14:05:30-148");
INSERT INTO carrinho VALUES("650","10","15","1","103","2022-10-31","Não","31-10-2022-14:19:14-1407");
INSERT INTO carrinho VALUES("651","10","10","1","103","2022-10-31","Não","31-10-2022-14:19:14-1407");
INSERT INTO carrinho VALUES("652","10","30","1","103","2022-10-31","Não","31-10-2022-14:19:14-1407");
INSERT INTO carrinho VALUES("656","10","15","1","104","2022-10-31","Não","31-10-2022-14:19:14-1407");
INSERT INTO carrinho VALUES("657","10","10","1","104","2022-10-31","Não","31-10-2022-14:19:14-1407");
INSERT INTO carrinho VALUES("658","10","15","1","105","2022-10-31","Não","31-10-2022-14:19:14-1407");
INSERT INTO carrinho VALUES("659","10","12","1","105","2022-10-31","Não","31-10-2022-14:19:14-1407");
INSERT INTO carrinho VALUES("660","11","15","1","106","2022-10-31","Não","31-10-2022-15:16:52-1279");
INSERT INTO carrinho VALUES("661","11","12","1","106","2022-10-31","Não","31-10-2022-15:16:52-1279");
INSERT INTO carrinho VALUES("662","11","8","1","106","2022-10-31","Não","31-10-2022-15:16:52-1279");
INSERT INTO carrinho VALUES("663","12","15","1","107","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("664","12","25","1","107","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("665","12","30","1","108","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("666","12","25","1","108","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("667","12","25","1","109","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("668","12","15","1","110","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("669","12","30","1","111","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("670","12","12","1","111","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("709","12","23","1","112","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("710","12","23","1","112","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("711","12","23","2","112","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("712","12","15","1","112","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("713","12","30","2","113","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("714","12","15","1","113","2022-10-31","Não","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("715","12","1","2","113","2022-10-31","Sim","31-10-2022-17:03:49-112");
INSERT INTO carrinho VALUES("716","6","25","1","114","2022-10-31","Não","31-10-2022-23:26:00-579");
INSERT INTO carrinho VALUES("717","6","15","1","114","2022-10-31","Não","31-10-2022-23:26:00-579");
INSERT INTO carrinho VALUES("718","6","15","1","115","2022-10-31","Não","31-10-2022-23:26:00-579");
INSERT INTO carrinho VALUES("719","6","10","1","115","2022-10-31","Não","31-10-2022-23:26:00-579");
INSERT INTO carrinho VALUES("720","6","25","1","116","2022-10-31","Não","31-10-2022-23:26:00-579");
INSERT INTO carrinho VALUES("721","6","23","1","116","2022-10-31","Não","31-10-2022-23:26:00-579");
INSERT INTO carrinho VALUES("723","6","25","1","117","2022-10-31","Não","31-10-2022-23:44:12-74");
INSERT INTO carrinho VALUES("724","6","23","1","117","2022-10-31","Não","31-10-2022-23:44:12-74");
INSERT INTO carrinho VALUES("725",NULL,"25","1","118","2022-10-31","Não","31-10-2022-23:49:57-210");
INSERT INTO carrinho VALUES("726",NULL,"23","1","118","2022-10-31","Não","31-10-2022-23:49:57-210");
INSERT INTO carrinho VALUES("727",NULL,"15","1","119","2022-10-31","Não","31-10-2022-23:53:45-757");
INSERT INTO carrinho VALUES("728",NULL,"12","1","119","2022-10-31","Não","31-10-2022-23:53:45-757");
INSERT INTO carrinho VALUES("733","14","10","7","120","2023-03-27","Não","27-03-2023-05:39:06-184");
INSERT INTO carrinho VALUES("734","14","8","4","120","2023-03-27","Não","27-03-2023-05:39:06-184");
INSERT INTO carrinho VALUES("735","14","18","1","120","2023-03-27","Não","27-03-2023-05:39:06-184");
INSERT INTO carrinho VALUES("736","14","30","1","120","2023-03-27","Não","27-03-2023-05:39:06-184");


DROP TABLE IF EXISTS categorias;

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO categorias VALUES("1","Moda Masculina","moda-masculina","cat-3.jpg");
INSERT INTO categorias VALUES("2","Moda Feminina","moda-feminina","cat-2.jpg");
INSERT INTO categorias VALUES("3","Relógios","relogios","cat-5.jpg");
INSERT INTO categorias VALUES("4","Calçados","calcados","cat-6.jpg");
INSERT INTO categorias VALUES("5","Jóias e Semi-Jóias","joias-e-semi-joias","cat-7.jpg");
INSERT INTO categorias VALUES("8","Óculos","oculos","cat-oculos.jpg");
INSERT INTO categorias VALUES("9","Chapéu e Bonés","chapeu-e-bones","00.jpg");
INSERT INTO categorias VALUES("10","Cursos","cursos","cursos-cat.png");


DROP TABLE IF EXISTS clientes;

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `rua` varchar(80) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(5) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `cartoes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO clientes VALUES("1","Alice Santos","000.000.000-40","alice@hotmail.com",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO clientes VALUES("2","Cliente Teste 5","000.000.000-18","cliente@hotmail.com","(55) 55555-5555","Rua Boa Vista","50",NULL,"Cabana do Pai Tomás","Belo Horizonte","MG","30512-660","8");
INSERT INTO clientes VALUES("3","Matheus Silva","184.854.545-44","mateus@hotmail.com",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO clientes VALUES("4","Hugo Vasconcelos","214.569.999-99","hugovasconcelosf@hotmail.com","(33) 33333-3333","AF","55",NULL,"Bonfim","Belo Horizonte","MG","32451-236","8");
INSERT INTO clientes VALUES("5","Marta Campos","456.899.999-99","marta@hotamil.com",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO clientes VALUES("6","Hugo Teste","012.345.678-90","teste@hotmail.com","(44) 44444-4444","Rua Boa Vista","50","50","Cabana do Pai Tomás","Belo Horizonte","MG","30512-660",NULL);
INSERT INTO clientes VALUES("7","Novo Cliente","123.333.333-33","novo@hotmail.com","(22) 22222-2222","Rua Boa Vista","54",NULL,"Cabana do Pai Tomás","Belo Horizonte","MG","30512-660",NULL);
INSERT INTO clientes VALUES("8","Testeee","090.281.356-00","tesoeeeureiro@hotmail.com",NULL,"Rua Boa Vista","30",NULL,"Cabana do Pai Tomás","Belo Horizonte","MG","30512-660",NULL);
INSERT INTO clientes VALUES("9","Cliente Teste","121.178.536-09","cliteste@hotmail.com","(33) 33333-3337","Rua Boa Vista","60",NULL,"Cabana do Pai Tomás","Belo Horizonte","MG","30512-660",NULL);
INSERT INTO clientes VALUES("10","Bruno TrudeS","350.273.098-99","trudes.adm@gmail.com",NULL,"Rua francisco batista da costa","616",NULL,"Parafuso","Cajati","SP","11950-000","2");


DROP TABLE IF EXISTS combos;

CREATE TABLE `combos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `descricao_longa` text NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `tipo_envio` int(1) NOT NULL,
  `palavras` varchar(250) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `peso` double(8,2) NOT NULL,
  `largura` double(8,2) NOT NULL,
  `altura` double(8,2) NOT NULL,
  `comprimento` double(8,2) NOT NULL,
  `valor_frete` decimal(10,2) DEFAULT NULL,
  `vendas` int(11) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO combos VALUES("1","Camisa e Bermuda","camisa-e-bermuda","fdsfd","fsdfdsf","139.99","cat-1.jpg","6","fdsaf","Sim","1.00","1.00","1.00","1.00","0.00","2",NULL);
INSERT INTO combos VALUES("3","Conjunto Completo","conjunto-completo","fsdfds","fsdf","199.00","cat-3.jpg","1","afdsaf","Sim","1.00","1.00","1.00","1.00","0.00",NULL,NULL);
INSERT INTO combos VALUES("4","Pacote PHP","pacote-php","Está buscando uma loja virtual completa que possa te atender em tudo e para qualquer tipo de produto? Se a resposta é sim então acaba de encontrar, neste treinamento você aprenderá a criar do zero uma loja virtual completa, caso não tenha interesse no curso ela também virá pronta com os arquivos já prontos para instalação, totalmente atualizada com api dos correios, api de pagamentos (Pagseguro, Paypal e Mercado Pago), Gestão de Estoque, Painél Administrativo e muito mais. ","Está buscando uma loja virtual completa que possa te atender em tudo e para qualquer tipo de produto? Se a resposta é sim então acaba de encontrar, neste treinamento você aprenderá a criar do zero uma loja virtual completa, caso não tenha interesse no curso ela também virá pronta com os arquivos já prontos para instalação, totalmente atualizada com api dos correios, api de pagamentos (Pagseguro, Paypal e Mercado Pago), Gestão de Estoque, Painél Administrativo e muito mais. (OBS) A loja ainda não está 100% finalizada, temos 7 dos 10 módulos já concluídos, criei o pacote para os alunos já poderem comprar no valor promocional, pois comprando avulso sairá bem mais caro, previsão para conclusão é até o final de setembro de 2020.","280.00","curso-de-pdo.jpg","10","pacote de cursos php, pacote php","Sim","0.00","0.00","0.00","0.00","0.00","1","http://google.com");


DROP TABLE IF EXISTS coment_blog;

CREATE TABLE `coment_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_blog` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO coment_blog VALUES("1","3","6","Sempre tive dúvidas quanto a isso, muitas das vezes não conseguia diferenciar bem, sua postagem me ajudou muito, vou prestar mais atenção, grato.","2020-09-21","13:21:49");
INSERT INTO coment_blog VALUES("5","3","8","cccccccccc","2020-09-21","13:47:45");


DROP TABLE IF EXISTS config;

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome_loja` varchar(50) NOT NULL,
  `telefone_loja` varchar(20) NOT NULL,
  `email_loja` varchar(50) NOT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `texto_destaque` varchar(100) NOT NULL,
  `endereco_loja` varchar(255) DEFAULT NULL,
  `itens_por_pagina` int(11) NOT NULL,
  `cep_origem` varchar(15) NOT NULL,
  `comprimento_caixa` int(11) NOT NULL,
  `largura_caixa` int(11) NOT NULL,
  `altura_caixa` int(11) NOT NULL,
  `diametro_caixa` int(11) NOT NULL,
  `mao_propria` varchar(5) NOT NULL,
  `formato_frete` int(11) NOT NULL,
  `valor_declarado` int(11) NOT NULL,
  `aviso_recebimento` varchar(5) NOT NULL,
  `total_cartoes_troca` int(11) NOT NULL,
  `valor_cupom_cartao` decimal(8,2) NOT NULL,
  `dias_uso_cupom` int(11) NOT NULL,
  `nivel_estoque` int(11) NOT NULL,
  `dias_limpar_carrinho` int(11) NOT NULL,
  `retirada_local` varchar(5) NOT NULL,
  `nota_minima` int(11) NOT NULL,
  `enviar_total_emails` int(11) NOT NULL,
  `intervalo_envio_email` int(11) NOT NULL,
  `pagar_entrega` varchar(5) NOT NULL,
  `relatorio_pdf` varchar(5) NOT NULL,
  `rodape_relatorios` varchar(1000) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO config VALUES(NULL,"Trudes","(13) 9965-8167","admin@hotmail.com","(31) 97527-5088","Aproveite as nossas Promoções!","Rua Alameda Campos, Número 50, Bairro Centro, Belo Horizonte - MG - CEP 31535-800","7","30512-660","30","20","20","25","N","1",NULL,"N","10","20.00","7","5","2","Sim","3","480","70","Sim","Sim","Desenvolvido por Hugo Vasconcelos do Portal Hugo Cursoss!!","logo.png","favicon.png");


DROP TABLE IF EXISTS cupons;

CREATE TABLE `cupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(35) NOT NULL,
  `desconto` decimal(8,2) NOT NULL,
  `codigo` varchar(35) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS emails;

CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO emails VALUES("1","José Silva","hugovasconcelosf@hotmail.com","Sim");
INSERT INTO emails VALUES("2","João Silva","contato@hugocursos.com.br","Sim");
INSERT INTO emails VALUES("3","Alice Santos","alice@hotmail.com","Sim");
INSERT INTO emails VALUES("4","Cliente Teste","cliente@hotmail.com","Sim");
INSERT INTO emails VALUES("5","Matheus Silva","hugovasconcelosf@hotmail.com","Sim");
INSERT INTO emails VALUES("6","Marta Campos","marta@hotamil.com","Sim");
INSERT INTO emails VALUES("7","Hugo Teste","teste@hotmail.com","Sim");
INSERT INTO emails VALUES("8","Novo Cliente","novo@hotmail.com","Sim");
INSERT INTO emails VALUES("9","Testeee","tesoeeeureiro@hotmail.com","Sim");
INSERT INTO emails VALUES("10","Cliente Teste","cliteste@hotmail.com","Sim");
INSERT INTO emails VALUES("11","Bruno TrudeS","trudes.adm@gmail.com","Sim");


DROP TABLE IF EXISTS envios_email;

CREATE TABLE `envios_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `final` int(11) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `mensagem` varchar(1000) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO envios_email VALUES("1","2020-09-21 17:30:54",NULL,"Promoção de Camisas","Aproveite a nossa promoção com um lindo conjunto ..","combo-conjunto-completo");


DROP TABLE IF EXISTS imagens;

CREATE TABLE `imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

INSERT INTO imagens VALUES("11","1","cat-4.jpg");
INSERT INTO imagens VALUES("13","3","cat-2.jpg");
INSERT INTO imagens VALUES("14","3","cat-4.jpg");
INSERT INTO imagens VALUES("15","3","cat-7.jpg");
INSERT INTO imagens VALUES("16","1","cat-6.jpg");
INSERT INTO imagens VALUES("19","31","cat-4.jpg");
INSERT INTO imagens VALUES("21","25","ca misa social.jpg");
INSERT INTO imagens VALUES("22","25","Blusa-azul.jpg");
INSERT INTO imagens VALUES("23","25","Blusa Ver.jpg");
INSERT INTO imagens VALUES("24","25","Polo Marinho.jpg");
INSERT INTO imagens VALUES("25","25","Blue.jpg");
INSERT INTO imagens VALUES("36","32","layout- 94623.png");
INSERT INTO imagens VALUES("57","30","81012_set.jpg");
INSERT INTO imagens VALUES("92","32","81012_set.jpg");


DROP TABLE IF EXISTS mensagem;

CREATE TABLE `mensagem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venda` int(11) NOT NULL,
  `texto` varchar(1000) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

INSERT INTO mensagem VALUES("7","43","Mensagem Teste","Cliente","2020-09-15","00:00:00");
INSERT INTO mensagem VALUES("9","43","Pergunta do Admin","Admin","2020-09-15","00:00:00");
INSERT INTO mensagem VALUES("15","43","Cliente Respondeu","Admin","2020-09-15","13:37:59");
INSERT INTO mensagem VALUES("16","42","Pergunta do cliente sobre...","Cliente","2020-09-15","14:01:25");
INSERT INTO mensagem VALUES("17","42","Resposta do Admin","Admin","2020-09-15","14:26:59");
INSERT INTO mensagem VALUES("18","42","Mudança de status no pedido, pedido Disponivel","Admin","2020-09-15","15:19:45");
INSERT INTO mensagem VALUES("19","42","Mudança de status no pedido, pedido Entregue","Admin","2020-09-15","15:20:34");
INSERT INTO mensagem VALUES("20","42","Mudança de status no pedido, pedido Entregue","Admin","2020-09-15","15:27:39");
INSERT INTO mensagem VALUES("21","42","Obrigado","Cliente","2020-09-15","15:32:48");
INSERT INTO mensagem VALUES("22","40","Seu pedido foi Enviado, o código de rastreio é JR065666652","Admin","2020-09-15","15:38:18");
INSERT INTO mensagem VALUES("23","44","Parab?ns, voc? ganhou um novo cupom de desconto, poder? usar at? o dia 22/09/2020 o seu c?digo para uso do cupom ? 214.569.999-99","Admin","2020-09-15","17:32:02");
INSERT INTO mensagem VALUES("24","45","Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99","Admin","2020-09-15","17:40:39");
INSERT INTO mensagem VALUES("25","46","Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99","Admin","2020-09-15","18:19:56");
INSERT INTO mensagem VALUES("26","43","Mudança de status no pedido, pedido Não Enviado","Admin","2020-09-15","18:53:38");
INSERT INTO mensagem VALUES("27","47","Seu pedido foi Enviado, o código de rastreio é JR065666652","Admin","2020-09-15","19:10:46");
INSERT INTO mensagem VALUES("28","43","Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99","Admin","2020-09-15","19:13:33");
INSERT INTO mensagem VALUES("29","64","Seu pedido foi Enviado, o código de rastreio é JR065666652","Admin","2020-09-21","18:01:57");
INSERT INTO mensagem VALUES("30","89","Seu pedido foi Enviado, o código de rastreio é JR3658885665","Admin","2022-01-20","19:22:31");
INSERT INTO mensagem VALUES("31","97","Seu pedido foi Enviado, o código de rastreio é JR4545454","Admin","2022-10-31","11:17:08");
INSERT INTO mensagem VALUES("32","103","Teste","Cliente","2022-10-31","14:20:58");
INSERT INTO mensagem VALUES("33","114","Seu pedido foi Enviado, o código de rastreio é JR4545454","Admin","2022-10-31","23:32:39");
INSERT INTO mensagem VALUES("34","113","Seu pedido foi Enviado, o código de rastreio é JR45454548","Admin","2022-10-31","23:33:50");
INSERT INTO mensagem VALUES("35","118","Seu pedido foi Enviado, o código de rastreio é JR4545454","Admin","2022-10-31","23:53:06");
INSERT INTO mensagem VALUES("36","120","INformaçoes do pedido","Cliente","2023-03-27","06:49:24");
INSERT INTO mensagem VALUES("37","121","INformaçoes do pedido","Cliente","2023-03-27","06:49:28");
INSERT INTO mensagem VALUES("38","122","INformaçoes do pedido","Cliente","2023-03-27","06:49:34");
INSERT INTO mensagem VALUES("39","123","INformaçoes do pedido","Cliente","2023-03-27","06:49:38");
INSERT INTO mensagem VALUES("40","124","INformaçoes do pedido","Cliente","2023-03-27","06:49:42");
INSERT INTO mensagem VALUES("41","125","INformaçoes do pedido","Cliente","2023-03-27","06:49:46");
INSERT INTO mensagem VALUES("42","126","INformaçoes do pedido","Cliente","2023-03-27","06:49:50");
INSERT INTO mensagem VALUES("43","127","INformaçoes do pedido","Cliente","2023-03-27","06:49:54");


DROP TABLE IF EXISTS prod_combos;

CREATE TABLE `prod_combos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_combo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

INSERT INTO prod_combos VALUES("9","24","1");
INSERT INTO prod_combos VALUES("10","25","1");
INSERT INTO prod_combos VALUES("13","30","1");
INSERT INTO prod_combos VALUES("14","23","1");
INSERT INTO prod_combos VALUES("15","30","3");
INSERT INTO prod_combos VALUES("18","24","3");
INSERT INTO prod_combos VALUES("19","22","3");
INSERT INTO prod_combos VALUES("24","4","3");
INSERT INTO prod_combos VALUES("34","12","4");
INSERT INTO prod_combos VALUES("35","10","4");


DROP TABLE IF EXISTS produtos;

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(10) NOT NULL,
  `categoria` int(11) NOT NULL,
  `sub_categoria` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nome_url` varchar(100) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `descricao_longa` text NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `estoque` int(11) NOT NULL,
  `tipo_envio` int(11) NOT NULL,
  `palavras` varchar(250) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `peso` double(8,2) DEFAULT NULL,
  `largura` int(11) DEFAULT NULL,
  `altura` int(11) DEFAULT NULL,
  `comprimento` int(11) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `valor_frete` decimal(8,2) DEFAULT NULL,
  `promocao` varchar(5) NOT NULL,
  `vendas` int(11) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  `variavel` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

INSERT INTO produtos VALUES("1","1212","4","2","Sapato Social","sapato-social","aaaaaaaaaaaafdsfdfsdf","aaaaaaaaaaaaaaaaaaaaaaaaaaaaaafdsfdsfdffdsf","189.99","cat-6.jpg","12","2","tenis masculino, tenis esportivo, tenis barato, comprar tenis, tenis lançamento","Não","0.20",NULL,NULL,"1",NULL,"20.00","Não",NULL,NULL,"Sim");
INSERT INTO produtos VALUES("3","1213","2","3","Vestido","vestido","adaf","dfafdsf","250.00","cat-2.jpg","7","1","vestido feminino, vestidos","Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL,"Sim");
INSERT INTO produtos VALUES("4","1214","2","6","Olympikus","olympikus","Tênis Olympikus Selene Preto\n\n","Tênis Olympikus Selene, feito em jacquard multicolor, com estampa floral exclusiva e detalhes em lycra. A palmilha Feetpad traz ainda mais conforto. Solado em Evasense texturizado completa o visual do tênis, garantindo leveza e segurança.\n\n\n","129.99","Tenis-fem-rosa.jpg","20","1","fadsdsa","Sim","0.00","34",NULL,"39",NULL,"0.00","Não",NULL,NULL,"Não");
INSERT INTO produtos VALUES("5","1215","2","6","Tênis para Esporte","tenis-para-esporte","Tênis Olympikus Selene Azul","Tênis Olympikus Selene, feito em jacquard multicolor, com estampa floral exclusiva e detalhes em lycra. A palmilha Feetpad traz ainda mais conforto. Solado em Evasense texturizado completa o visual do tênis, garantindo leveza e segurança.\n\n\n","129.99","tenis-masculino.jpg","20","1","fdfa","Sim","0.00",NULL,NULL,"39",NULL,"0.00","Não",NULL,NULL,"Não");
INSERT INTO produtos VALUES("6","1216","2","6","Jogging","jogging","Tênis Jogging Via Marte Branco","Modelo conta com fecho em cadarço permitindo um melhor ajuste aos pés, interior revestido em material têxtil e palmilha em PU macio para um caminhar confortável.\n\n\n","99.99","tenis-feminino.jpg","20","1","fdsafds","Sim","0.00",NULL,NULL,"39",NULL,"0.00","Não",NULL,NULL,"Não");
INSERT INTO produtos VALUES("7","1217","2","6","Tênis Feminino","tenis-feminino","Tênis Jogging Via Marte Preto","Modelo conta com fecho em cadarço permitindo um melhor ajuste aos pés, interior revestido em material têxtil e palmilha em PU macio para um caminhar confortável.\n\n\n","99.99","Preto.jpg","20","6","fdsafsa","Sim","0.00",NULL,NULL,"39",NULL,"0.00","Não",NULL,NULL,"Não");
INSERT INTO produtos VALUES("8","1218","2","3","Vestido com Capuz","vestido-com-capuz","Vestido com Capuz Preto","Vestido básico com capuz. Confeccionado em malha moletinho leve de algodão com toque macio. Com decote em V e mangas longas, de modelagem soltinha e comprimento curto.\n\n\n","89.90","Vestido-Preto-.jpg","16","8","fadfaf","Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não","7",NULL,"Não");
INSERT INTO produtos VALUES("10","1219","2","3","Vestidos","vestidos","Vestido Preto Transpassado com Alça Dupla","Vestido em helanca. Modelo com alças, decote transpassado, busto duplo, recorte na cintura, saia assimétrica com transpasse frontal. Comprimento: Curto.\n\n\n","0.20","Vst-preto.jpg","9","8","fdafa","Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não","20",NULL,"Não");
INSERT INTO produtos VALUES("12","1220","2","7","Camisa Social","camisa-social","Camisa com Babado na Gola Azul","Camisa jeans. Decote com babado, fechamento com botões. Pences no busto e mangas longas com punho. Comprimento tradicional.\n\n\n","129.90","çáa-misa-social.jpg","20","6","fdsafsaf","Sim","0.20",NULL,NULL,NULL,NULL,"0.00","Não","3",NULL,"Sim");
INSERT INTO produtos VALUES("15","1221","2","7","Camisa Polo","camisa-polo","Polo Azul Royal Feminina","Polo Feminina em modelo Tradicional. Confeccionado em Meia Malha\n\n\n","0.40","Blusa-azul.jpg","18","8","dafa","Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não","17",NULL,"Sim");
INSERT INTO produtos VALUES("18","1222","2","8","Calças","calcas","Calça Jeans Sawary Skinny 360° com Cinta e Puídos","Calça em jeans com elastano. Modelo 360º skinny. Cintura com cós e passantes, bolsos frontais falsos e traseiros funcionais, fechamento em botão e zíper, puídos nas pernas, cinta interna contornando a cintura. Cintura alta.\n\n\n","189.99","Calça-fem.jpg","19","7","fdafa","Sim","0.10",NULL,NULL,NULL,NULL,"10.00","Não","1",NULL,"Não");
INSERT INTO produtos VALUES("20","1223","2","9","Calção Preto","calcao-preto","Short Boxer Preta com Elástico Esportivo","Short, em helanca. Modelo boxer, com elástico na cintura, faixa esportiva nas laterais e cordão decorativo. Cintura: Média.\n\n\n","39.99","Short-Preto.jpg","19","6","fdsaf","Sim","0.20","2","2","2",NULL,"0.00","Não","1",NULL,"Sim");
INSERT INTO produtos VALUES("22","1224","2","9","Short Jeans","short-jeans","Short Azul","Short em jeans de algodão com puídos de efeito destroyed e barra desfiada. Possui comprimento curto e cintura média e tem cós com passantes, bolsos na frente e na parte de trás e fechamento por botão fixo de metal e zíper.\n\n\n","99.90","Short-Jeans.jpg","20","7","fdff","Sim","0.00",NULL,NULL,NULL,NULL,"10.00","Não","2",NULL,"Sim");
INSERT INTO produtos VALUES("23","1225","4","10","Dariely","dariely","Bota Montaria Feminina Bottero Couro Preto","Modelo básico que finaliza inúmeros looks com muita elegância. Conta com detalhes metalizados na lateral, fecho em zíper garante a praticidade no calce. Salto grosso complementa o estilo.\n\n\n","149.99","Bota-Feminina.jpg","18","6","fsdfa","Sim","0.10",NULL,NULL,NULL,NULL,"0.00","Não","1",NULL,"Sim");
INSERT INTO produtos VALUES("24","1226","4","10","Bota Masculina","bota-masculina","Coturno Masculino Polo State Bronxy Marrom Brown","O Coturno Bronxy foi desenvolvido para você ter mais estilo, com um design diferenciado e excelente acabamento, para maior durabilidade. Botas são calçados que nunca saem de moda, além de trazerem mais estilo ao visual, elas são bastante confortáveis principalmente naqueles dias de frio. Além de modernas e elegantes, elas deixam seus pés aquecidos e seu visual ainda mais sofisticado. Um produto que combina com diversas ocasiões e estilo de roupas diferentes. Confeccionado em material alternativo. Fechamento em cadarço e zíper na lateral facilitando na hora de calçar esse incrível produto, sem contar com os detalhes em costuras. Um charme de Coturno\n\n\n","0.40","bota.jpg",NULL,"8","fdafdsf","Sim","0.10",NULL,NULL,NULL,NULL,"18.00","Não","20",NULL,"Não");
INSERT INTO produtos VALUES("25","1227","1","11","Camisa Estampa","camisa-estampa","Camiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\nCamiseta confeccionada em meia malha.\n\n\n\n","Camiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\nCamiseta confeccionada em meia malha.\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\nCamiseta confeccionada em meia malha.\n\n\n\n\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\nCamiseta confeccionada em meia malha.\n\n\n\n\n\n\n\n","0.00","Camisa-azul.jpg","1","6","fdfs","Não","0.02","20","15","30",NULL,"0.00","Sim","17",NULL,"Sim");
INSERT INTO produtos VALUES("30","1228","1","12","Bermudas","bermudas","Bermuda com Cordel e Detalhe Destroyed Jeans","Bermuda em jeans de algodão. Modelo com cordel removível e bolsos frontais e traseiros funcionais. Detalhes destroyed.\n\n\n","299.99","Jeans.jpg","11","6","ssfs","Sim","1.00","20","20","20",NULL,"0.00","Não","9",NULL,"Sim");
INSERT INTO produtos VALUES("32","1229","10","13","Loja Virtual","loja-virtual","Está buscando uma loja virtual completa que possa te atender em tudo e para qualquer tipo de produto? Se a resposta é sim então acaba de encontrar, neste treinamento você aprenderá a criar do zero uma loja virtual completa, caso não tenha interesse no curso ela também virá pronta com os arquivos já prontos para instalação.","Está buscando uma loja virtual completa que possa te atender em tudo e para qualquer tipo de produto? Se a resposta é sim então acaba de encontrar, neste treinamento você aprenderá a criar do zero uma loja virtual completa, caso não tenha interesse no curso ela também virá pronta com os arquivos já prontos para instalação, totalmente atualizada com api dos correios, api de pagamentos (Pagseguro, Paypal e Mercado Pago), Gestão de Estoque, Painél Administrativo e muito mais. (OBS) A loja ainda não está 100% finalizada, temos 7 dos 10 módulos já concluídos, criei o pacote para os alunos já poderem comprar no valor promocional, pois comprando avulso sairá bem mais caro, previsão para conclusão é até o final de setembro de 2020.","192.36","estoque.jpeg","998","10","curso de loja virtual, curso de ecommerce, montando loja virtual","Sim","0.00","2",NULL,NULL,NULL,"0.00","Sim","4","https://1drv.ms/u/s!AgtQ8RNXr-R3kuBgubn5M3laKDVqLw?e=uOSMEc","Não");


DROP TABLE IF EXISTS promocao_banner;

CREATE TABLE `promocao_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO promocao_banner VALUES("1","Promoção 6 Camisetas","http://google.com","banner-promo-2.jpg","Sim");
INSERT INTO promocao_banner VALUES("3","Segunda Promoção","http://localhost/hugo_cursos/loja/produto-sapato-social","banner-promo.jpg","Não");
INSERT INTO promocao_banner VALUES("4","Terceira Promoção","http://google.com","banner-1.jpg","Sim");


DROP TABLE IF EXISTS promocoes;

CREATE TABLE `promocoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `desconto` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO promocoes VALUES("2","31","30.00","2020-08-30","2020-09-01","Sim",NULL);
INSERT INTO promocoes VALUES("3","30","224.99","2020-08-31","2020-09-30","Sim","25");
INSERT INTO promocoes VALUES("4","29","35.00","2020-08-24","2020-09-02","Não",NULL);
INSERT INTO promocoes VALUES("5","28","50.00","2020-08-31","2020-09-08","Sim",NULL);
INSERT INTO promocoes VALUES("6","25","0.00","2023-04-05","2023-04-09","Sim","10");
INSERT INTO promocoes VALUES("7","24","0.38","2020-09-02","2021-09-30","Sim","5");
INSERT INTO promocoes VALUES("8","22","89.91","2020-09-02","2020-09-04","Sim","10");
INSERT INTO promocoes VALUES("9","18","170.99","2020-09-02","2020-09-02","Sim","10");
INSERT INTO promocoes VALUES("10","23","75.00","2020-09-09","2020-09-30","Sim","50");
INSERT INTO promocoes VALUES("11","20","35.99","2022-10-31","2022-10-31","Sim","10");
INSERT INTO promocoes VALUES("12","32","269.42","2023-04-02","2023-04-08","Sim","10");


DROP TABLE IF EXISTS qc_categorias;

CREATE TABLE `qc_categorias` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO qc_categorias VALUES("1","Geral","geral");
INSERT INTO qc_categorias VALUES("2","Camisas","categoria-camisa");
INSERT INTO qc_categorias VALUES("3","Calças","categoria-calcas");
INSERT INTO qc_categorias VALUES("4","Tênis","categoria-tenis");
INSERT INTO qc_categorias VALUES("5","Sapatos","categoria-sapatos");
INSERT INTO qc_categorias VALUES("8","Camisetas","camisetas");
INSERT INTO qc_categorias VALUES("9","Botas","botas");


DROP TABLE IF EXISTS qc_clientes;

CREATE TABLE `qc_clientes` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_sobrenome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cli_numero` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_bairro` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cidade` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cli_uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cep` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cpf` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `cli_rg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_ddd` int(2) NOT NULL,
  `cli_fone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_celular` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `cli_pass` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cli_data_nasc` date NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO qc_clientes VALUES("1","Hugo","Vasconcelos","Rua A","350","Cabana","BH","MG","31535522","55555512365","3333333333333333","31","975275084","975275084","hugovasconcelosf@hotmail.com","202cb962ac59075b964b07152d234b70","2017-08-16","2017-08-30","15:30:00");
INSERT INTO qc_clientes VALUES("2","Pedro","Freitas","Rua X","55","5555","5555","MG","5555555","5555555","55555555","55","5555555","555555555","pedro@hotmail.com","123","2017-08-30","2017-08-30","15:30:00");
INSERT INTO qc_clientes VALUES("4","Hugo","Vasconcelos","Rua A","150","Teste","Belo Horizonte","MG","31525698","09055535600","MG1111111111","31","333333333","333333333","teste@teste.com","e429552304bbdc8e8f36140784276d98cc981767","0000-00-00","2017-09-04","20:01:19");
INSERT INTO qc_clientes VALUES("7","Marcos","Paulo","Rua X","150","Teste","Belo Horizonte","MG","31525698","12345678900","3333333","31","3333333333","3333333","marcos@hotmail.com","c494c6a151be664c21c44ade2d32347002379e3c","0000-00-00","2017-09-04","22:58:09");
INSERT INTO qc_clientes VALUES("9","Fábio","Vasconcelos","Rua S","220","Teste","Belo Horizonte","MG","31525698","12345698700","3333333333","31","333333333","33333333","fabio@hotmail.com","3fc812212284dc37b216abe1270fcdcf81bbae69","0000-00-00","2017-09-04","23:32:03");
INSERT INTO qc_clientes VALUES("13","Paula","Freitas","Rua A","190","Cabana","BH","MG","31535522","09028135600","3333333333333333","31","975275084","975275084","qcursos@hotmail.com","202cb962ac59075b964b07152d234b70","1990-08-16","2017-09-05","00:25:40");
INSERT INTO qc_clientes VALUES("14","Marcio","Santos","Rua S","150","Teste","Belo Horizonte","MG","31525698","12312312300","555555","31","555555555","5555555555","marcio@hotmail.com","d5baf80c6599692c4fdeaf8a2a521444","0000-00-00","2017-09-05","19:35:21");
INSERT INTO qc_clientes VALUES("15","Hugo","de Freitas","Rua Corretor ","50","Cabana","Belo Horizonte","MG","31535522","55555555365","5555","31","975275084","975275084","hugo@hotmail.com","a6afc8b085f77a4bfb264236ec33f903","2017-09-13","2017-09-05","19:38:37");
INSERT INTO qc_clientes VALUES("19","Gabriel","Martins","Rua Augusta Alvarenga ","55","555","BELO HORIZONTE","MG","31535670","55555555365","555555","55","971816424","971816424","gab@hotmail.com","70cd6c95032f7d5a365ec883139e4b34","2017-09-13","2017-09-05","14:50:17");


DROP TABLE IF EXISTS qc_imagens;

CREATE TABLE `qc_imagens` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_pro_id` int(11) NOT NULL,
  `img_pasta` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO qc_imagens VALUES("1","tenis-couro-01.jpg","7",NULL);
INSERT INTO qc_imagens VALUES("2","tenis-couro-02.jpg","7",NULL);
INSERT INTO qc_imagens VALUES("3","tenis-couro-03.jpg","7",NULL);
INSERT INTO qc_imagens VALUES("5","170911144035tenis-mizuno-wave.jpg.jpg","16",NULL);
INSERT INTO qc_imagens VALUES("6","170911144235d16-1095-791-zoom1.jpg.jpg","16",NULL);
INSERT INTO qc_imagens VALUES("8","170911144251d16-1095-791-zoom3.jpg.jpg","16",NULL);
INSERT INTO qc_imagens VALUES("12","170911150038d16-1095-791-zoom4.jpg.jpg","16",NULL);


DROP TABLE IF EXISTS qc_pedidos;

CREATE TABLE `qc_pedidos` (
  `ped_id` int(11) NOT NULL AUTO_INCREMENT,
  `ped_data` date NOT NULL,
  `ped_hora` time NOT NULL,
  `ped_cliente` int(11) NOT NULL,
  `ped_cod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ped_ref` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_forma` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_tipo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_codigo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `ped_frete_valor` double(9,2) DEFAULT 0.00,
  `ped_frete_tipo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ped_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO qc_pedidos VALUES("76","2017-09-13","21:50:29","13","17091319094013","17091319094013","Aguardando pagamento","Boleto","PAGSEGURO","E2FD5A26-7B9E-452F-ACB5-46EA1BAEC43E","16.10",NULL);
INSERT INTO qc_pedidos VALUES("79","2017-09-14","11:40:03","13","17091411095813","17091411095813","Aguardando pagamento","Cartao","PAGSEGURO","5FAA3B26-D1B4-49ED-86BE-DAFE5E15F2FA","16.10",NULL);
INSERT INTO qc_pedidos VALUES("80","2017-09-14","12:02:55","13","17091412095013","17091412095013","Pago","Cartao","PAGSEGURO","AF5C0929-BF8A-4136-86F6-A50F53E720B8","16.10",NULL);
INSERT INTO qc_pedidos VALUES("81","2017-09-14","12:11:18","13","17091412091413","17091412091413","NAO",NULL,NULL,NULL,"16.10",NULL);


DROP TABLE IF EXISTS qc_pedidos_itens;

CREATE TABLE `qc_pedidos_itens` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_produto` int(11) NOT NULL,
  `item_valor` double(9,2) NOT NULL,
  `item_qtd` int(6) NOT NULL,
  `item_ped_cod` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO qc_pedidos_itens VALUES("170","4","300.00","1","17091319094013");
INSERT INTO qc_pedidos_itens VALUES("171","1","80.00","1","17091319094013");
INSERT INTO qc_pedidos_itens VALUES("176","16","0.03","1","17091411095813");
INSERT INTO qc_pedidos_itens VALUES("177","1","0.01","1","17091412095013");
INSERT INTO qc_pedidos_itens VALUES("178","3","250.00","1","17091412095013");
INSERT INTO qc_pedidos_itens VALUES("179","6","300.00","1","17091412095013");
INSERT INTO qc_pedidos_itens VALUES("180","1","0.01","1","17091412091413");


DROP TABLE IF EXISTS qc_produtos;

CREATE TABLE `qc_produtos` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_categoria` int(11) NOT NULL,
  `pro_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_peso` double(9,3) NOT NULL,
  `pro_valor` double(9,2) NOT NULL,
  `pro_largura` int(11) NOT NULL,
  `pro_altura` int(11) NOT NULL,
  `pro_comprimento` int(11) NOT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_modelo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_ref` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_fabricante` int(11) NOT NULL,
  `pro_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `pro_frete_free` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Não',
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO qc_produtos VALUES("1","2","Camisa Social","<p>Descri&ccedil;&atilde;o da Camisa Polo Fila Open Preta e Cinza A Fila &eacute; uma marca italiana que est&aacute; presente nos principais esportes e eventos esportivos do mundo, especializada na produ&ccedil;&atilde;o de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpira&ccedil;&atilde;o seja absorvida e rapidamente transportada para o tecido que facilitar&aacute; a evapora&ccedil;&atilde;o mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especifica&ccedil;&otilde;es da Camisa Polo Fila Open Preta e Cinza Conhe&ccedil;a as suas caracter&iacute;sticas: - Perfil: T&ecirc;nis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evapora&ccedil;&atilde;o. Ela mant&eacute;m o corpo na temperatura ideal para a pr&aacute;tica esportiva e proporciona maior conforto e r&aacute;pida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em bot&atilde;o, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabrica&ccedil;&atilde;o; - Origem: Nacional. Dimens&otilde;es do Produto DIMENS&Otilde;ES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observa&ccedil;&otilde;es: As medidas s&atilde;o aproximadas e podem variar para mais ou para menos de uma pe&ccedil;a para outra. Todas as informa&ccedil;&otilde;es divulgadas s&atilde;o de responsabilidade do fabricante/fornecedor. Imagens Meramente Ilustrativas.</p>","0.050","120.00","80","80","80","03.jpg","camisa-social","1","modelo01","02651551","1","1","gratuito");
INSERT INTO qc_produtos VALUES("2","2","Camisa Polo","Descrição da Camisa Polo Fila Open Preta e Cinza A Fila é uma marca italiana que está presente nos principais esportes e eventos esportivos do mundo, especializada na produção de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpiração seja absorvida e rapidamente transportada para o tecido que facilitará a evaporação mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especificações da Camisa Polo Fila Open Preta e Cinza Conheça as suas características: - Perfil: Tênis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evaporação. Ela mantém o corpo na temperatura ideal para a prática esportiva e proporciona maior conforto e rápida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em botão, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabricação; - Origem: Nacional. Dimensões do Produto DIMENSÕES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observações: As medidas são aproximadas e podem variar para mais ou para menos de uma peça para outra.\nTodas as informações divulgadas são de responsabilidade do fabricante/fornecedor.\nImagens Meramente Ilustrativas.","0.060","60.00","50","50","50","camisa.jpg","camisa-polo","10","modelo 054515","15154","1","1","Não");
INSERT INTO qc_produtos VALUES("3","3","Calça Jeans","Calça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.\nCalça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.","0.100","250.00","50","50","50","calca.jpg","calca-jeans","15","0654655","2998415","1","1","Não");
INSERT INTO qc_produtos VALUES("4","3","Calça de Moleton","Calça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.\nCalça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.","0.100","300.00","50","50","50","calca02.jpg","calca-de-moleton","50","15445","554888","1","1","Não");
INSERT INTO qc_produtos VALUES("5","4","Tênis Corvette Slim Freeway","Com leve amortecimento, o Tênis Corvette Slim Freeway conta com conforto e design esportivo para você acelerar em direção à autenticidade. Ideal para acompanhar os apaixonados por carros.","0.100","1250.00","50","50","50","tenis-corvete.jpg","tenis-corvete","10","265566","5565699","1","1","Não");
INSERT INTO qc_produtos VALUES("6","4","Tênis Asics GEL Excite","O Tênis Asics GEL Excite 4 é desenvolvido com tecnologias que melhoram o desempenho nas corridas e caminhadas. Sistema de gel com absorção de impacto e EVA que retorna ao estado original com rapidez. ","0.100","300.00","50","50","50","tenis-asics.jpg","tenis-asics-gel","1","111555","1589555","1","1","Não");
INSERT INTO qc_produtos VALUES("7","4","Tênis Couro Nike Shox Avenue","Apresentando amortecimento de 4 colunas no calcanhar, o Tênis Couro Nike Shox Avenue LTR auxilia na distribuição do peso. Conta com design esportivo, tração e sistema de amarração que envolve os pés. ","0.100","750.00","50","50","50","tenis-couro.jpg","tenis-couro","10","05515151","11558566","1","1","Não");
INSERT INTO qc_produtos VALUES("8","4","Tênis Nike Shox Avenue","Aproveite a casualidade do dia a dia com muito estilo e pronto para aceitar qualquer convite. Com o Tênis Nike Shox Avenue você completa o visual com originalidade e desfruta de máximo conforto. ","0.100","600.00","50","50","50","tenis-nike-shox.jpg","tenis-nike-shox","50","05899644","05485515","1","1","Não");
INSERT INTO qc_produtos VALUES("9","5","Sapatênis Burn York","<p>Aposte em combina&ccedil;&otilde;es masculinas para o &ldquo;casual day&rdquo; com o Sapat&ecirc;nis Burn York. Conferindo versatilidade ao visual, o modelo inspirado no esporte tem perfuros laterais e detalhe em ilh&oacute;s colorido.</p>","0.100","800.00","50","50","50","sapatenis-burn.jpg","sapatenis-burn-york","20","84484884","84845226","1","1","Não");
INSERT INTO qc_produtos VALUES("16","4","Tênis Mizuno Wave ","<p>O T&ecirc;nis Mizuno Wave Elevation 2 proporciona muito mais conforto durante as suas corridas. Com nova entressola absorve os impactos e garante uma melhor estabilidade durante as pisadas.</p>","0.200","600.00","10","10","10","170911121349tenis-mizuno-wave.jpg.jpg","tenis-mizuno-wave","100","45484448","488964",NULL,"S","Não");


DROP TABLE IF EXISTS qc_user;

CREATE TABLE `qc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_pw` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO qc_user VALUES("1","Hugo Vasconcelos","qcursos@hotmail.com","202cb962ac59075b964b07152d234b70");
INSERT INTO qc_user VALUES("2","Administrador Loja Freitas","lojavirtualfreitas@gmail.com","202cb962ac59075b964b07152d234b70");


DROP TABLE IF EXISTS sub_categorias;

CREATE TABLE `sub_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO sub_categorias VALUES("1","Tênis Masculinos","tenis-masculinos","Prdt-Tenis-Masc-preto.jpg","4");
INSERT INTO sub_categorias VALUES("2","Sapato Social","sapato-social","Sapato-Social.jpg","4");
INSERT INTO sub_categorias VALUES("3","Vestidos","vestidos","cat-2.jpg","2");
INSERT INTO sub_categorias VALUES("6","Tênis Femininos","tenis-femininos","Prdt-Tenis-Feminino-Rosa.jpg","2");
INSERT INTO sub_categorias VALUES("7","Blusas","blusas","Sub-Social-Feminina-.jpg","2");
INSERT INTO sub_categorias VALUES("8","Calças ","calcas","Prdt-Jogger-Feminina.jpg","2");
INSERT INTO sub_categorias VALUES("9","Shorts","shorts","Calção.jpg","2");
INSERT INTO sub_categorias VALUES("10","Botas","botas","Bota-Feminina.jpg","4");
INSERT INTO sub_categorias VALUES("11","Camisetas","camisetas","Sub-Camisas.jpg","1");
INSERT INTO sub_categorias VALUES("12","Bermudas","bermudas","Prdt-Bermuda-masc-Cinza.jpg","1");
INSERT INTO sub_categorias VALUES("13","Desenvolvimento WEB","desenvolvimento-web","loja-virtual-php7.jpeg","10");


DROP TABLE IF EXISTS tipo_envios;

CREATE TABLE `tipo_envios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO tipo_envios VALUES("6","Correios");
INSERT INTO tipo_envios VALUES("7","Valor Fixo");
INSERT INTO tipo_envios VALUES("8","Sem Frete");
INSERT INTO tipo_envios VALUES("10","Digital");


DROP TABLE IF EXISTS usuarios;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `senha_crip` varchar(150) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO usuarios VALUES("1","BRuno","000.000.000-00","trudes.adm@hotmail.com","123","202cb962ac59075b964b07152d234b70","Admin","WhatsApp-Image-2023-03-20-at-08.22.46.jpeg");
INSERT INTO usuarios VALUES("5","Alice Santos","000.000.000-40","alice@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("6","Cliente Teste 5","000.000.000-18","cliente@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("7","Matheus Silva","184.854.545-44","mateus@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("8","Hugo Vasconcelos","214.569.999-99","hugovasconcelosf@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("9","Marta Campos","456.899.999-99","marta@hotamil.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("10","Hugo Teste","012.345.678-90","teste@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("11","Novo Cliente","123.333.333-33","novo@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("12","Testeee","090.281.356-00","tesoeeeureiro@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("13","Cliente Teste","121.178.536-09","cliteste@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("14","Bruno TrudeS","350.273.098-99","trudes.adm@gmail.com","Ban2008..","5a9a4f48a4c92c860e4dae7b4ef7c08b","Cliente",NULL);


DROP TABLE IF EXISTS vendas;

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_total` decimal(10,2) NOT NULL,
  `frete` decimal(8,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `status` varchar(35) NOT NULL,
  `rastreio` varchar(35) DEFAULT NULL,
  `pgto_entrega` varchar(5) DEFAULT NULL,
  `tipo_frete` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

INSERT INTO vendas VALUES("1","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("2","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("3","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("4","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("5","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("6","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("7","75.00","21.00","96.00","6","Não","2020-09-10",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("8","174.99","73.50","248.49","6","Não","2020-09-10",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("9","257.49","21.00","278.49","6","Não","2020-09-14",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("19","52.00","0.00","52.00","6","Não","2020-09-14",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("20","52.00","0.00","52.00","6","Não","2020-09-14",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("31","52.00","0.00","52.00","6","Não","2020-09-14",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("32","52.00","0.00","52.00","6","Não","2020-09-14",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("33","1.00","0.00","1.00","6","Não","2020-09-14",NULL,NULL,NULL,NULL);
INSERT INTO vendas VALUES("34","1.00","0.00","1.00","8","Sim","2020-09-14","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("35","1.00","0.00","1.00","8","Sim","2020-09-14","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("36","1.00","0.00","1.00","8","Sim","2020-09-14","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("37","1.00","0.00","1.00","8","Sim","2020-09-14","Enviado","JR03665666555",NULL,NULL);
INSERT INTO vendas VALUES("40","45.00","21.00","66.00","8","Sim","2020-09-15","Enviado","JR065666652",NULL,NULL);
INSERT INTO vendas VALUES("42","120.00","21.00","141.00","8","Sim","2020-09-15","Entregue","JR064982122",NULL,NULL);
INSERT INTO vendas VALUES("43","149.99","21.00","170.99","8","Sim","2020-09-15","Não Enviado","adfsafdfa",NULL,NULL);
INSERT INTO vendas VALUES("44","149.99","21.00","170.99","8","Sim","2020-09-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("45","99.00","0.00","99.00","8","Sim","2020-09-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("46","1.00","0.00","1.00","8","Sim","2020-09-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("47","1.00","0.00","1.00","8","Sim","2020-09-15","Enviado","JR065666652",NULL,NULL);
INSERT INTO vendas VALUES("48","149.99","21.00","170.99","8","Sim","2020-09-16","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("49","184.99","24.90","209.89","8","Sim","2020-09-16","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("50","184.99","24.20","209.19","8","Sim","2020-09-16","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("58","244.99","21.00","265.99","8","Não","2020-09-17","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("59","45.00","0.00","45.00","8","Não","2020-09-17","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("60","18.00","0.00","18.00","8","Não","2020-09-17","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("61","45.00","21.00","66.00","6","Sim","2020-09-17","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("62","45.00","0.00","45.00","8","Não","2020-09-17","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("63","199.00","0.00","199.00","8","Sim","2020-09-17","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("64","90.00","21.00","111.00","8","Sim","2020-09-21","Enviado","JR065666652",NULL,NULL);
INSERT INTO vendas VALUES("65","154.99","0.00","154.99","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("66","1.20","0.00","1.20","6","Não","2021-06-15","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("67","1199.99","0.00","1199.99","6","Não","2021-06-15","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("68","1199.99","0.00","1199.99","6","Não","2021-06-15","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("69","1199.99","0.00","1199.99","6","Não","2021-06-15","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("70","0.00","0.00","0.00","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("71","1199.99","0.00","1199.99","6","Não","2021-06-15","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("72","699.99","0.00","699.99","6","Não","2021-06-15","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("73","1414.99","0.00","1414.99","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("74","214.99","0.00","214.99","6","Sim","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("75","1699.99","0.00","1699.99","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("76","172078.00","21.00","172099.00","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("77","1699.99","21.00","1720.99","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("78","167.99","21.00","188.99","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("79","1829.89","21.00","1850.89","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("80","324.89","0.00","324.89","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("81","1689.99","21.00","1710.99","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("82","1689.99","21.00","1710.99","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("83","20499.00","0.00","20499.00","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("84","214.99","0.00","214.99","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("85","39.99","21.00","60.99","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("86","24.99","21.00","45.99","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("87","1409.93","0.00","1409.93","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("88","90.30","0.00","90.30","6","Não","2021-06-15","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("89","8499.95","21.00","8520.95","6","Sim","2021-06-15","Enviado","JR3658885665",NULL,NULL);
INSERT INTO vendas VALUES("90","1699.99","0.00","1699.99","6","Sim","2021-06-16","Não Enviado",NULL,"Sim",NULL);
INSERT INTO vendas VALUES("91","324.89","0.00","324.89","6","Não","2021-06-16","Não Enviado",NULL,"Sim",NULL);
INSERT INTO vendas VALUES("92","214.99","0.00","214.99","6","Sim","2021-06-16","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("93","214.99","0.00","214.99","6","Não","2021-06-16","Não Enviado",NULL,"sim",NULL);
INSERT INTO vendas VALUES("94","1745.78","21.00","1766.78","6","Sim","2021-06-16","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("95","343.27","0.00","343.27","6","Não","2021-06-16","Não Enviado",NULL,"sim",NULL);
INSERT INTO vendas VALUES("96","1508.99","21.00","1529.99","6","Sim","2022-01-20","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("97","36.39","21.00","57.39","6","Sim","2022-10-31","Enviado","JR4545454",NULL,NULL);
INSERT INTO vendas VALUES("98","175.98","24.90","200.88","6","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("99","3615.57","21.00","3636.57","6","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("100","0.60","0.00","0.60","6","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("101","130.50","21.00","151.50","6","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("102","140.39","22.50","162.89","6","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("103","215.59","0.00","215.59","10","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("104","0.60","0.00","0.60","10","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("105","130.30","21.00","151.30","10","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("106","220.20","21.00","241.20","11","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("107","1700.39","21.00","1721.39","12","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("108","1914.98","21.00","1935.98","12","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("109","1699.99","21.00","1720.99","12","Não","2022-10-31","Não Enviado",NULL,NULL,"Sedex");
INSERT INTO vendas VALUES("110","0.40","0.00","0.40","12","Não","2022-10-31","Não Enviado",NULL,NULL,NULL);
INSERT INTO vendas VALUES("111","344.89","21.00","365.89","12","Não","2022-10-31","Não Enviado",NULL,NULL,"PAC");
INSERT INTO vendas VALUES("112","650.36","22.50","672.86","12","Não","2022-10-31","Não Enviado",NULL,NULL,"Sedex");
INSERT INTO vendas VALUES("113","695.36","24.20","719.56","12","Não","2022-10-31","Enviado","JR45454548",NULL,"PAC");
INSERT INTO vendas VALUES("114","1700.39","21.00","1721.39","6","Sim","2022-10-31","Enviado","JR4545454",NULL,"PAC");
INSERT INTO vendas VALUES("115","0.60","0.00","0.60","6","Não","2022-10-31","Não Enviado",NULL,"sim",NULL);
INSERT INTO vendas VALUES("116","1879.98","0.00","1879.98","6","Não","2022-10-31","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("117","1874.98","21.00","1895.98","6","Não","2022-10-31","Não Enviado",NULL,NULL,"Sedex");
INSERT INTO vendas VALUES("118","1879.98","21.00","1900.98","6","Não","2022-10-31","Enviado","JR4545454",NULL,"PAC");
INSERT INTO vendas VALUES("119","130.30","0.00","130.30","13","Não","2022-11-01","Retirada",NULL,NULL,NULL);
INSERT INTO vendas VALUES("120","760.98","58.40","819.38","14","Sim","2023-03-27","Não Enviado",NULL,NULL,"Sedex");
INSERT INTO vendas VALUES("127","760.98","58.40","819.38","14","Sim","2023-03-27","Não Enviado",NULL,NULL,"Sedex");


