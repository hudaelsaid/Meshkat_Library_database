Create Database Meshkat_Library;

Create Table M_Publisher (Publisher_ID int Primary Key, Publisher_Name Varchar(50), 
Publisher_Add Varchar(100), Publisher_PhoneNo int);

insert into M_Publisher values (1, 'Simon & Schuster', 'New York',95487568);
insert into M_Publisher values (2, ' Blaze Vox', 'Buffalo,New York',45784946);
insert into M_Publisher values (3, 'Aseer Elkotb', 'cairo', 01205481648);
insert into M_Publisher values (4, 'El shrook', 'cairo', 0102356489);
insert into M_Publisher values (5, 'Quarto Knows', 'Canada',65948756);
insert into M_Publisher values (6, 'Al Raya', 'Cairo', 0152648959);
insert into M_Publisher values (7, 'jarir', 'Cairo', 0154898765);
insert into M_Publisher values (8, 'Angry Robot', 'Italy', 10645879);

Select * From M_Publisher;
-------------------------------------------------------------------------------
Create Table M_Author (Author_ID int Primary Key , Author_Name Varchar(50) );

insert into M_Author Values ( 301 , 'Colleen Hoover');
insert into M_Author Values ( 302 , 'Janet Skeslien Charles');
insert into M_Author Values ( 303 , 'Doaa Abd Elrahman');
insert into M_Author Values ( 304 , 'Hassan El Gendy');
insert into M_Author Values ( 305 , 'Amr Abd Elhameed');
insert into M_Author Values ( 306 , 'Denes Baron');
insert into M_Author Values ( 307 , 'Nageeb Mahfouz');
insert into M_Author Values ( 308 , 'charels Dickens');
insert into M_Author Values ( 309 , 'James clear');
insert into M_Author Values ( 310 , 'Philip Kotler');
insert into M_Author Values ( 311 , 'Dean Burnett');

Select * From M_Author;
-------------------------------------------------------------------------------
Create Table M_Book(Book_ID int Primary Key, Book_Title Varchar(60), 
Author_ID int Foreign Key references M_Author(Author_ID) ON DELETE CASCADE,
Publish_Year int, Category Varchar(50),
Publisher_ID int Foreign Key references M_Publisher(Publisher_ID) ON DELETE CASCADE,
No_of_available_Copies int);

insert into M_Book Values (701 , 'The Idiot Brain', 311 , 2016, 'Science' , 8 , 10);
insert into M_Book Values (702 , 'Kotler On Marketing', 310 , 1999, 'Marketing' ,7 ,26);
insert into M_Book Values (703 , 'Atomic Habbits', 309 , 2018, 'Psychology' , 1 , 15);
insert into M_Book Values (704 , 'Ard Zechola', 305 , 2015, 'Fiction' , 3, 30);
insert into M_Book Values (705 , 'The Happy Brain', 311 , 2018, 'Science' , 8 , 31);
insert into M_Book Values (706 , 'Daw', 303 , 2019, 'Fiction' , 3 , 17);
insert into M_Book Values (707 , 'Imago', 303 , 2014, 'Romance' , 3 , 25);
insert into M_Book Values (708 , 'El Karnak', 307 , 1974, 'Novel' , 4 , 3);
insert into M_Book Values (709 , 'Oliver Twist', 308 , 1837, 'Novel' , 1 , 7);
insert into M_Book Values (710 , 'It Ends with Us', 301 , 2020, 'Romance' , 1 , 40);
insert into M_Book Values (711 , 'Ugly Love', 301 , 2019, 'Novel' , 1, 51);
insert into M_Book Values (712 , 'Hard Times', 308 , 1854, 'Novel' , 2 , 4);
insert into M_Book Values (713 , 'EL Gareema', 307 , 1973, 'Fiction' , 4 , 9);
insert into M_Book Values (714 , 'Amareeta', 305 , 2016, 'Fiction' , 3 , 14);
insert into M_Book Values (715 , 'The Paris Library', 302 , 2020, 'Historical' , 1 , 19);
insert into M_Book Values (716 , 'Grammer And Gender', 306 , 1986, 'Educational' , 2 , 40);
insert into M_Book Values (717 , 'Mastering Creativity', 309 , 2015, 'Productivity' ,5 ,17);
insert into M_Book Values (718 , 'Al Gazzar', 304 , 2009, 'Crime' , 6 , 30);
insert into M_Book Values (719 , 'Al Rasd', 304 , 2018, 'Horror' , 6 , 37);
insert into M_Book Values (720 , 'A Tale of Two Cities', 308 , 1859, 'Historical' , 2 , 15);
insert into M_Book Values (721 , 'Inferno', 308 , 1859, 'Fiction' , 5 , 1);
insert into M_Book Values (722 , 'The Da Vinci Code', 308 , 1859, 'Fiction' , 5 , 0);
insert into M_Book Values (723 , 'Harry Poter', 308 , 2021, 'Fiction' , 5 , 0);

