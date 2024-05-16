DROP TABLE IF EXISTS demo;
DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS produtos;

create table usuarios (
  id int PRIMARY KEY,
  nome varchar(100) NOT NULL,
  email varchar(100) NOT NULL UNIQUE
);

INSERT INTO usuarios(id, nome, email) VALUES (1, 'Teste Start', 'start@challenge.com');
INSERT INTO usuarios(id, nome, email) VALUES(2, 'Fulano de Tal', 'fulano@qa.com');
INSERT INTO usuarios(id, nome, email) VALUES(3, 'Carlos João', 'carlosjoao@qa.com');
INSERT INTO usuarios(id, nome, email) VALUES(4, 'Ghost Silva', 'ghost_silva@fantasma.com');
INSERT INTO usuarios(id, nome, email) VALUES(5, 'Peter Parker', 'peterparker@marvel.com');
INSERT INTO usuarios(id, nome, email) VALUES(6, 'Maria Aparecida', 'mariaaparecida@qa.com');
INSERT INTO usuarios(id, nome, email) VALUES(7, 'Sebastião Levi Nunes', 'sebastiao123@teste.com');
INSERT INTO usuarios(id, nome, email) VALUES(8, 'Maitê Giovana Regina Lopes', 'maite-lopes90@outershoes.com.br');
INSERT INTO usuarios(id, nome, email) VALUES(9, 'Filipe Renato Ribeiro', 'filipe.renato.ribeiro@cdcd.com.br');
INSERT INTO usuarios(id, nome, email) VALUES(10, 'Lucca Ryan Jesus', 'lucca_ryan_jesus@imoveisvillani.com.br');
INSERT INTO usuarios(id, nome, email) VALUES(11, 'Raimunda Luana Fabiana Nascimento', 'raimunda-nascimento98@cressem.com.br');
INSERT INTO usuarios(id, nome, email) VALUES(12, 'Luana Marina Araújo', 'luana-araujo72@expressotaubate.com.br');
INSERT INTO usuarios(id, nome, email) VALUES(13, 'Bruce Wayne', 'brucewayne@gothan.com');
INSERT INTO usuarios(id, nome, email) VALUES(14, 'Carla Mariah dos Santos', 'carla_dossantos@ept.com.br');
INSERT INTO usuarios(id, nome, email) VALUES(15, 'Jennifer Agatha Pires', 'jennifer.agatha.pires@macroengenharia.com');
INSERT INTO usuarios(id, nome, email) VALUES(16, 'Luan Anderson Gonçalves', 'luan_goncalves@moncoes.com.br');

create table produtos (
  id int PRIMARY KEY,
  nome varchar(100) NOT NULL,
  categoria varchar(100) NOT NULL,
  preco float NOT NULL,
  descricao varchar(100)
);

INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (1, 'teste', 'start', 10, 'Start Challenge.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (2, 'batata', 'frutas', 10, 'Batata rosa.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (3, 'adesivo', 'utilitários', 0, 'Adesivo com precificação para produtos.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (4, 'caneca', 'utilitários', 0, 'Caneca para café.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (5, 'caneca chopp', 'utilitários', 25.50, '');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (6, 'copo grande térmico', 'utilitários', 35.90, '');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (7, 'mouse gamer', 'games', 101, 'Mouse com leds.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (8, 'teclado gamer', 'games', 99, 'Teclado com leds.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (9, 'monitor gamer', 'games', 1500, 'Monitor grande para jogar.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (10, 'jogo batman', 'games', 150, 'Jogo do Batman para PC.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (11, 'jogo tomb raider', 'games', 100, 'Jogo Tomb Raider para PC.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (12, 'jogo spider-man', 'games', 200, 'Jogo Spider-man para PS4.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (13, 'jogo pac-man', 'games', 180, 'Jogo Pac-man para Xbox One.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (14, 'guarda-roupas lady bug', 'casa', 2500, 'Guarda-roupas gigante da Lady Bug.');
INSERT INTO produtos(id, nome, categoria, preco, descricao) VALUES (15, 'cama solteiro', 'casa', 1800, 'Cama box solteiro.');

/*Resolvendo a atividade*/
--Busca tabela usuarios
--Questao 1) Realizar uma consulta que conte o número de registros na tabela.
-- Contagem de registros na tabela usuarios
SELECT COUNT(*) AS total_usuarios FROM usuarios;

-- Contagem de registros na tabela produtos
SELECT COUNT(*) AS total_produtos FROM produtos;

--Questao 2)  Realizar uma consulta para encontrar o usuário com o id 10.
SELECT * FROM usuarios WHERE id=10;

--Questao 3) Realizar uma consulta para encontrar o usuário com o nome "Bruce Wayne"
SELECT * FROM usuarios WHERE nome='Bruce Wayne';

--Questa0 4) Realizar uma consulta para encontrar o usuário com o e-mail "ghost_silva@fantasma.com".
SELECT * FROM usuarios WHERE email = 'ghost_silva@fantasma.com';

--Questao 5) Realizar uma consulta para deletar o usuário com e-mail "peterparker@marvel.com".
DELETE FROM usuarios WHERE email = 'peterparker@marvel.com';

--Busca tabela prprodutos
--Questao 1) Realizar uma consulta que apresente produtos com descrição vazia.
SELECT * FROM produtos WHERE descricao= '';

--Questao 2)  Realizar uma consulta que apresente produtos com a categoria "games";
SELECT * FROM produtos WHERE categoria = 'games';

--Questao 3)  Realizar uma consulta que apresente produtos com preço "0";
SELECT * from produtos WHERE preco= 0;

--Questao 4) Realizar uma consulta que apresente produtos com o preço maior que "100.00";
SELECT * FROM produtos WHERE preco > 100;

--Questao 5) Realizar uma consulta que apresente produtos com o preço entre "1000.00" e "2000.00";
SELECT * FROM produtos WHERE preco >=1000 and preco <= 2000;

--Questao 6) Realizar uma consulta que apresente produtos em que o nome contenha a palavra "jogo";
SELECT * FROM produtos WHERE nome LIKE '%jogo%';