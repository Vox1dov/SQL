Oson
1)BULK INSERT — bu SQL Serverga tashqi fayldan katta hajmdagi ma’lumotlarni jadvalga tezda import qilish uchun ishlatiladigan buyruqdir. U ko‘pincha CSV yoki txt fayllardagi ma’lumotlarni yuklashda ishlatiladi. 2).CSV – Comma Separated Values

  2).CSV – Comma Separated Values
.TXT – Text fayl
.XML – Extensible Markup Language
.JSON – JavaScript Object Notation
  
3)create table Products (ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Price DECIMAL(10,2))

4)insert into Products (ProductID, ProductName, Price) values (1,'Olma', 35.50),(2,'Nok', 40.00),(3,'Uzum', 30.80) 

5) Nut-Ma'lumotlar aniq emas yoki noma'lum, qiymati aniq emas,ixtiyoriy ustunda qo'llanadi.
  Not Null-Ma'lumotlar aniq, qiymati bo'lishi majburiy, majburiy to'ldiriladigan ustunda qo'llaniladi.

6)ALTER TABLE Mahsulotlar
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);

7)/* Bu kod ProductName ustuniga UNIQUE cheklov qo‘shadi */
ALTER TABLE Mahsulotlar
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);

  8)ALTER TABLE Product
ADD CategoryID INT;

9)CREATE TABLE Toifalar (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);
10)CREATE TABLE Mahsulotlar (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(50),
    Narx DECIMAL(10,2)
);