Select * From M_Book;
-------------------------------------------------------------------------------------
Create Table M_Member (Member_ID int Primary Key, Member_Name Varchar(50),
Member_Gender Varchar(10), Member_Age int, Member_Add Varchar(100),
Member_PhoneNo int, No_of_borrowed_books int);

insert into M_Member Values (601 , 'Huda Elsaid' , 'Female' , 22 , 'El Mahalla' , 0102548794, 0);
insert into M_Member Values (602 , 'Hagar Sherif' , 'Female' , 22 , 'El Mahalla' , 0105487664,0);
insert into M_Member Values (603 , 'Nada Yehia' , 'Female' , 21 , 'El Mahalla' , 0111547654, 0);
insert into M_Member Values (604 , 'Mariam Talaat' , 'Female' , 22 , 'Mansoura' , 0126487480,0);
insert into M_Member Values (605 , 'Mariam El Haddad' , 'Female' , 22 , 'Mansoura' , 0123665948,0);
insert into M_Member Values (610 , 'Mariam ' , 'Female' , 22 , 'Mansoura' , 0123665948,0);
insert into M_Member Values (615 , 'Mona ' , 'Female' , 25 , 'Mansoura' , 0123665948,0);
insert into M_Member Values (616 , 'Mohamed' , 'male' , 30 , 'Mansoura' , 0123665948,0);
insert into M_Member Values (617 , 'Ahmed' , 'male' , 33 , 'Mansoura' , 0123665948,0);

Select * From M_Member;
-------------------------------------------------------------------------------------
Create Table M_Current_Borrowed_books(
Member_ID int Foreign Key references M_Member(Member_ID) ON DELETE CASCADE,
Book_ID int Foreign Key references M_Book (Book_ID) ON DELETE CASCADE,
Date_of_borrow Date, Date_of_return Date , primary key (Member_ID, Book_ID));

insert into M_Current_Borrowed_books Values (617, 717 ,'2022-05-20','2022-05-27');

Select * From M_Current_Borrowed_books;
--------------------------------------------------------------------------------------
Go
Create Procedure M_Add_Book
@Book_ID int , @Book_Title Varchar(60), 
@Author_ID int, @Publish_Year int, @Category Varchar(50) , 
@Publisher_ID int , @No_of_available_Copies int 
       As
       Begin
       Insert into M_Book Values(@Book_ID,@Book_Title,@Author_ID,@Publish_Year,
	   @Category,@Publisher_ID, @No_of_available_Copies);
	   Select * From M_Book;
       End
	   Go
       
       Exec M_Add_Book 731 , 'Animal Farm', 308 , 1920, 'Fiction' , 3 , 15 ;
---------------------------------------------------------
Go    
Create Procedure M_Add_Member
@Member_ID int , @Member_Name Varchar(50) , @Member_Gender Varchar(10), @Member_Age int ,
@Member_Add Varchar(100), @Member_PhoneNo int, @No_of_borrowed_books int
       As
       Begin
	   Insert into M_Member Values(@Member_ID, @Member_Name, @Member_Gender, @Member_Age,
	   @Member_Add, @Member_PhoneNo, @No_of_borrowed_books );
	   Select * From M_Member;
       End
	   Go
  
       Exec M_Add_Member 620 , 'Amal Mohamed' , 'Female' , 20 , 'Mansoura' , 01234756858, 0;
-----------------------------------------------------------------------
Go    
Create Procedure M_Add_Author
@Author_ID int  , @Author_Name Varchar(50) 
       As
       Begin
	   Insert into M_Author Values(@Author_ID, @Author_Name );
	   Select * From M_Author;
       End
	   Go
  
       Exec M_Add_Author  350 , 'George Orwell';
