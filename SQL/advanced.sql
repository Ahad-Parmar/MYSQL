CREATE DATABASE transport;
use transport;


create table trucktransport
(
te_id varchar (10) primary key,
name varchar (50),
truck_no varchar(50),
route varchar(50),
fare date,
fare_price int
);

INSERT INTO trucktransport VALUES ('8789655421', 'sundara', 'GJ 12A 7854 ', 'mumbai', '2020-08-24', '20000');
INSERT INTO trucktransport VALUES ('8789657854', 'sundare', 'GJ 12B 5478', 'ahmedabad', '2020-11-08', '30000');
INSERT INTO trucktransport VALUES ('8789652154', 'sundari', 'GJ 12C 8965', 'banglore', '1999-04-14', '20500');
INSERT INTO trucktransport VALUES ('8789657865', 'sundaro', 'GJ 12D 3265', 'hyderabad', '2012-06-16', '35000');
INSERT INTO trucktransport VALUES ('8789655968', 'sundaru', 'GJ 12E 2154', 'udaipur', '1998-07-27', '10050');
INSERT INTO trucktransport VALUES ('8789652154', 'sundars', 'GJ 12F 5975', 'gandhinagar', '2003-12-02', '50000');
INSERT INTO trucktransport VALUES ('8789655954', 'sundaram', 'GJ 12G 2154', 'nashik', '2004-04-14', '45000');

CREATE TABLE truckemployee (
        te_id varchar(20) primary key,
	name varchar(50),
	truck_no varchar(50),
 	route varchar(50),
	fare date,
	fare_price int
    deletedAt TIMESTAMP DEFAULT NOW()
);

DELIMITER $$
CREATE TRIGGER before_employee_delete 
BEFORE DELETE
ON trucktransport FOR EACH ROW
BEGIN
    INSERT INTO truckemployee(te_id, name, truck_no, route , fare, fare_price)
    VALUES(OLD.e_id, OLD.name, OLD.truck_no, OLD.route, OLD.fare, OLD.fare_price);
END$$
DELIMITER ;

-- testing delete trigger
DELETE FROM trucktransport 
WHERE te_id = 8789655421;

-- DROP TRIGGER
drop trigger before_employee_delete;

-- DISPLAY TRIGGER
show triggers
in transport;
