/* ProblemSet2 Table Set-up */

Create table Location (locationid number primary key, name varchar2(30), sunlight number, water number); 
Create table Gardener (gardenerid number primary key, name varchar2(30), age number); 
Create table Plant (plantid number primary key, name varchar2(30), sunlight number, water number, weight number); 
Create table planted (plantFK number, gardenerFK number, locationFK number, date1 date, seeds number, foreign key(plantFK) references plant(plantid), foreign key(gardenerFK) references gardener(gardenerid), foreign key(locationFK) references location(locationid)); 
Create table picked (plantFK number, gardenerFK number, locationFK number, date1 date, amount number, weight number, foreign key(plantFK) references plant(plantid), foreign key(gardenerFK) references gardener(gardenerid), foreign key(locationFK) references location(locationid)); 
