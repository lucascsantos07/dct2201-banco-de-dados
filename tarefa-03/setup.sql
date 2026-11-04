-- ============================================
-- SCRIPT DE CONFIGURACAO DO BANCO BIBLIOTECA
-- ============================================

-- 1. Remocao dos usuarios, caso ja existam
DROP USER IF EXISTS 'app_biblioteca'@'%';
DROP USER IF EXISTS 'consulta'@'%';

-- 2. Remocao e recriacao do banco
DROP DATABASE IF EXISTS biblioteca;

CREATE DATABASE biblioteca
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci;

USE biblioteca;

-- 3. Criacao da tabela autores
CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    pais VARCHAR(50),
    ano_nascimento INT
);

-- 4. Criacao da tabela livros
CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT,
    preco DECIMAL(10,2),
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);

-- 5. Criacao da tabela emprestimos
CREATE TABLE emprestimos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro_id INT,
    data_emprestimo DATE,
    devolvido BOOLEAN,
    CONSTRAINT fk_emprestimos_livros
        FOREIGN KEY (livro_id) REFERENCES livros(id)
);

-- 6. Cadastro dos autores
INSERT INTO autores (nome, pais, ano_nascimento) VALUES
('Machado de Assis', 'Brasil', 1839),
('Clarice Lispector', 'Brasil', 1920),
('Gabriel García Márquez', 'Colômbia', 1927),
('Jane Austen', 'Inglaterra', 1775),
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

-- 7. Cadastro dos livros
INSERT INTO livros (titulo, ano_publicacao, preco, autor_id) VALUES
('Dom Casmurro', 1899, 39.90, 1),
('Memórias Póstumas de Brás Cubas', 1881, 45.00, 1),
('A Hora da Estrela', 1977, 32.50, 2),
('Cem Anos de Solidão', 1967, 59.90, 3),
('Orgulho e Preconceito', 1813, 29.90, 4),

('Quincas Borba', 1891, 42.90, 1),
('Memorial de Aires', 1908, 39.90, 1),
('Perto do Coração Selvagem', 1943, 44.90, 2),
('Laços de Família', 1960, 36.90, 2),
('O Amor nos Tempos do Cólera', 1985, 54.90, 3),
('Crônica de uma Morte Anunciada', 1981, 42.90, 3),
('Razão e Sensibilidade', 1811, 39.90, 4),
('Emma', 1815, 45.90, 4),
('A Metamorfose', 1915, 34.90, 5),
('O Processo', 1925, 49.90, 5),
('A Revolução dos Bichos', 1945, 39.90, 6),
('1984', 1949, 49.90, 6),
('Ficções', 1944, 44.90, 7),
('O Aleph', 1949, 39.90, 7),
('Os Miseráveis', 1862, 69.90, 8),
('O Corcunda de Notre-Dame', 1831, 59.90, 8),
('Norwegian Wood', 1987, 54.90, 9),
('Kafka à Beira-Mar', 2002, 64.90, 9),
('Americanah', 2013, 59.90, 10),
('Meio Sol Amarelo', 2006, 54.90, 10),
('Hamlet', 1603, 39.90, 11),
('Romeu e Julieta', 1597, 35.90, 11),
('Dom Quixote - Parte I', 1605, 59.90, 12),
('Dom Quixote - Parte II', 1615, 54.90, 12),
('Crime e Castigo', 1866, 49.90, 13),
('Os Irmãos Karamázov', 1880, 64.90, 13),
('Ensaio sobre a Cegueira', 1995, 54.90, 14),
('Memorial do Convento', 1982, 49.90, 14);

-- 8. Cadastro dos emprestimos
INSERT INTO emprestimos (livro_id, data_emprestimo, devolvido) VALUES
(1, '2026-10-20', FALSE),
(2, '2026-10-22', FALSE),
(3, '2026-10-25', TRUE);

-- 9. Criacao dos usuarios
CREATE USER 'app_biblioteca'@'%'
    IDENTIFIED BY 'AppBib2026!';

CREATE USER 'consulta'@'%'
    IDENTIFIED BY 'Consulta2026!';

-- 10. Concessao dos privilegios
GRANT SELECT, INSERT, UPDATE, DELETE
    ON biblioteca.*
    TO 'app_biblioteca'@'%';

GRANT SELECT
    ON biblioteca.*
    TO 'consulta'@'%';

-- 11. Atualizacao dos privilegios
FLUSH PRIVILEGES;

-- ============================================
-- FIM DO SCRIPT
-- ============================================