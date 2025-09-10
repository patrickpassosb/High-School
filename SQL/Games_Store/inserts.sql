-- =============================
-- 1. Suppliers
-- =============================
INSERT INTO Fornecedores (Name, Contact_phone, Contact_email, Address) VALUES
('Sony', '1111-1111', 'contact@sony.com', 'Tokyo, Japan'),
('Microsoft', '2222-2222', 'contact@microsoft.com', 'Redmond, USA'),
('Nintendo', '3333-3333', 'contact@nintendo.com', 'Kyoto, Japan'),
('Razer', '4444-4444', 'contact@razer.com', 'Singapore'),
('Corsair', '5555-5555', 'contact@corsair.com', 'Fremont, USA');

-- =============================
-- 2. Main Categories
-- =============================
INSERT INTO Product_Categories (Category_Name, Parent_Category_ID) VALUES
('Games', NULL),
('Accessories/Peripherals', NULL),
('Consoles', NULL),
('PCs/Components', NULL);

-- =============================
-- 3. Subcategories of Accessories/Peripherals
-- =============================
INSERT INTO Product_Categories (Category_Name, Parent_Category_ID) VALUES
('Keyboards', 2),    -- child of Accessories
('Mice', 2),
('Gaming Chair', 2),
('Monitor', 2);

-- =============================
-- 4. Subcategories of Consoles
-- =============================
INSERT INTO Product_Categories (Category_Name, Parent_Category_ID) VALUES
('Sony', 3),
('Nintendo', 3),
('Microsoft', 3);

-- Sub-subcategories
INSERT INTO Product_Categories (Category_Name, Parent_Category_ID) VALUES
('PS4', 5),   -- child of Sony
('PS5', 5),
('Switch', 6), 
('Xbox One', 7),
('Xbox Series X', 7);

-- =============================
-- 5. Subcategories of PCs/Components
-- =============================
INSERT INTO Product_Categories (Category_Name, Parent_Category_ID) VALUES
('Cooler', 4);

-- =============================
-- 6. Products (examples by category)
-- =============================

-- Games
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES 
(1, 1, 'God of War Ragnarok', 299.90, 'Action/Adventure PS5 game', 50, 5),
(2, 1, 'Halo Infinite', 249.90, 'Shooter for Xbox Series X', 40, 5),
(3, 1, 'The Legend of Zelda: Breath of the Wild', 299.90, 'Adventure game for Nintendo Switch', 30, 3);

-- Keyboards
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(4, 8, 'Razer BlackWidow V3', 899.90, 'Mechanical gaming keyboard', 20, 3),
(5, 8, 'Corsair K95 RGB', 999.90, 'Premium mechanical keyboard', 15, 2);

-- Mouse
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(4, 9, 'Razer DeathAdder', 399.90, 'Ergonomic gaming mouse', 25, 5),
(5, 9, 'Corsair M65 Elite', 449.90, 'FPS mouse with sniper button', 20, 4);

-- Gaming Chairs
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(5, 10, 'Corsair T3 Rush', 1599.90, 'Ergonomic gaming chair', 10, 2);

-- Monitors
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(4, 11, 'Razer Raptor 27', 3499.90, 'Gaming monitor 144Hz', 8, 1);

-- Sony Consoles
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(1, 12, 'PlayStation 4 Slim 1TB', 1999.90, 'PS4 console with 1TB HDD', 12, 2),
(1, 13, 'PlayStation 5', 3999.90, 'PS5 console with ultra-fast SSD', 10, 2);

-- Nintendo Consoles
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(3, 14, 'Nintendo Switch OLED', 2499.90, 'Hybrid console with OLED display', 15, 3);

-- Microsoft Consoles
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(2, 15, 'Xbox One S', 1599.90, 'Microsoft Xbox One console', 8, 2),
(2, 16, 'Xbox Series X', 3899.90, 'Next-gen Xbox console', 12, 2);

-- Cooler
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(5, 17, 'Corsair Hydro Series H100i', 899.90, 'Liquid CPU cooler', 18, 4);
