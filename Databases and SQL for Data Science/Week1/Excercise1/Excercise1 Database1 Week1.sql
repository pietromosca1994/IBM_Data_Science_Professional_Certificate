DROP TABLE INSTRUCTOR;
CREATE TABLE  INSTRUCTOR (ins_id integer NOT NULL PRIMARY KEY, lastname varchar(24) NOT NULL, firstname varchar(24) NOT NULL, city varchar(24), country char(2));
INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country)
VALUES(1, 'Ahuja', 'Rav', 'Toronto', 'CA');
INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country)
VALUES(2, 'Chong', 'Raul', 'Toronto', 'CA'), (3, 'Vasudevan', 'Hima', 'Chicago', 'US');
SELECT * FROM INSTRUCTOR;
SELECT firstname, lastname FROM INSTRUCTOR WHERE city='Toronto';
UPDATE INSTRUCTOR SET city='Markham' WHERE lastname='Ahuja';
DELETE FROM INSTRUCTOR WHERE lastname='Chong';
SELECT * FROM INSTRUCTOR;