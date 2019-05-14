DROP DATABASE IF EXISTS `Events_db`;
CREATE DATABASE `Events_db`;
USE `Events_db`;

  
  
  CREATE TABLE `campus` (
  `id` Int( 11 ) AUTO_INCREMENT NOT NULL,
  `address` VARCHAR( 255) NOT NULL,
  `City` VARCHAR( 255) NOT NULL,
  `State` VARCHAR( 255) NOT NULL,
  `zip` integer( 10) NULL,
PRIMARY KEY ( `id` ) );
  
  CREATE TABLE `Events` (
  `id` Int( 11 ) AUTO_INCREMENT NOT NULL,
  `campus_id` int(11) ,
  `title` VARCHAR( 255) NOT NULL,
  `date` DATETIME  NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start_time` VARCHAR( 255) NOT NULL,
  `end_time` VARCHAR( 255) NOT NULL,
  `type` VARCHAR( 255) NOT NULL,
  `current_flag` varchar(1),

  PRIMARY KEY ( `id` ),
  FOREIGN KEY (Campus_ID) REFERENCES Campus(ID));

  delimiter //
CREATE PROCEDURE eventsproc()
  BEGIN
  update events
    SET current_flag = 'N'
    where date < sysdate();
END;
delimiter ;

delete from events;
delete from campus;
  
  
  insert into campus(address, city,state,zip) values ('3475 Piedmont avenue','Atlanta','GA','30305');
  insert into campus(address, city,state,zip) values ('1001 Windward Concourse','Alpharetta','GA','30005');
  insert into campus(address, city,state,zip) values ('4200 Wildwood Parkway','Atlanta','GA','30339');
  insert into campus(address, city,state,zip) values ('191 Rosa Parks St','Cincinnati','OH','45202');
  
  
  insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (1,'Icecream Social','2019-05-20','10:00','12:00','Social','Y');
    insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (1,'AWS Training','2019-05-22','14:00','16:00','Training','Y');
   insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (1,'Ping Pong Tournament','2019-05-24','09:00','16:00','Fun','Y');
    insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (2,'Icecream Social','2019-05-20','10:00','12:00','Social','Y');
    insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (2,'AWS Training','2019-05-22','14:00','16:00','Training','Y');
     insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (2,'Ping Pong Tournament','2019-05-24','09:00','16:00','Fun','Y');
    insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (3,'Icecream Social','2019-05-20','10:00','12:00','Social','Y');
    insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (3,'AWS Training','2019-05-22','14:00','16:00','Training','Y');
     insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (3,'Ping Pong Tournament','2019-05-24','09:00','16:00','Fun','Y');
    insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (4,'Icecream Social','2019-05-20','10:00','12:00','Social','Y');
    insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (4,'AWS Training','2019-05-22','14:00','16:00','Training','Y');
     insert into events(campus_id,title,date,start_time,end_time,type,current_flag) values 
  (4,'Ping Pong Tournament','2019-05-24','09:00','16:00','Fun','Y');