Use DemoCRUD
Select * From tbl_Employee
CREATE PROC Sp_Employee
@Sr_no int,
@Emp_name nvarchar(500),
@City nvarchar(500),
@STATE nvarchar(500),
@Country nvarchar(500),
@Department nvarchar(500),
@flag nvarchar(500)
AS BEGIN 
	IF(@flag ='insert')
	BEGIN	
		INSERT INTO dbo.tbl_Employee
		(Emp_name , City, STATE, Country, Department)
		Values
		(@Emp_name,@City,@STATE,@Country,@Department)
	END
	Else IF(@flag ='update')
	Begin
		UPDATE dbo.tbl_Employee SET
		Emp_name  = @Emp_name , City = @City,
		STATE = @STATE , Country = @Country,
		Department = @Department
		where Sr_no = @Sr_no
		END
		Else IF(@flag ='delete')
		begin
		delete from tbl_Employee 
		where Sr_no = @Sr_no
		END
	Else IF(@flag = 'getid')
	Begin
	Select * From tbl_Employee
	where Sr_no = @Sr_no
	End
	Else IF(@flag ='get')
	Begin 
	Select * From tbl_Employee
	End
	End
