create database danh_ba;

use danh_ba;

create table nguoi(
	id_nguoi int primary key auto_increment,
    name varchar(20)
);

create table sdt(
    id_sdt int primary key auto_increment,
	sodt nvarchar(20),
    id_nguoi int,
    foreign key(id_nguoi) references nguoi(id_nguoi)
);

create table mail(
	id_mail int primary key auto_increment,
	email nvarchar(20),
    id_nguoi int,
    foreign key(id_nguoi) references nguoi(id_nguoi)
);

