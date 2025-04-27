-- Create database
CREATE DATABASE RPGOnlineDB;
GO

-- Use the database
USE RPGOnlineDB;
GO


-- Create table for programming languages
CREATE TABLE language (
    language_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(35) NOT NULL UNIQUE
);
GO

-- Create table for character classes
CREATE TABLE class (
    class_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL UNIQUE
);
GO

-- Insert basic languages
INSERT INTO language (name)
VALUES 
('Python'),
('JavaScript'),
('Solidity'),
('C++'),
('SQL');
GO

-- Insert basic classes
INSERT INTO class (name)
VALUES 
('DBA'),
('Machine Learning Engineer'),
('Software Engineer'),
('Game Developer'),
('Full Stack Developer'),
('IoT Developer'),
('Web3 Developer'),
('Blockchain Developer'),
('Data Scientist'),
('Ethical Hacker'),
('Data Analyst');
GO


-- Table: player
CREATE TABLE player (
    player_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL,
    email NVARCHAR(100) NOT NULL UNIQUE,
    date_created DATETIME2(0) DEFAULT SYSDATETIME(),
    date_of_birth DATE NOT NULL
);
GO

-- Table: character
CREATE TABLE character (
    character_id INT PRIMARY KEY IDENTITY(1,1),
    player_id INT NOT NULL,
    name NVARCHAR(50) NOT NULL,
    class_id INT NOT NULL,
    language_id INT NOT NULL,
    experience INT DEFAULT 0,
    level INT DEFAULT 1,
    hp INT DEFAULT 100,
    cpu INT DEFAULT 100,
    strength INT DEFAULT 1,
    vitality INT DEFAULT 1,
    agility INT DEFAULT 1,
    intelligence INT DEFAULT 1,
    perception INT DEFAULT 1,
    balance_btc DECIMAL(16,8) DEFAULT 0.00000000 CHECK (balance_btc <= 21000000.00000000),
    date_created DATETIME2(0) DEFAULT SYSDATETIME(),
    
    FOREIGN KEY (player_id) REFERENCES player(player_id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES class(class_id),
    FOREIGN KEY (language_id) REFERENCES language(language_id)
);
GO

-- Table: mission
CREATE TABLE mission (
    mission_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    description NVARCHAR(1000),
    recommended_level INT DEFAULT 1,
    reward_btc DECIMAL(16,8) DEFAULT 0.00000000 CHECK (reward_btc <= 21000000.00000000),
    experience_gain INT DEFAULT 100,
    date_created DATETIME2(0) DEFAULT SYSDATETIME()
);
GO

-- Table: language_mission (instead of personagem_missao)
CREATE TABLE language_mission (
    language_id INT NOT NULL,
    mission_id INT NOT NULL,
    PRIMARY KEY (language_id, mission_id),
    FOREIGN KEY (language_id) REFERENCES language(language_id),
    FOREIGN KEY (mission_id) REFERENCES mission(mission_id)  ON DELETE CASCADE
);
GO

-- Table: item
CREATE TABLE item (
    item_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL,
    description NVARCHAR(1000),
    type NVARCHAR(35) NOT NULL CHECK (type IN ('Consumable', 'Equipment', 'Special')),
    value_btc DECIMAL(16,8) DEFAULT 0.00000000 CHECK (value_btc <= 21000000.00000000),
    bonus_strength INT DEFAULT 0,
    bonus_vitality INT DEFAULT 0,
    bonus_agility INT DEFAULT 0,
    bonus_intelligence INT DEFAULT 0,
    bonus_perception INT DEFAULT 0,
    durability INT DEFAULT 100,
    date_created DATETIME2(0) DEFAULT SYSDATETIME()
);
GO

-- Table: inventory
CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY IDENTITY(1,1),
    character_id INT NOT NULL,
    item_id INT NOT NULL, -- (still NOT NULL ✅)
    quantity INT DEFAULT 1 CHECK (quantity >= 0),
    date_acquired DATETIME2(0) DEFAULT SYSDATETIME(),
    
    FOREIGN KEY (character_id) REFERENCES character(character_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES item(item_id) ON DELETE CASCADE
);
GO

INSERT INTO player (name, email, date_of_birth)
VALUES 
('Alice Johnson', 'alice.johnson@email.com', '1997-05-21'),
('Bruno Silva', 'bruno.silva@email.com', '1995-08-13'),
('Carla Mendes', 'carla.mendes@email.com', '1999-03-02'),
('Diego Torres', 'diego.torres@email.com', '1996-11-17'),
('Eduarda Almeida', 'eduarda.almeida@email.com', '1998-02-25');
GO

CREATE PROCEDURE sp_insert_character_by_name
    @player_id INT,
    @character_name NVARCHAR(50),
    @class_name NVARCHAR(50),
    @language_name NVARCHAR(35),
    @experience INT = 0,
    @level INT = 1
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @class_id INT;
    DECLARE @language_id INT;

    -- Find class_id
    SELECT @class_id = class_id
    FROM class
    WHERE name = @class_name;

    -- Find language_id
    SELECT @language_id = language_id
    FROM language
    WHERE name = @language_name;

    -- Insert into character
    INSERT INTO character (player_id, name, class_id, language_id, experience, level)
    VALUES (@player_id, @character_name, @class_id, @language_id, @experience, @level);
END;
GO



EXEC sp_insert_character_by_name 
    @player_id = 1,
    @character_name = 'NeoCoder',
    @class_name = 'Full Stack Developer',
    @language_name = 'JavaScript',
    @experience = 500,
    @level = 3;
GO

EXEC sp_insert_character_by_name 
    @player_id = 1,
    @character_name = 'CryptoKnight',
    @class_name = 'Blockchain Developer',
    @language_name = 'Solidity',
    @experience = 800,
    @level = 4;
GO

EXEC sp_insert_character_by_name 
    @player_id = 2,
    @character_name = 'AIWanderer',
    @class_name = 'Machine Learning Engineer',
    @language_name = 'Python',
    @experience = 300,
    @level = 2;
GO

EXEC sp_insert_character_by_name 
    @player_id = 2,
    @character_name = 'BitMage',
    @class_name = 'Data Scientist',
    @language_name = 'Python',
    @experience = 1000,
    @level = 5;
GO

EXEC sp_insert_character_by_name 
    @player_id = 3,
    @character_name = 'StackSurfer',
    @class_name = 'Software Engineer',
    @language_name = 'C++',
    @experience = 200,
    @level = 2;
GO

EXEC sp_insert_character_by_name 
    @player_id = 3,
    @character_name = 'WebShadow',
    @class_name = 'Web3 Developer',
    @language_name = 'JavaScript',
    @experience = 650,
    @level = 4;
GO

EXEC sp_insert_character_by_name 
    @player_id = 4,
    @character_name = 'HackZero',
    @class_name = 'Ethical Hacker',
    @language_name = 'Python',
    @experience = 720,
    @level = 4;
GO

EXEC sp_insert_character_by_name 
    @player_id = 4,
    @character_name = 'IoTBringer',
    @class_name = 'IoT Developer',
    @language_name = 'C++',
    @experience = 450,
    @level = 3;
GO

EXEC sp_insert_character_by_name 
    @player_id = 5,
    @character_name = 'DataMiner',
    @class_name = 'Data Analyst',
    @language_name = 'SQL',
    @experience = 270,
    @level = 2;
GO

EXEC sp_insert_character_by_name 
    @player_id = 5,
    @character_name = 'DBApro',
    @class_name = 'DBA',
    @language_name = 'SQL',
    @experience = 950,
    @level = 5;
GO

INSERT INTO mission (name, description, recommended_level, reward_btc, experience_gain)
VALUES 
('Develop Your First Backend', 'Create a backend server using your selected programming language.', 1, 0.00050000, 100),
('Smart Contract Deployment', 'Deploy your first smart contract on a test blockchain.', 3, 0.00120000, 250),
('Build a Web App', 'Develop a complete web application with frontend and backend.', 2, 0.00080000, 150),
('Data Analysis Challenge', 'Analyze a large dataset and generate key insights.', 2, 0.00070000, 180),
('IoT Smart Home Project', 'Create an IoT project simulating smart home devices.', 3, 0.00100000, 220),
('Penetration Test Simulation', 'Perform an ethical hacking simulation on a secure server.', 4, 0.00150000, 300);
GO


-- Mission 1: Develop Your First Backend
INSERT INTO language_mission (language_id, mission_id)
VALUES 
((SELECT language_id FROM language WHERE name = 'Python'), 1),
((SELECT language_id FROM language WHERE name = 'JavaScript'), 1),
((SELECT language_id FROM language WHERE name = 'C++'), 1);

-- Mission 2: Smart Contract Deployment
INSERT INTO language_mission (language_id, mission_id)
VALUES 
((SELECT language_id FROM language WHERE name = 'Solidity'), 2);

-- Mission 3: Build a Web App
INSERT INTO language_mission (language_id, mission_id)
VALUES 
((SELECT language_id FROM language WHERE name = 'JavaScript'), 3),
((SELECT language_id FROM language WHERE name = 'Python'), 3);

-- Mission 4: Data Analysis Challenge
INSERT INTO language_mission (language_id, mission_id)
VALUES 
((SELECT language_id FROM language WHERE name = 'Python'), 4),
((SELECT language_id FROM language WHERE name = 'SQL'), 4);

-- Mission 5: IoT Smart Home Project
INSERT INTO language_mission (language_id, mission_id)
VALUES 
((SELECT language_id FROM language WHERE name = 'C++'), 5),
((SELECT language_id FROM language WHERE name = 'Python'), 5);

-- Mission 6: Penetration Test Simulation
INSERT INTO language_mission (language_id, mission_id)
VALUES 
((SELECT language_id FROM language WHERE name = 'Python'), 6);
GO

INSERT INTO item (name, description, type, value_btc, bonus_strength, bonus_vitality, bonus_agility, bonus_intelligence, bonus_perception, durability)
VALUES 
('Health Patch', 'Consumable patch to instantly restore CPU.', 'Consumable', 0.00010000, 0, 10, 0, 0, 0, 1),
('Debugger Shield', 'A shield that defends against bugs.', 'Equipment', 0.00080000, 0, 20, 0, 0, 2, 150),
('Code Sword', 'A sword crafted from the finest algorithms.', 'Equipment', 0.00120000, 10, 0, 5, 0, 0, 200),
('Smart Glasses', 'Enhances perception and intelligence.', 'Equipment', 0.00100000, 0, 0, 0, 5, 8, 120),
('Quantum Chip', 'A rare item that boosts all abilities.', 'Special', 0.00500000, 5, 5, 5, 5, 5, 1),
('SQL Tome', 'An ancient book that boosts database mastery.', 'Equipment', 0.00090000, 0, 0, 0, 8, 4, 100),
('IoT Drone', 'A support drone that improves agility.', 'Equipment', 0.00110000, 0, 0, 10, 0, 0, 150),
('AI NanoPotion', 'A consumable that temporarily boosts intelligence.', 'Consumable', 0.00030000, 0, 0, 0, 7, 0, 1);
GO


-- Character 1: NeoCoder
INSERT INTO inventory (character_id, item_id, quantity)
VALUES (1, 1, 2), -- Health Patch
       (1, 3, 1); -- Code Sword
GO

-- Character 2: CryptoKnight
INSERT INTO inventory (character_id, item_id, quantity)
VALUES (2, 5, 1); -- Quantum Chip
GO

-- Character 3: AIWanderer
INSERT INTO inventory (character_id, item_id, quantity)
VALUES (3, 8, 2); -- AI NanoPotion
GO

-- Character 4: BitMage
INSERT INTO inventory (character_id, item_id, quantity)
VALUES (4, 6, 1); -- SQL Tome
GO

-- Character 5: StackSurfer
INSERT INTO inventory (character_id, item_id, quantity)
VALUES (5, 2, 1); -- Debugger Shield
GO

-- Character 6: WebShadow
INSERT INTO inventory (character_id, item_id, quantity)
VALUES (6, 4, 1); -- Smart Glasses
GO

-- Character 7: HackZero
INSERT INTO inventory (character_id, item_id, quantity)
VALUES (7, 1, 3); -- Health Patch
GO

-- Character 8: IoTBringer
INSERT INTO inventory (character_id, item_id, quantity)
VALUES (8, 7, 1); -- IoT Drone
GO

-- Character 9: DataMiner
INSERT INTO inventory (character_id, item_id, quantity)
VALUES (9, 6, 1); -- SQL Tome
GO

-- Character 10: DBApro
INSERT INTO inventory (character_id, item_id, quantity)
VALUES (10, 5, 1); -- Quantum Chip
GO

SELECT 
    c.character_id,
    p.name AS player_name,
    c.name AS character_name,
    cl.name AS class_name,
    l.name AS language_name,
    c.level,
    c.experience
FROM 
    character c
JOIN player p ON c.player_id = p.player_id
JOIN class cl ON c.class_id = cl.class_id
JOIN language l ON c.language_id = l.language_id
ORDER BY p.name, c.name;
GO


SELECT 
    c.name AS character_name,
    c.level,
    p.name AS player_name
FROM 
    character c
JOIN player p ON c.player_id = p.player_id
WHERE 
    c.level >= 4
ORDER BY c.level DESC;
GO


SELECT 
    p.name AS player_name,
    COUNT(c.character_id) AS total_characters
FROM 
    player p
LEFT JOIN character c ON p.player_id = c.player_id
GROUP BY 
    p.name
ORDER BY total_characters DESC;
GO


SELECT 
    p.name AS player_name,
    SUM(c.balance_btc) AS total_btc_balance
FROM 
    player p
JOIN character c ON p.player_id = c.player_id
GROUP BY 
    p.name
ORDER BY total_btc_balance DESC;
GO

SELECT 
    c.name AS character_name,
    i.name AS item_name,
    inv.quantity
FROM 
    inventory inv
JOIN character c ON inv.character_id = c.character_id
JOIN item i ON inv.item_id = i.item_id
ORDER BY c.name, i.name;
GO

-- Backup the RPGOnlineDB database
BACKUP DATABASE RPGOnlineDB
TO DISK = 'C:\SQLBackups\RPGOnlineDB_backup.bak'
WITH FORMAT, 
     MEDIANAME = 'RPGOnlineDBBackup',
     NAME = 'Full Backup of RPGOnlineDB';
GO

-- Restore the RPGOnlineDB database
RESTORE DATABASE RPGOnlineDB_Restore
FROM DISK = 'C:\SQLBackups\RPGOnlineDB_backup.bak'
WITH MOVE 'RPGOnlineDB' TO 'C:\SQLBackups\RPGOnlineDB_Restore.mdf',
     MOVE 'RPGOnlineDB_log' TO 'C:\SQLBackups\RPGOnlineDB_Restore.ldf',
     REPLACE;
GO


-- Create a login for the SQL Server
CREATE LOGIN game_reader
WITH PASSWORD = 'StrongPassword123!';
GO

-- Create a user inside the database
USE RPGOnlineDB;
GO

CREATE USER game_reader FOR LOGIN game_reader;
GO

-- Grant only SELECT permission on specific tables
GRANT SELECT ON player TO game_reader;
GRANT SELECT ON mission TO game_reader;
GO
