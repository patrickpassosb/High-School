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

INSERT INTO player (name, email, date_of_birth)
VALUES 
('Alice Johnson', 'alice.johnson@email.com', '1997-05-21'),
('Bruno Silva', 'bruno.silva@email.com', '1995-08-13'),
('Carla Mendes', 'carla.mendes@email.com', '1999-03-02'),
('Diego Torres', 'diego.torres@email.com', '1996-11-17'),
('Eduarda Almeida', 'eduarda.almeida@email.com', '1998-02-25');
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
