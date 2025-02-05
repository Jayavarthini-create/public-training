Problem Set 03
==============

You've started a new movie-rating website, and you've been collecting data on reviewers' ratings of various movies. 
There's not much data yet, but you can still try out some interesting queries. 

What to Hand In:
---------------

For each table, you must show the SQL CREATE TABLE statement and any ALTER TABLE statements you use to set up your tables along with the results of those statements. You must also hand in a DESCRIBE statement for each one of the tables that shows a list of the columns in the table and their datatypes and lengths.
The best way to capture this information (the CREATE, ALTER, and DESCRIBE statements and their results) is to copy and paste your SQL commands and their results to a Notepad file. When you are done with all the parts of the assignment, you can print out the Notepad file and hand it in. As an example of what to hand in for the CREATE TABLE portion of the assignment, let’s say you create the TEST3 table. The primary key is a NUMBER with a maximum length of 6. The primary key column name is TEST3COL1. The table has two other columns: TEST3COL2 which is a VARCHAR2 of length 20 and TEST3COL3 which is a DATE.
Here is what you would hand in for the creation of this table. It includes a copy of your SQL CREATE TABLE statement, the SQL result saying that the table has been created, your execution of the DESC statement, and its result showing the definition of all the columns in that table.

```sql

SQL> create table test3

        (test3col1 number (6),

         test3col2 varchar2 (20),

         test3col3 date,

         constraint pk_test3

         primary key (test3col1));

 

Table created.

```


```sql

SQL> desc test3

 Name                            Null?    Type

 ------------------------------- -------- ----

 TEST3COL1                       NOT NULL NUMBER(6)

 TEST3COL2                                VARCHAR2(20)

 TEST3COL3                                DATE

```


You will use the data in the DATA section of this assignment to populate the database, i.e., use INSERT and UPDATE statements to insert the rows of values into the tables. You do not need to hand in copies or feedback from any of your INSERT and UPDATE statements. Once you have inserted all the data into your tables, you will create SELECT statements that will provide answers to the questions listed in the QUESTIONS section of this assignment. For each question, please hand in a copy of the SELECT statement you issue and the SQL Plus feedback. Again, the best way to do this is to copy and paste to a Notepad file. You can include this information in the same Notepad file you use to show your TABLE CREATE statements.
As an example of what to hand in for this portion of the assignment, let’s use the TEST3 table. Suppose it contains the following data:

```sql

TEST3COL1 TEST3COL2            TEST3COL3

--------- -------------------- ---------

   556677 Bicycle Seat         02-JAN-97

   443322 Air Pump             14-JAN-97

   889977 Water Bottle         27-JAN-97

```

If the question is “List all the data in table TEST3,” here is what you would show in your Notepad file. It includes a copy of the question (it’s important that you identify the question your SELECT statement is attempting to answer), your SELECT statement and the results of that SELECT statement. List all the data in table TEST3.

```sql

SQL> select * from test3;

TEST3COL1 TEST3COL2            TEST3COL3

--------- -------------------- ---------

   556677 Bicycle Seat         02-JAN-97

   443322 Air Pump             14-JAN-97

   889977 Water Bottle         27-JAN-97
   
```

TABLE DESCRIPTIONS
--------------------

Here's the schema: 

Movie ( mID, title, year, director ) 
English: There is a movie with ID number mID, a title, a release year, and a director. 

Reviewer ( rID, name ) 
English: The reviewer with ID number rID has a certain name. 

Rating ( rID, mID, stars, ratingDate )
English: The reviewer rID gave the movie mID a number of stars rating (1-5) on a certain ratingDate. 

Your queries will run over a small data set conforming to the schema. [You can also download the schema and data](https://s3-us-west-2.amazonaws.com/prod-c2g/db/Winter2013/files/rating.sql)
