create table tbl_user(
id int(11)unsigned not null auto_increment,
name varchar(50) not null default '',
password varchar(50) not null default '',
email varchar(50) default '',
primary key (id))
engine = InnoDB
default charset = utf8;


create table tbl_address(
id int(11)unsigned not null auto_increment,
city varchar(20) default null,
country varchar(20) default null,
user_id int(11) unsigned not null,
primary key (id))
engine = InnoDB
default charset = utf8;

insert into tbl_user values(1,'xiaoming','123456','xiaoming@gmail.com');
insert into tbl_user values(2,'xiaozhang','123456','xiaozhang@gmail.com');
insert into tbl_address values(1,'beijing','china','1');
insert into tbl_address values(2,'tianjin','china','2');