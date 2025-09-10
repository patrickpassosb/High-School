-- =============================
-- 1. Fornecedores
-- =============================
INSERT INTO Fornecedores (Name, Contact_phone, Contact_email, Address) VALUES
('Sony', '1111-1111', 'contact@sony.com', 'Tokyo, Japan'),
('Microsoft', '2222-2222', 'contact@microsoft.com', 'Redmond, USA'),
('Nintendo', '3333-3333', 'contact@nintendo.com', 'Kyoto, Japan'),
('Razer', '4444-4444', 'contact@razer.com', 'Singapore'),
('Corsair', '5555-5555', 'contact@corsair.com', 'Fremont, USA');

-- =============================
-- 2. Categorias principais
-- =============================
INSERT INTO Product_Categories (Category_Name, Parent_Category_ID) VALUES
('Jogos', NULL),
('Acessórios/Periféricos', NULL),
('Consoles', NULL),
('PCs/Componentes', NULL);

-- =============================
-- 3. Subcategorias de Acessórios/Periféricos
-- =============================
INSERT INTO Product_Categories (Category_Name, Parent_Category_ID) VALUES
('Teclados', 2),    -- filho de Acessórios
('Mouses', 2),
('Cadeira Gamer', 2),
('Monitor', 2);

-- =============================
-- 4. Subcategorias de Consoles
-- =============================
INSERT INTO Product_Categories (Category_Name, Parent_Category_ID) VALUES
('Sony', 3),
('Nintendo', 3),
('Microsoft', 3);

-- Sub-subcategorias
INSERT INTO Product_Categories (Category_Name, Parent_Category_ID) VALUES
('PS4', 5),   -- filho de Sony
('PS5', 5),
('Switch', 6), 
('Xbox One', 7),
('Xbox Series X', 7);

-- =============================
-- 5. Subcategorias de PCs/Componentes
-- =============================
INSERT INTO Product_Categories (Category_Name, Parent_Category_ID) VALUES
('Cooler', 4);

-- =============================
-- 6. Produtos (exemplos por categoria)
-- =============================
-- Jogos
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES 
(1, 1, 'God of War Ragnarok', 299.90, 'Aventura PS5', 50, 5),
(2, 1, 'Halo Infinite', 249.90, 'Shooter Xbox Series X', 40, 5),
(3, 1, 'Zelda: Breath of the Wild', 299.90, 'Aventura Switch', 30, 3);

-- Teclados
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(4, 8, 'Razer BlackWidow V3', 899.90, 'Teclado mecânico gamer', 20, 3),
(5, 8, 'Corsair K95 RGB', 999.90, 'Teclado mecânico premium', 15, 2);

-- Mouses
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(4, 9, 'Razer DeathAdder', 399.90, 'Mouse gamer ergonômico', 25, 5),
(5, 9, 'Corsair M65 Elite', 449.90, 'Mouse FPS com sniper button', 20, 4);

-- Cadeiras
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(5, 10, 'Corsair T3 Rush', 1599.90, 'Cadeira gamer ergonômica', 10, 2);

-- Monitores
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(4, 11, 'Razer Raptor 27', 3499.90, 'Monitor gamer 144Hz', 8, 1);

-- Consoles Sony
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(1, 12, 'PlayStation 4 Slim 1TB', 1999.90, 'Console PS4 com 1TB HD', 12, 2),
(1, 13, 'PlayStation 5', 3999.90, 'Console PS5 com SSD ultra rápido', 10, 2);

-- Consoles Nintendo
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(3, 14, 'Nintendo Switch OLED', 2499.90, 'Console híbrido OLED', 15, 3);

-- Consoles Microsoft
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(2, 15, 'Xbox One S', 1599.90, 'Console Microsoft Xbox One', 8, 2),
(2, 16, 'Xbox Series X', 3899.90, 'Console nova geração Xbox', 12, 2);

-- Cooler
INSERT INTO Products (Supplier_ID, Category_ID, Name, Price, Description, Stock_Quantity, Reorder_Level)
VALUES
(5, 17, 'Corsair Hydro Series H100i', 899.90, 'Cooler líquido para CPU', 18, 4);
