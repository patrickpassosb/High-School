CREATE TABLE Fornecedores (
	Supplier_ID INT PRIMARY KEY IDENTITY(1,1),
	Name NVARCHAR(35) NOT NULL UNIQUE,
	Contact_phone NVARCHAR(100) NOT NULL UNIQUE,
	Contact_email NVARCHAR(100) NOT NULL UNIQUE,
	Address NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE Product_Categories (
	Category_ID INT PRIMARY KEY IDENTITY (1,1),
	Category_Name NVARCHAR(50) NOT NULL,
	Parent_Category_ID INT NULL,
	CONSTRAINT FK_ParentCategory FOREIGN KEY (Parent_Category_ID)
		REFERENCES Product_Categories(Category_ID)
);
GO

CREATE TABLE Products (
	Product_ID INT PRIMARY KEY IDENTITY (1,1),
	Supplier_ID INT NOT NULL,
	Category_ID INT NOT NULL,
	Name NVARCHAR(100) NOT NULL,
	Price DECIMAL(10, 2) NOT NULL,
	Description NVARCHAR(500) NULL,
	Stock_Quantity INT NOT NULL,
	Reorder_Level INT NOT NULL,
	CONSTRAINT FK_Supplier FOREIGN KEY (Supplier_ID)
		REFERENCES Fornecedores(Supplier_ID),
	CONSTRAINT FK_Category FOREIGN KEY (Category_ID)
		REFERENCES Product_Categories(Category_ID)
);
GO

CREATE TABLE Product_Subcategories (
	Subcategory_ID INT PRIMARY KEY IDENTITY (1,1),
	Subcategory_Name NVARCHAR(50) NOT NULL,
	Category_ID INT NOT NULL,  -- <-- Add this column
	CONSTRAINT FK_Category FOREIGN KEY (Category_ID)
		REFERENCES Product_Categories(Category_ID)
);
GO

CREATE TABLE Customers (
   Customer_ID INT PRIMARY KEY IDENTITY (1,1),
   Name NVARCHAR(100) NOT NULL,
   CPF NVARCHAR(20) UNIQUE NOT NULL,
   Address NVARCHAR(100) NOT NULL,
   Email NVARCHAR(100) UNIQUE NOT NULL,
   User_ID NVARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Payment_forms (
	Payment_Method_ID INT PRIMARY KEY IDENTITY(1,1),
	Method_Name NVARCHAR(50) NOT NULL UNIQUE
);
GO

CREATE TABLE Inventory (
    Stock_ID INT PRIMARY KEY IDENTITY(1,1),  -- Unique identifier for each stock record
    Product_ID INT NOT NULL,                  -- Foreign key to the Products table
    Stock_Quantity INT NOT NULL,              -- Quantity of the product in stock
    Reorder_Level INT NOT NULL,               -- Level below which we need to reorder
    Last_Updated DATETIME DEFAULT GETDATE(), -- Timestamp for the last stock update
    Location NVARCHAR(100) NULL,              -- Optional: location in the warehouse
    CONSTRAINT FK_Product FOREIGN KEY (Product_ID)
        REFERENCES Products(Product_ID)      -- Linking to the Products table
);
GO

