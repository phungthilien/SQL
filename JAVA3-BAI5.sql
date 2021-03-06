-- t?o database 
CREATE DATABASE java3_bai5;
USE java3_bai5
--T?O B?NG KHOA
IF OBJECT_ID('KHOA') IS NOT NULL
DROP TABLE KHOA
GO
CREATE TABLE KHOA(
MAKHOA VARCHAR(10) PRIMARY KEY,
TENKHOA NVARCHAR(30),
DIADIEM NVARCHAR(50)
)
--T?O B?NG GIANGVIEN
IF OBJECT_ID('GIANGVIEN') IS NOT NULL
DROP TABLE GIANGVIEN
GO
CREATE TABLE GIANGVIEN(
MAGIANGVIEN VARCHAR(10) PRIMARY KEY,
TENGIANGVIEN NVARCHAR(30),
GIOITINH NVARCHAR(10),
NGAYSINH DATE,
MAKHOA VARCHAR(10), 
FOREIGN KEY(MAKHOA)
 REFERENCES KHOA(MAKHOA)
 ON UPDATE CASCADE 
 ON DELETE CASCADE

)

INSERT INTO KHOA VALUES('CNTT','tin hoc','L301'),
('UD','UNG DUNG','P301'),
('DT','DIEN TU','L301'),
('DH','DO HOA','P305'),
('KT','KE TOAN','F201'),
('CB','CO BAN','T304');

INSERT INTO GIANGVIEN VALUES('GV111','TRANG ','Nữ','2000-02-11','UD'),
('GV112',N'TRANG1',N'Nữ','1982-02-11','UD'),
('GV113',N'TRANG2',N'Nam','1993-02-17','UD'),
('GV114',N'TRANG3',N'Nam','1979-02-18','CNTT'),
('GV115',N'TRANG4',N'Nam','1965-02-13','KT'),
('GV116',N'TRANG5',N'Nam','1994-02-14','KT'),
('GV117',N'TRANG6',N'Nữ','1986-02-15','DT'),
('GV118',N'TRANG7',N'Nữ','1988-02-15','DT');



SELECT * FROM GIANGVIEN
SELECT * FROM KHOA
SELECT GIANGVIEN.* FROM KHOA JOIN GIANGVIEN ON KHOA.MAKHOA=GIANGVIEN.MAKHOA