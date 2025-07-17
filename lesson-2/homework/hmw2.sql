Create database Lesson2 
Asosiy darajadagi vazifalar (10)
1)Create table Employess(EmpID int, Name varchar(50),Salary Decimal(10,2))
2)Insert into Employess(EmpID ,Name,Salary) values (1,'Jaxongir',5000),(2,'Bekzodbek',6000),(3,'Nodirbek',4000),(4,'Shaxlo',3000)
3)Update Employess
  Set salary=7000
  where EmpID=1
4)Delete from Employess
Where EmpID=2

5) 1. DELETE
Ma’nosi: Jadvaldan ma’lum shartga mos yozuvlarni o‘chirish uchun ishlatiladi.
Xususiyatlari:
Shart (WHERE) bilan yozuvlarni tanlab o‘chirish mumkin.
O‘chirilgan yozuvlar tranzaktsiya (transaction) orqali qayta tiklanishi mumkin (ROLLBACK qo‘llab-quvvatlanadi).
Har bir o‘chirish uchun loglar yoziladi, shuning uchun sekinroq.

2. TRUNCATE
Ma’nosi: Jadvaldagi barcha yozuvlarni tez va samarali tarzda o‘chiradi.
Xususiyatlari:
Barcha yozuvlarni to‘liq o‘chiradi, lekin jadval tuzilmasi va ustunlari saqlanadi.
WHERE sharti bo‘lishi mumkin emas.
Ko‘pincha ROLLBACK mumkin emas (ba’zi ma’lumotlar bazalarida farq bo‘lishi mumkin).
O‘chirish tez amalga oshadi, chunki loglar kamroq yoziladi.

3. DROP
Ma’nosi: Butun jadvalni (yoki boshqa obyektni, masalan, indeks, view) ma’lumotlar bazasidan butunlay o‘chiradi.
Xususiyatlari:
Jadval va uning barcha yozuvlari, indekslari, ruxsatnomalari va tuzilmalari butunlay yo‘q qilinadi.
Bu amaliyotni qaytarib bo‘lmaydi (agar zaxira nusxasi bo‘lmasa).
Jadvalni butunlay olib tashlash uchun ishlatiladi.

6) ALTER TABLE Employees
MODIFY COLUMN Name VARCHAR(100)

7) Alter table Employess
Add Departament varchar(50)

8)ALTER TABLE Employess
ALTER COLUMN Salary FLOAT
 
 9)CREATE TABLE DepartmentsUstunlar
   (DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50))

10) TRUNCATE TABLE Employess
