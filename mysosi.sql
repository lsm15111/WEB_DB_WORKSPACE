drop table sosi;
commit;

create table  sosi (
        id number(4) primary key ,
    name varchar2(10) ,
     salary number ,
    birth date ,
    email varchar2(20)  ,
    grade varchar2(4)
  ) ;

commit;

 insert  into sosi(id,name,salary,birth,email,grade) 
     values(7789, 'hong', 79, sysdate, 'bc@kt.com', 'F');        

 insert  into sosi(id,name,salary,birth,email,grade) 
     values(7790, 'lee', 23, sysdate, 'lee@lg.com', 'C');

 insert  into sosi(id,name,salary,birth,email,grade) 
     values(2234, 'young', 96, sysdate, 'kim@it.org', 'A'); 

insert  into sosi(id,name,salary,birth,email,grade)  values(9900, 'gugu', 31, sysdate, 'gg@gs.com', 'C'); 
insert  into sosi(id,name,salary,birth,email,grade)  values(7734, 'aaa', 24, sysdate, 'aa@gs.com', 'B'); 
insert into sosi values(7754, 'bb', 57, sysdate, 'aa@ks.it', 'A'); 
insert into sosi values(3357, 'red', 92, sysdate, 'aa@mo.it', 'B');

insert into sosi  values(7000,'�����',100,to_date('17/12/12'), 'aa@girl.com', 'A');
insert into sosi values(6000,'�¿�',100,to_date('19/12/12'), 'ts@girl.com', 'A');
insert into sosi  values(2000,'����',90,to_date('17/11/13'), 'bb@girl.com', 'F');

insert into sosi values(3000,'����',120,to_date('17/10/25'), 'cc@girl.com', 'C');
insert into sosi values(4000, '����', 90, sysdate, 'dd@girl.com', 'A');
commit;
select * from sosi ;


clear screen;   
 col name for a10 ;
 col email for a15 ;
 col grade for a4 ;
 col id for 9999
select * from sosi ;
