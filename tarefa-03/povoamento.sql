INSERT INTO autores (nome, pais, ano_nascimento) VALUES
('Franz Kafka', 'República Tcheca', 1883),
('George Orwell', 'Inglaterra', 1903),
('Jorge Luis Borges', 'Argentina', 1899),
('Victor Hugo', 'França', 1802),
('Haruki Murakami', 'Japão', 1949),
('Chimamanda Ngozi Adichie', 'Nigéria', 1977),
('William Shakespeare', 'Inglaterra', 1564),
('Miguel de Cervantes', 'Espanha', 1547),
('Fiódor Dostoiévski', 'Rússia', 1821),
('José Saramago', 'Portugal', 1922);

INSERT INTO livros (titulo, ano_publicacao, preco, autor_id) VALUES
-- Machado de Assis (ID 1)
('Quincas Borba', 1891, 42.90, 1),
('Memorial de Aires', 1908, 39.90, 1),

-- Clarice Lispector (ID 2)
('Perto do Coração Selvagem', 1943, 44.90, 2),
('Laços de Família', 1960, 36.90, 2),

-- Gabriel García Márquez (ID 3)
('O Amor nos Tempos do Cólera', 1985, 54.90, 3),
('Crônica de uma Morte Anunciada', 1981, 42.90, 3),

-- Jane Austen (ID 4)
('Razão e Sensibilidade', 1811, 39.90, 4),
('Emma', 1815, 45.90, 4),

-- Franz Kafka (ID 15)
('A Metamorfose', 1915, 34.90, 15),
('O Processo', 1925, 49.90, 15),

-- George Orwell (ID 16)
('A Revolução dos Bichos', 1945, 39.90, 16),
('1984', 1949, 49.90, 16),

-- Jorge Luis Borges (ID 17)
('Ficções', 1944, 44.90, 17),
('O Aleph', 1949, 39.90, 17),

-- Victor Hugo (ID 18)
('Os Miseráveis', 1862, 69.90, 18),
('O Corcunda de Notre-Dame', 1831, 59.90, 18),

-- Haruki Murakami (ID 19)
('Norwegian Wood', 1987, 54.90, 19),
('Kafka à Beira-Mar', 2002, 64.90, 19),

-- Chimamanda Ngozi Adichie (ID 20)
('Americanah', 2013, 59.90, 20),
('Meio Sol Amarelo', 2006, 54.90, 20),

-- William Shakespeare (ID 21)
('Hamlet', 1603, 39.90, 21),
('Romeu e Julieta', 1597, 35.90, 21),

-- Miguel de Cervantes (ID 22)
('Dom Quixote - Parte I', 1605, 59.90, 22),
('Dom Quixote - Parte II', 1615, 54.90, 22),

-- Fiódor Dostoiévski (ID 23)
('Crime e Castigo', 1866, 49.90, 23),
('Os Irmãos Karamázov', 1880, 64.90, 23),

-- José Saramago (ID 24)
('Ensaio sobre a Cegueira', 1995, 54.90, 24),
('Memorial do Convento', 1982, 49.90, 24);
