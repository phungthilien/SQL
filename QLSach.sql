Create database QLSach
go
use QLSach
go
create table THELOAI
(
	MaTheLoai nvarchar(15) not null,
	TenTheLoai nvarchar(50) not null,
	constraint PK_TheLoai primary key(MaTheLoai)
)
go
create table SACH
(
	Masach nvarchar(20)not null,
	TenSach nvarchar(50) not null,
	NXB nvarchar(50) not null,
	Sotrang int ,
	SoLuong int ,
	Giatien money ,
	NgayNhap datetime,
	vitridat nvarchar(30),
	MaTheLoai nvarchar(15) not null,
	constraint PK_Sach primary key(masach),
	constraint FK_Sach_TheLoai foreign key(MaTheLoai) references TheLoai(MaTheLoai),
	--constraint Check_Sach_Sotrang check(Sotrang>5),
	--constraint Check_Sach_SoLuong check(soluong>1),
	--constraint Check_Sach_Giatien check(giatien>0)
)
go
--Nhập liệu bảng Thể Loại
insert into TheLoai(MaTheLoai,TenTheLoai) values('IT',N'Tin học')
insert into TheLoai(MaTheLoai,TenTheLoai) values('VH',N'Văn học')
insert into TheLoai(MaTheLoai,TenTheLoai) values('KT',N'Kinh tế')
insert into TheLoai(MaTheLoai,TenTheLoai) values('CN',N'Công nghệ thông tin')
insert into TheLoai(MaTheLoai,TenTheLoai) values('DL',N'Du lịch')
insert into TheLoai(MaTheLoai,TenTheLoai) values('NN',N'Ngoại Ngữ')
insert into TheLoai(MaTheLoai,TenTheLoai) values('GD',N'Giáo dục')

--Nhập liệu bảng Sach
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('Java1',N'Lập trình Java 1','NXB Trí Tuệ',150,10,120000,'2017-05-15',N'Khu tin học','IT')
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('Java11',N'Lập trình Java 1','NXB Khoa học xã hội',200,15,150000,'2017-05-15',N'Khu tin học','IT')
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('Java2',N'Lập trình Java 2','NXB Khoa học xã hội',250,10,170000,'2017-05-15',N'Khu tin học','IT')
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('Toan1',N'Toán lớp 1','NXB Giáo dục',100,50,25000,'2017-04-10',N'Khu sách giáo dục','GD')
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('Toan2',N'Toán lớp 2','NXB Giáo dục',95,25,30000,'2017-04-10',N'Khu sách giáo dục','GD')
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('Toan3',N'Toán lớp 3','NXB Giáo dục',95,25,30000,'2017-04-10',N'Khu sách giáo dục','GD')
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('Van1',N'Văn học lớp 1','NXB Giáo dục',200,15,40000,'2017-04-10',N'Khu sách giáo dục','GD')
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('DL01',N'Các khu du lịch nổi tiếng Việt Nam','NXB Văn hóa Xã hội',200,5,100000,'2015-03-6',N'Khu sách giáo dục','GD')
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('CSDL',N'SQL Server Phần 1','NXB Trí Đức',200,5,150000,'2015-03-7',N'Khu sách giáo dục','GD')
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('CSDL1',N'Làm Quen với SQL Server','NXB Giáo Dục',150,3,100000,'2015-04-8',N'Khu sách giáo dục','GD')
insert into SACH(Masach,TenSach,NXB,Sotrang,SoLuong,Giatien,NgayNhap,vitridat,MaTheLoai)
values('CSDL3',N'SQL Server Nâng cao','NXB Giáo Dục',150,2,100000,'2015-04-8',N'Khu sách giáo dục','GD')
go

Select *from THELOAI
select sach. *from sach join theloai on sach.MaTheLoai= theloai.MaTheLoai