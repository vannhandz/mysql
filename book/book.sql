create database management_book;
use management_book;

create table nhanvien(
	id_nv int primary key auto_increment,
    name varchar(20),
    diachi varchar(50)
);

create table tacgia(
	id_tac_gia int primary key auto_increment,
    name varchar(20)
);

create table sach(
	id_sach int primary key auto_increment,
    name varchar(20),
    gia decimal,
    id_tac_gia int ,
    foreign key(id_tac_gia) references tacgia(id_tac_gia)
);

create table nhanvien_bansach(
	id_nv int,
	id_sach int,
	primary key(id_nv,id_sach),
    foreign key(id_nv) references nhanvien(id_nv),
    foreign key(id_sach) references sach(id_sach)
)