create database sote_management;
use sote_management;

create table product(
	id int primary key auto_increment,
    name varchar(20) not null,
    desription varchar(20) ,
    price double,
    stock int
);


insert into product  value (1,'ao lo','ok',1222,7);
insert into product (name ,desription,price,stock ) value ('ao','ok',122,2);
insert into product (name ,desription,price,stock ) value ('ao2',null,null,null);

select *from product;
select id,name,price from product;
select id,name,price from product where price <10000000;

set sql_safe_updates=0;

update product set name='ao';
update product set name='quan' where id=2;

set sql_safe_updates=1;

alter table product add barcode int;
alter table product add warranty varchar(30) default '6 thang';

delete from product where id=3;
delete from product ;

drop table product;

drop database sote_management;

drop database if exists sote_management; -- kiem tra có bảng trc khi xoa

