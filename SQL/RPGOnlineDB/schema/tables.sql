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
