DROP DATABASE IF EXISTS `Events_db`;
CREATE DATABASE `Events_db`;
USE `Events_db`;


  
  CREATE TABLE `Events` (
  `id` Int( 11 ) AUTO_INCREMENT NOT NULL,
  `campus` VARCHAR( 255) NOT NULL,
  `title` VARCHAR( 255) NOT NULL,
  `date` DATETIME  NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start_time` VARCHAR( 255) NOT NULL,
  `end_time` VARCHAR( 255) NOT NULL,
  `type` VARCHAR( 255) NOT NULL,
  `future` Boolean,

  PRIMARY KEY ( `id` ));

  delimiter //
CREATE PROCEDURE eventsproc()
  BEGIN
  update events
    SET current_flag = '0'
    where date < sysdate();
END;
delimiter;

delete from events;

  
  
  insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Buckhead','Icecream Social','2019-05-20','10:00','12:00','Social','1');
    insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Buckhead','AWS Training','2019-05-22','14:00','16:00','Training','1');
   insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Buckhead','Ping Pong Tournament','2019-05-24','09:00','16:00','Fun','1');
    insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Alpharetta','Icecream Social','2019-05-20','10:00','12:00','Social','1');
    insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Alpharetta','AWS Training','2019-05-22','14:00','16:00','Training','1');
     insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Alpharetta','Ping Pong Tournament','2019-05-24','09:00','16:00','Fun','1');
    insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Cincinnati','Icecream Social','2019-05-20','10:00','12:00','Social','1');
    insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Cincinnati','AWS Training','2019-05-22','14:00','16:00','Training','1');
     insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Cincinnati','Ping Pong Tournament','2019-05-24','09:00','16:00','Fun','1');
    insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Schenectady','Icecream Social','2019-05-20','10:00','12:00','Social','1');
    insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Schenectady','AWS Training','2019-05-22','14:00','16:00','Training','1');
     insert into events(campus,title,date,start_time,end_time,type,current_flag) values 
  ('Schenectady','Ping Pong Tournament','2019-05-24','09:00','16:00','Fun','1');
