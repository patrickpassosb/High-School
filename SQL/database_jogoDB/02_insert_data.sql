INSERT INTO Jogador (NOME, EMAIL, DATA_NASCIMENTO)
VALUES 
('Alice Silva', 'alice@email.com', '1998-03-14'),
('Bruno Lima', 'bruno@email.com', '1995-06-22'),
('Carla Torres', 'carla@email.com', '2000-09-10'),
('Diego Souza', 'diego@email.com', '1992-12-05'),
('Eduarda Martins', 'eduarda@email.com', '1999-01-30'),
('Lucas Ferreira', 'lucasf@email.com', '1995-06-21'),
('Marina Costa', 'marina.costa@email.com', '2000-12-10'),
('Diego Almeida', 'diego.almeida@email.com', '1998-03-04'),
('Renata Souza', 'renata.souza@email.com', '1996-09-25'),
('Thiago Ramos', 'thiago.ramos@email.com', '1997-11-12');

-- Inserção de 10 personagens (Personagem)
INSERT INTO Personagem (JogadorID, NOME, Classe, Linguagem, Experiencia, Nivel, HP, CPU, STR, VIT, AGI, INT, PER, SaldoBTC)
VALUES 
(1, 'NeoCoder', 'Full Stack Developer', 'JavaScript', 500, 3, 120, 110, 5, 3, 4, 4, 2, 0.00150000),
(2, 'CryptoKnight', 'Blockchain Developer', 'Solidity', 800, 4, 140, 100, 6, 4, 4, 5, 3, 0.00230000),
(3, 'AIWanderer', 'Machine Learning Engineer', 'Python', 300, 2, 110, 120, 3, 2, 3, 6, 2, 0.00110000),
(4, 'BitMage', 'Data Scientist', 'Python', 1000, 5, 160, 130, 5, 4, 4, 7, 3, 0.00300000),
(5, 'StackSurfer', 'Software Engineer', 'C++', 200, 2, 100, 105, 4, 2, 4, 3, 2, 0.00090000),
(6, 'WebShadow', 'Web3 Developer', 'JavaScript', 650, 4, 130, 115, 5, 4, 5, 4, 4, 0.00180000),
(7, 'HackZero', 'Ethical Hacker', 'Python', 720, 4, 135, 100, 4, 4, 6, 6, 5, 0.00210000),
(8, 'IoTBringer', 'IoT Developer', 'C++', 450, 3, 115, 110, 3, 3, 3, 4, 2, 0.00120000),
(9, 'DataMiner', 'Data Analyst', 'SQL', 270, 2, 105, 100, 2, 3, 2, 5, 3, 0.00070000),
(10, 'DBApro', 'DBA', 'SQL', 950, 5, 150, 130, 4, 5, 3, 6, 4, 0.00290000);
