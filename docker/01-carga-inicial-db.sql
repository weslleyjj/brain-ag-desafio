----------- CULTURAS
INSERT INTO public.cultura
(id, nome)
VALUES(nextval('cultura_id_seq'::regclass), 'Soja');

INSERT INTO public.cultura
(id, nome)
VALUES(nextval('cultura_id_seq'::regclass), 'Milho');

INSERT INTO public.cultura
(id, nome)
VALUES(nextval('cultura_id_seq'::regclass), 'Algodão');

INSERT INTO public.cultura
(id, nome)
VALUES(nextval('cultura_id_seq'::regclass), 'Café');

INSERT INTO public.cultura
(id, nome)
VALUES(nextval('cultura_id_seq'::regclass), 'Cana de Açucar');

---------- PRODUTORES
INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'João Silva', 'Fazenda Feliz', 'Cidade Alegre', 'RN', 100, 80, 20, '12345678912');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Maria Oliveira', 'Fazenda Esperança', 'Cidade Tranquila', 'SP', 150, 120, 30, '98765432132');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Carlos Rocha', 'Fazenda Harmonia', 'Cidade Serena', 'SP', 80, 60, 20, '45678901265');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Ana Souza', 'Fazenda Vista Verde', 'Cidade Sossegada', 'PB', 120, 90, 30, '123456789000101');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Ricardo Santos', 'Fazenda Sol Nascente', 'Cidade Tranquilidade', 'CE', 200, 160, 40, '987654321000202');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Fernanda Lima', 'Fazenda Florescer', 'Cidade Paz', 'AM', 90, 70, 20, '234567890000303');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Roberto Castro', 'Fazenda Bela Vista', 'Cidade Serenidade', 'SC', 180, 140, 40, '876543210000404');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Mariana Mendes', 'Fazenda Aurora', 'Cidade Calma', 'RJ', 110, 80, 30, '345678901000505');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Luis Oliveira', 'Fazenda São João', 'Cidade Aconchegante', 'MT', 150, 120, 30, '12345678901');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Camila Pereira', 'Fazenda Nova Esperança', 'Cidade Tranquila', 'MS', 130, 100, 30, '98765432102');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Lucas Silva', 'Fazenda Harmonia', 'Cidade Serena', 'AC', 80, 60, 20, '23456789003');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Mariana Costa', 'Fazenda Primavera', 'Cidade Paz', 'RS', 110, 80, 30, '87654321004');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Rafaela Martins', 'Fazenda Sol Nascente', 'Cidade Sossegada', 'GO', 200, 160, 40, '34567890105');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Lucas Lima', 'Fazenda Dos Indios', 'Cidade Paz', 'AM', 290, 270, 20, '234567890000303');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Roberto Carlos', 'Fazenda Boa água', 'Cidade Aguada', 'AM', 180, 140, 40, '876543210000404');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Mariana Mendonça', 'Fazenda Mangueira', 'Cidade Doce', 'AM', 210, 180, 30, '345678901000505');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Luis Almir', 'Fazenda Noticia', 'Cidade Segura', 'MT', 250, 220, 30, '12345678901');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Camila Cabelo', 'Fazenda Picuí', 'Cidade Preguiça', 'MS', 230, 100, 130, '98765432102');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Jodeilson Silva', 'Fazenda Rica', 'Cidade Serena', 'AC', 180, 160, 20, '23456789003');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Mariana De Costas', 'Fazenda Maria', 'Cidade sem Paz', 'RS', 210, 180, 30, '87654321004');

INSERT INTO public.produtor
(id, nome, fazenda, cidade, estado, "areaTotal", "areaAgricultavel", "areaDeVegetacao", documento)
VALUES
(nextval('produtor_id_seq'::regclass), 'Rafaela Tocantins', 'Fazenda Longe', 'Cidade Infinita', 'GO', 300, 260, 40, '34567890105');



-- VINCULANDO AS CULTURAS

INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(1, 3);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(1, 1);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(1, 2);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(2, 5);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(2, 4);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(2, 2);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(3, 2);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(3, 1);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(4, 4);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(4, 3);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(4, 2);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(4, 5);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(5, 1);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(5, 5);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(6, 3);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(6, 2);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(7, 5);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(7, 1);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(8, 2);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(8, 3);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(9, 4);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(10, 1);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(11, 1);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(12, 4);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(12, 3);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(12, 5);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(13, 2);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(14, 5);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(14, 4);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(14, 1);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(14, 2);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(15, 3);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(16, 1);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(16, 4);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(16, 2);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(17, 5);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(18, 2);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(18, 3);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(18, 1);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(19, 4);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(20, 3);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(20, 4);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(20, 5);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(20, 1);
INSERT INTO public.produtor_culturas_cultura
("produtorId", "culturaId")
VALUES(21, 3);
