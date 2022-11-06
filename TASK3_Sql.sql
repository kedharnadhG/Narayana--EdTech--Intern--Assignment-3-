create database moviess;
use moviess;

-- Query1   1)Create User Table

create TABLE user(id int primary key,firstName varchar(100) NOT NULL,lastName varchar(100) NOT NULL, age int NOT NULL,salary int NOT NULL);
describe user;
Insert into user values(1,'kedhar','nadh',21,10000);
Insert into user values(2,'vamsi','krishna',20,20000);
Insert into user values(3,'bhargav','sai',22,30000);
Insert into user values(4,'kiran','kumar',23,40000);
Insert into user values(5,'ganesh','babu',24,50000);
select * from user;
-- Query2    2)Create Multiple Movies Tables and add to the User table(Create Minimum 6 Movie tuples)

create TABLE movie(id int NOT NULL,moviename varchar(100) NOT NULL,hero varchar(100) NOT NULL, heroin varchar(100) NOT NULL,ticketprice int NOT NULL,movierating int NOT NULL,foreign key(id) references user(id));
Insert into movie values(1,'bimbisara','kalyanram','catherine',150,4);
Insert into movie values(2,'seetaramam','dq','mrunal',200,5);
Insert into movie values(3,'RRR','ntr','olivia',350,3);
Insert into movie values(4,'RadheShyam','prabhas','kajal',100,5);
Insert into movie values(5,'Pushpa','AA','rashmika',200,5);
Insert into movie values(1,'Pushpa','AA','rashmika',200,5);
Insert into movie values(2,'kantara','rishabshetty','kajal',100,10);
Insert into movie values(1,'kantara','rishab','kajal',100,10);
Insert into movie values(1,'acharya','ram','pooja hegde',100,10);
select * from movie;

-- Query3    3)Get List of all the movies watched by the User

select moviename from movie m,user u  where u.id=1 and u.id=m.id;

-- Query4     4)Get List of movies watched by the User and which movie ticket price is more than 150

select distinct moviename from user,movie where user.id=2 and movie.ticketprice>150 and user.id=movie.id;

-- Query5      5)Get List of movies watched by the User and which movie rating below 5 out of 10

select moviename from user,movie where user.id=1 and movierating between 0 and 5 and user.id=movie.id ;

-- Query6     6) Get List of movies watched by the User and where heroin repeats more than or equal to 2 times

select distinct moviename from user,movie where user.id =1 and user.id=movie.id and heroin IN(select heroin from movie Group By heroin having count(*)>=2);

-- Query7      7)Print total and avg amount he spent on the movies

select u.id,sum(ticketprice) as total,avg(ticketprice) as average from user u,movie m where u.id=2 and u.id=m.id;