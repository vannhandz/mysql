create database hlv;
use hlv;

create table hlv(
	id_hlv int primary key auto_increment,
    name varchar(20),
    ngaysinh date
);

create table doi(
	id_doi int primary key auto_increment,
    name varchar(20),
    id_hlv int,
	foreign key(id_hlv) references hlv(id_hlv)
);

create table cauthu(
	id_cauthu int primary key auto_increment,
    name varchar(20),
    ngaysinh date,
    id_doi int,
    foreign key(id_doi) references doi(id_doi)
    
);

create table vitri(
	id_vitri int primary key auto_increment,
    vitri varchar(20)
);

create table trandau(
	id_trandau  int primary key auto_increment,
    doi_A int,
    doi_B int,
    ngaydau date,
	foreign key(doi_A) references doi(id_doi),
    foreign key(doi_B) references doi(id_doi),
    check(doi_A != doi_b)
);

create table vitri_cauthu(
	id_cauthu int,
    id_vitri int,
    primary key(id_cauthu,id_vitri),
    foreign key(id_cauthu) references cauthu(id_cauthu),
	foreign key(id_vitri) references vitri(id_vitri)
);

create table cauthu_trandau(
	id_trandau  int,
    id_cauthu int,
	primary key(id_trandau,id_cauthu),
    foreign key(id_cauthu) references cauthu(id_cauthu),
	foreign key(id_trandau) references trandau(id_trandau)
);