------------------------------------------------------------ 
Go    
Create Procedure M_Add_Publisher
@Publisher_ID int , @Publisher_Name Varchar(50), 
@Publisher_Add Varchar(100), @Publisher_PhoneNo int
       As
       Begin
	   Insert into M_Publisher Values(@Publisher_ID, @Publisher_Name, 
	   @Publisher_Add, @Publisher_PhoneNo);
	   Select * From M_Publisher;
       End
	   Go
  
       Exec M_Add_Publisher  10, 'Meret', 'Cairo', 0106458794;
--------------------------------------------------------------------
Go    
Create Procedure M_Remove_Author
@Author_ID int 
       As
       Begin
	   Delete from M_Author where Author_ID = @Author_ID;
	   Select * From M_Author;
       End
	   Go
  
	   Exec M_Remove_Author  304;
-----------------------------------------------------------------
Go    
Create Procedure M_Cancel_membership
@Member_ID int 
       As
       Begin
	   Delete from M_Member where Member_ID = @Member_ID;
	   Select * From M_Member;
       End
	   Go
  
	   Exec M_Cancel_membership  605;
----------------------------------------------------------------------
Go    
Create Procedure M_Remove_Book
@Book_ID int 
       As
       Begin
	   Delete from M_Book where Book_ID = @Book_ID;
	   Select * From M_Book;
       End
	   Go
  
       Exec M_Remove_Book 731;
---------------------------------------------------------------
Go    
Create Procedure M_Remove_Publisher
@Publisher_ID int 
       As
       Begin
	   Delete from M_Publisher where Publisher_ID = @Publisher_ID;
	   Select * From M_Publisher;
       End
	   Go

	   Exec M_Remove_Publisher 2;
----------------------------------------------------
	    Go
Create Procedure M_Borrow
@Member_ID int  , @Book_ID int 
       As
       Begin
	   declare @No_of_borrowed_books int
	   select @No_of_borrowed_books = No_of_borrowed_books 
	   from M_Member where Member_ID = @Member_ID;

	   declare @No_of_available_Copies int
	   select @No_of_available_Copies = No_of_available_Copies 
	   from M_Book where Book_ID = @Book_ID;

	    declare @ID int = 0
		select @ID = Member_ID from M_Member where Member_ID = @Member_ID;
		  BEGIN
	   Begin Try
	     Begin Transaction  
		 print 'start transaction'; 
		 if (@Member_ID = @ID )
		 begin 
			if ( @No_of_available_Copies != 0 )
			begin 
				IF (@No_of_borrowed_books < 3)
				begin
					Insert into M_Current_Borrowed_books Values(@Member_ID , @Book_ID , GETDATE(), GETDATE()+7);
					Update M_Book
					Set No_of_available_Copies = No_of_available_Copies - 1 
					where Book_ID = @Book_ID ;

					Update M_Member
					Set No_of_borrowed_books = No_of_borrowed_books + 1 
					where Member_ID = @Member_ID ;
				end
				ELSE
				begin 
				print 'Maximum number of borrows reached!';
				end 
			end 
			else 
			begin 
			print'Cannot borrow , Number of available copies of this book = 0';
			end
		end 
		else 
		begin 
		print 'Member doesnot exist';
		end
	Commit Transaction 
		End Try
        
Begin Catch
  Rollback Transaction
  End Catch
END
 End
	   Go
	   Exec M_Borrow 604 , 717;
	   Exec M_Borrow 601 , 701;
	   Exec M_Borrow 611, 717; --not a member
	   Exec M_Borrow 604 , 701;
	   Exec M_Borrow 604 , 702;

	   Select * From M_Current_Borrowed_books Order by Member_ID;
------------------------------------------------------------
Go    
Create Procedure M_Renew_borrow
@Book_Title Varchar(60), @Member_Name Varchar(50)
       As
       Begin
	
	   UPDATE M_Current_Borrowed_books
SET Date_of_return = DATEADD(Day,7,Date_of_return)
From M_Current_Borrowed_books
INNER JOIN M_Book
ON M_Book.Book_ID = M_Current_Borrowed_books.Book_ID
INNER JOIN M_Member
ON M_Member.Member_ID  = M_Current_Borrowed_books.Member_ID
Where M_Member.Member_Name = @Member_Name
and M_Book.Book_Title = @Book_Title;

Select * From M_Current_Borrowed_books;
       End
	   Go
     Exec M_Renew_borrow 'The Idiot Brain', 'Huda Elsaid';
--------------------------------------------------------------
  Go
