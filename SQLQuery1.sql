Create DATABASE Blog
USE Blog
Create TABLE Users(
ID INT IDENTITY PRIMARY KEY,
NAME NVARCHAR (25) NOT NULL,
SURNAME NVARCHAR(35) NOT NULL,
EMAIL NVARCHAR (400) CONSTRAINT BG_USE_EMAIL UNIQUE CHECK(LEN(EMAIL) BETWEEN 4 AND 400)NOT NULL,
)

Create Table Posts
( 
ID INT IDENTITY PRIMARY KEY,
   LikeCount INT NOT NULL,
   CreatedAt DATETIME NOT NULL DEFAULT(GETDATE()),
   Title NVARCHAR(400)NOT NULL,
   USERID INT NOT NULL
)
INSERT INTO Users
Values ('Elmin','Huseyinli','huseynli.elmin@mail.ru'),
('Senan','Abdulov','abdulovsenan@mail.ru'),
('Mehemmed','Sixaliyev','Mehemmedsixalyev@mail.ru'),
('Zakir','Hesenov','HesenovZakir@mail.ru'),
('Ulvi','Eliyev','EliyevUlvi@mail.ru')
  

 INSERT INTO Posts
 Values
 (45,'Muzeyde bir gun',9),
 (15,'Dostlarimla seyahet',10),
 (8,'Son Zeng',11),
 (12,'Vinetka cekilisi',12)

 Select NAME +' '+' '+SURNAME as 'FULLNAME' from Users
 Select *from Posts Where LikeCount>10
 Select *from Posts Where Title >20 and Title<100
