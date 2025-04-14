SELECT * FROM org.workers;
select w.* , b.* from workers as w left join bonus as b 
on w.worker_id = b.worker_id;

use employee;
create table employees (
       id int not null primary key,
       fname varchar(25)  not null ,
       lname varchar(25) not null,
       age int ,
       email_id  varchar(50),
       phone_no int,
       city varchar(25) 
       );
insert into employees values(1,'aman' , 'proto' , 33 , 'aman@gmail.com',898 , 'delhi'),
(2,'yagya','narayan',44,'yagya@gmail.com',234,'palam'),
(3 ,'rahul','bd',22 ,'rahul@gmail.com',235,'kolkata'),
(4,'jatin','hemit',41 , 'jatin@gmail.com',567,'raipur'),
(5,'pk','pandey',31 , 'pk@gmail.com' ,789,'jaipur');
create table project (
       id int not null primary key,
       
     name varchar(25) not null,
	 start_date date ,
     emp_id int,
	  foreign key(emp_id) references employees(id) ,
      client_id int,
      foreign key(client_id) references client(id)
);
create table client (
       id int not null primary key,
       
      fname varchar(25)  not null ,
       lname varchar(25) not null,
       age int ,
       email_id  varchar(50),
       phone_no int,
       city varchar(25) ,
       emp_id int,
	  foreign key(emp_id) references employees(id)
    
);
insert into client values(1,'a' , 'pro' , 33 , 'n@gmail.com',89 , 'delhi',3),
(2,'b','nar',40,'yag@gmail.com',34,'palam',3),
(3 ,'c','bcom',20 ,'r@gmail.com',35,'kolkata',1),
(4,'d','hem',40 , 'j@gmail.com',67,'raipur',5),
(5,'e','pan',30 , 'p@gmail.com' ,89,'jaipur',2);
insert into project values(1,'p'  , '1-02-12' ,1,3 ),
(2,'q','15-10-23',2,1),
(3 ,'s','22-12-20' ,3,5),
(4,'j','23-07-21' , 3,2),
(5,'r','31-12-22' , 5,4);