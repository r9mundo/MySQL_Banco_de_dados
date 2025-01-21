create database titanic;

use titanic;



create table passenger(
	id_passenger int not null,
    survived char(1),
	pclass char(1),
    name varchar(100),
	sex ENUM('male','female'),
	age varchar(5),
    sibsp char(1),
    parch char(1),
    ticket varchar(30),
	fare float,
    cabin varchar(20),
    embarked varchar(5),
	primary key(id_passenger)
);

describe passenger;


select * from passenger;

/*EX1*/
select passenger.ticket, passenger.name
from passenger;

/*EX2*/
SELECT COUNT(id_passenger)
FROM passenger
WHERE Age > 18;

/*EX3*/
SELECT COUNT(id_passenger)
FROM passenger
WHERE survived =1;

/*EX4*/
SELECT COUNT(id_passenger)
FROM passenger
WHERE survived =0;

/*EX6*/
select * FROM passenger
where name like "O'Brien%"
and passenger.survived;


/*EX7*/
SELECT COUNT(id_passenger)
FROM passenger
WHERE sex ='female';

/*EX7*/
SELECT COUNT(id_passenger)
FROM passenger
WHERE sex ='male';

/*EX10*/
SELECT COUNT(id_passenger)
FROM passenger
WHERE pclass =1;

SELECT COUNT(id_passenger)
FROM passenger
WHERE pclass =2;

SELECT COUNT(id_passenger)
FROM passenger
WHERE pclass =3;

/*EX11*/
SELECT COUNT(id_passenger)
FROM passenger
WHERE sex ='female'
and age >30;

/*EX12*/
SELECT * from passenger
where sex = 'female' and age > 30;

SELECT * from passenger
where sex = 'female' and (pclass = 1 and age > 30);

/*EX13*/
SELECT COUNT(id_passenger)
from passenger
where sex = 'male' and pclass =1;