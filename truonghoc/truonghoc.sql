create database truonghoc;
use  truonghoc;

create table giaovien(
	id_gv int primary key auto_increment,
    ten nvarchar(20)
);

create table hocsinh(
	id_sv int primary key auto_increment,
    ten nvarchar(20),
    id_gv int,
    foreign key(id_gv) references giaovien(id_gv)
);