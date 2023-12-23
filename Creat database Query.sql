create database QuanLyCSDLTaiNguyenRung
go

use QuanLyCSDLTaiNguyenRung
go

create table Users 
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(max),
	UserName nvarchar(100),
	Passwords nvarchar(max),
)
go

insert into Users (DisplayName, UserName, Passwords) values (N'Pham Thu Phuong', N'Phuong', N'UGh1b25n')
go
insert into Users (DisplayName, UserName, Passwords) values (N'Nguyen Hoang Nam', N'Nam',N'TmFtDQo=')
go

--Quan li CSDL cay giong

create table CSSXCay
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(max),
	Adress nvarchar(max)
)
go

create table CayGiong
(
	Id nvarchar (128) primary key,
	DisplayName nvarchar(max),
	Count int,
	Unit nvarchar(50),
	IdCSSXCay int null,
	
	foreign key (IdCSSXCay) references CSSXCay(Id),
)
go

--Quan ly CSDL che bien go

create table CSSXGo
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(max),
	Adress nvarchar(max)
)
go

--loai hinh san xuat go
create table TypeGo
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(max),
)
go

--hinh thuc san xuat go
create table Form 
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(max),
)
go

create table CheBienGo
(
	Id nvarchar (128) primary key,
	DisplayName nvarchar(max),
	Count int,
	Unit nvarchar(50),
	IdCSSXGo int null,
	IdTypeGo int null,
	IdForm int null,
	
	foreign key (IdCSSXGo) references CSSXGo(Id),
	foreign key (IdTypeGo) references TypeGo(Id),
	foreign key (IdForm) references Form(Id),
)
go

--quan ly CSDL tai nguyen sinh vat rung

create table CSLTDV -- co so luu tru dong vat
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(max),
	Adress nvarchar(max)
)
go

create table StatusDV
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(max),
)
go

create table DV
(
	Id nvarchar (128) primary key,
	DisplayName nvarchar(max),
	Count int,
	Unit nvarchar(50),
	IdCSLTDV int null,
	IdStatusDV int null,
	
	foreign key (IdCSLTDV) references CSLTDV(Id),
	foreign key (IdStatusDV) references StatusDV(Id),
)
go
