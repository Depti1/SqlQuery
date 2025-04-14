SELECT * FROM org.bonus;
ALTER TABLE BONUS CHANGE COLUMN WORKER_REF_ID WORKER_ID INT;
select w.* , b.* , t.* from workers as w inner join bonus as b
on w.worker_id = b.worker_id inner join title as t 
on w.worker_id = t.worker_id ;