Create Procedure M_Get_Book_Back
@Member_ID int  , @Book_ID int 

       As
       Begin
	   declare @No_of_borrowed_books int
	   select @No_of_borrowed_books = No_of_borrowed_books from M_Member where Member_ID = @Member_ID;

		if (@No_of_borrowed_books > 0)
		begin
		Delete from M_Current_Borrowed_books where Book_ID = @Book_ID; 
	   Update M_Book
	   Set No_of_available_Copies = No_of_available_Copies + 1 
	   where Book_ID = @Book_ID ;

		Update M_Member
		Set No_of_borrowed_books = No_of_borrowed_books - 1 
		where Member_ID = @Member_ID ;
		Select * From M_Current_Borrowed_books;
		end
		else
		begin
		print 'The member doesnot have borrows';
		end
	
		End
	   Go
	   Exec M_Get_Book_Back 601 , 701;
-------------------------------------------------------------------------
	   CREATE FUNCTION M_Search_book_available( @Book_Title varchar(60) ) 
RETURNS TABLE AS
RETURN
( Select No_of_available_Copies from M_Book
where Book_Title = @Book_Title )

select * from dbo.M_Search_book_available('The Idiot Brain');
----------------------------------------------------------------------
CREATE FUNCTION M_Search_by_M_Author( @Author_Name varchar(60) ) 
RETURNS TABLE AS
RETURN
( Select M_Book.Book_Title from M_Book 
inner join M_Author on M_Book.Author_ID = M_Author.Author_ID 
where M_Author.Author_Name = @Author_Name)

select * from dbo.M_Search_by_M_Author('Dean Burnett');
----------------------------------------------------------------------
CREATE FUNCTION M_Search_by_Publisher( @Publisher_Name  varchar(60) ) 
RETURNS TABLE AS
RETURN
( Select M_Book.Book_Title from M_Book 
inner join M_Publisher on M_Book.Publisher_ID = M_Publisher.Publisher_ID
where M_Publisher.Publisher_Name = @Publisher_Name )

select * from dbo.M_Search_by_Publisher('Aseer Elkotb');
----------------------------------------------------------------------
		Create View Books_Categories
	   As
	   Select  Category, Count(Book_ID) As Number_of_books  From M_Book 
	   Group By Category ;
	   Select * From Books_Categories Order By Number_of_books Desc;
-------------------------------------------------------
	    Create View Books_Authors
	   As
	   Select M_Author.Author_Name , Count(M_Book.Book_ID) 
	   As Number_of_books  From M_Author 
	   inner join M_Book
	   on M_Author.Author_ID = M_Book.Author_ID
	   Group By Author_Name ;
	   Select * From Books_Authors Order By Number_of_books Desc;
----------------------------------------------------------------------
	    Create View Books_Publishers
	   As
	   Select M_Publisher.Publisher_Name , Count(M_Book.Book_ID) 
	   As Number_of_books  From M_Publisher
	   inner join M_Book
	   on M_Publisher.Publisher_ID = M_Book.Publisher_ID
	   Group By Publisher_Name;
	   Select * From Books_Publishers Order By Number_of_books Desc;
---------------------------------------------------------------------------------
	   Create View Currently_Borrowed_Books
	   As
	   Select Sum(No_of_borrowed_books) 
	   As Number_of_currently_Borrowed_Books From M_Member ;
	   Select * From Currently_Borrowed_Books 
	   Order By Number_of_currently_Borrowed_Books Desc;
---------------------------------------------------------------------------------------------
	     Create View Books_Out_of_Stock
	   As
	   Select Book_Title As Not_Available_Books From M_Book
	   Where No_of_available_Copies=0;
	   Select * From Books_Out_of_Stock ;
---------------------------------------------------------------------------
	   Create View Members_Missed_Return_Date
	   As
	   Select M_Member.Member_Name From M_Member
	   inner join M_Current_Borrowed_books
	   on M_Member.Member_ID = M_Current_Borrowed_books.Member_ID
	   Where Date_of_return < GETDATE();
	   Select * From Members_Missed_Return_Date;
----------------------------------------------------------------------------
	   Create View Members_Having_Max_Books
	   As
	   Select Member_Name  From M_Member
	   Where No_of_borrowed_books=3;
	   Select * From Members_Having_Max_Books ;
------------------------------------------------------------------------------
	   create view Books_published_last_year 
	   As 
	   select Book_Title from M_Book 
	   where Publish_Year = YEAR(GETDATE())- 1 ;
	   Select * From  Books_published_last_year ;
---------------------------------------------------------------------------------