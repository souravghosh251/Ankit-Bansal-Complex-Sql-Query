Create Table Persons(
id INT,
person_name VARCHAR(100) NOT NULL,
birth_date DATE ,
phone varchar(50) NOT NULL,
CONSTRAINT pk_persons PRIMARY KEY(id) 
)

ALTER TABLE persons
ADD email varchar(50) NOT NULL

ALTER TABLE persons
DROP column email 


select * from persons

DROP TABLE persons