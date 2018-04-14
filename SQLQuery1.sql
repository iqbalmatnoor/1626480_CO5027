CREATE TABLE  [dbo] [tblProducts]
{
Product_ID INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
Product_Name VARCHAR(50) NULL,
Product_Desc VARCHAR(MAX) NULL,
Quantity INT NULL,
Price MONEY NULL,
}