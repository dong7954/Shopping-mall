create table KKK(
   num int not null primary key auto_increment,
   writer varchar(10) not null,
   email varchar(30),
   subject varchar(50) not null,
   passwd varchar(12) not null,
   reg_date datetime not null,
   readcount int default 0,
   ref int not null,
   re_step smallint not null,
   re_level smallint not null,
   content text not null,
   ip varchar(20) not null
   );
   
   
   create table log(
   num int not null primary key auto_increment,
   passwd varchar(12) not null,
   id char(10) not null,
   adress varchar(100) not null
   );
   
   
   show tables;
   
   select * from KKK;