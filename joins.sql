SELECT * FROM org.workers;
show databases;
use org;
show tables;
select * from workers;
select w.* , t.* from workers as w INNER JOIN title as t 
ON w.worker_id = t.WORKER_ID;

alter table title change column worker_id WORKER_ID int ; 