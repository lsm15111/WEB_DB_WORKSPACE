delete from guestreply;
delete from guest;
commit;

drop table guest;

create table guest (
 code number(4) primary key ,
 name varchar2(10) not null ,
 title varchar2(16) not null ,
 wdate date not null ,
 pay number(3) not null ,
 hit number(3) default 0 ,
 email varchar(16) default 'no@it.com'
);
commit;
select * from guest;
commit;

insert into guest values(2234, 'aa', 'ace', sysdate, 51, 0, 'aa@kt.com') ;
insert into guest values(7789, 'bb', 'blue', sysdate, 41, 0, 'bb@sk.com') ;
insert into guest values(9900, 'cc', 'cake', sysdate, 71, 0, 'cc@lg.com') ;
commit;

col title for a12;
col email for a12;
set linesize 2000;
set pagesize 2000;
col name for a10;
commit;

select * from guest;

