-- Script de Criação do Banco de Dados e Tabelas - E-commerce

-- Criação do banco de dados
CREATE DATABASE ECommerceDB;
GO
USE ECommerceDB;
GO

-- Tabela Cliente
CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100),
    CPF CHAR(11),
    Email VARCHAR(100)
);

-- Tabela Produto
CREATE TABLE Produto (
    ID_Produto INT PRIMARY KEY IDENTITY(1,1),
    Nome_Produto VARCHAR(100),
    Preco DECIMAL(10, 2),
    Estoque INT
);

-- Tabela Pedido
CREATE TABLE Pedido (
    ID_Pedido INT PRIMARY KEY IDENTITY(1,1),
    ID_Cliente INT,
    Data_Pedido DATE,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

-- Tabela ItemPedido (entidade associativa)
CREATE TABLE ItemPedido (
    ID_ItemPedido INT PRIMARY KEY IDENTITY(1,1),
    ID_Pedido INT,
    ID_Produto INT,
    Quantidade INT,
    Preco_Unitario DECIMAL(10, 2),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);

-- Inserção de dados
-- Clientes
INSERT INTO Cliente (Nome, CPF, Email) VALUES
('João Silva', '12345678901', 'joao@email.com'),
('Maria Oliveira', '23456789012', 'maria@email.com');

-- Produtos
INSERT INTO Produto (Nome_Produto, Preco, Estoque) VALUES
('Notebook Dell', 3500.00, 10),
('Smartphone Samsung', 2500.00, 15);

-- Pedidos
INSERT INTO Pedido (ID_Cliente, Data_Pedido) VALUES
(1, '2025-06-01'),
(2, '2025-06-02');

-- Itens do Pedido
INSERT INTO ItemPedido (ID_Pedido, ID_Produto, Quantidade, Preco_Unitario) VALUES
(1, 1, 1, 3500.00),
(2, 2, 2, 2500.00);
