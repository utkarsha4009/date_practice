create table testing(id int,name varchar2(30),join_date date);

insert into testing values(1,'A',to_date('2022-05-09','yyyy-mm-dd'));

select * from testing;

insert all
into testing values(2,'B',to_date('2022-07-01','yyyy-mm-dd'))
into testing values(3,'C',to_date('2022-09-21','yyyy-mm-dd'))
into testing values(4,'D',to_date('2022-11-27','yyyy-mm-dd'))
select * from dual;

select * from testing where join_date between to_date('2022-06-01','yyyy-mm-dd')
and to_date('2022-09-30','yyyy-mm-dd');

select * from testing where join_date = to_date('2022-07-01','yyyy-mm-dd');

select months from 
(select id,name,to_char(join_date,'mm')as months from testing)where name='A';

select testing.*,to_char(join_date,'dd')as day from testing;


select testing.*,to_char(join_date,'dd')as day ,
to_char(join_date,'mm')as month , 
to_char (join_date,'yyyy')as year from testing;

select * from testing;



