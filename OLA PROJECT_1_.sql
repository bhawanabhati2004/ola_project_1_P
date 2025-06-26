CREATE DATABASE OLA;

USE OLA;

CREATE TABLE DRIVER
(
  DRIVER_ID INT PRIMARY KEY,
  DRIVER_NAME VARCHAR(20),
  DRIVER_AGE INT,
  CHARGER_PER_KM INT,
  VECHILE_TYPE ENUM ('BIKE','CAR','AUTO'),
  AVAILABILITY ENUM ('AVAILABILITY','NOT AVAILABILITY','RESERVED')
);

INSERT INTO DRIVER (DRIVER_ID, DRIVER_NAME, DRIVER_AGE, CHARGER_PER_KM, VECHILE_TYPE, AVAILABILITY)
VALUES
(1, 'John Doe', 30, 10, 'CAR', 'AVAILABILITY');


INSERT INTO DRIVER (DRIVER_ID, DRIVER_NAME, DRIVER_AGE, CHARGER_PER_KM, VECHILE_TYPE, AVAILABILITY)
VALUES
(3, 'Jane Smith', 25, 12, 'BIKE', 'NOT AVAILABILITY');


CREATE TABLE  PASSENGER 
(
DRIVER_NAME VARCHAR(45),
PICKUP_POINT VARCHAR(45),
DROP_POINT VARCHAR(35),
KM INT,
PRICE INT ,
passenger_d_id  INT,
foreign key (passenger_d_id) references driver(DRIVER_ID)
);

select * from driver left join passenger on 
driver.driver_id =passenger.drop_point;      -- apply the left join in this query it give the output according to the left table it give first priority to left table 

    
SELECT *FROM PASSENGER P right join DRIVER D 
ON P.passenger_d_id = D.DRIVER_ID;               -- apply the right  join in this query it give the output according to the right table it give first priority to left table

select * from passenger left join driver 
on passenger.passenger_d_id =driver.driver_id     -- APPLY THE CONDITION IN THE JOIN QUERY IT GIVE DRIVER NAME WHO IS START WITH J 
where driver.driver_name like 'j%';

SELECT * FROM DRIVER LEFT JOIN PASSENGER
ON driver.DRIVER_ID = passenger.passenger_d_id    -- ALSO APPLY THE CONDITION IN THE JOIN QUERY IT GIVE THOSE DATA WHO VECHILE TYPE IS THE BIKE 
WHERE driver.VECHILE_TYPE LIKE 'BIKE';

SELECT *FROM PASSENGER p JOIN DRIVER d ON 
p.passenger_d_id = d.DRIVER_ID                    -- apply condition in the join query 
WHERE p.DROP_POINT = 'national handlome';   

