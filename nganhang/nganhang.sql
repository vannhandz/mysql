create database dk_nganhang;
use dk_nganhang;

create table nguoi(
	id_nguoi int primary key auto_increment,
    name nvarchar(20)
);

create table nganhang(
	id_nganhang int primary key auto_increment,
    sodu decimal,
    id_nguoi int ,
    foreign key (id_nguoi) references nguoi(id_nguoi)
);

