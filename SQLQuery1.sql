Create database StoredProc

Create table Employees
(
FirstName nvarchar(100),
LastName nvarchar(100),
Gender nvarchar(10),
Salary int
)

insert into Employees values
('Mike','Johanson','Male',54000),
('Tom','Richards','Male',37000),
('Pam','White','Female',45000),
('Roland','Whitaker','Male',71000),
('Sam','Terry','Female',40000),
('Jack','Black','Male',100000)



alter Proc spSearchEmployees
@FirstName nvarchar(100) = null,
@LastName nvarchar(100) = null,
@Gender nvarchar(10) = null,
@Salary int = null
As 
Begin
	Select * from Employees where
	(FirstName = @FirstName or @FirstName is null) and
	(LastName = @LastName or @LastName is null) and
	(Gender = @Gender or @Gender is null) and
	(Salary = @Salary or @Salary is null)
End
Go

