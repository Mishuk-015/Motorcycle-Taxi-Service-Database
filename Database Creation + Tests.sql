
drop FUNCTION activeDriverCount;
drop PROCEDURE activePassengerCount;
drop trigger A;
drop trigger oninsertride;
drop table ride;
drop table manager;
drop table driver;
drop table passenger;


create table driver(
	driver_id varchar(10),
	contact_no number(11) unique,
	driver_name varchar(30),
	motorcycle_registration_no number(15) unique,
	preferred_area varchar(20),
	no_of_trips integer default 0,
	primary key(driver_id)
);

create table passenger(
	passenger_id varchar(10),
	contact_no number(11) unique,
	passenger_name varchar(30),
	email_address varchar(30) unique,
	no_of_trips integer default 0,
	primary key(passenger_id)
);

create table ride(
	ride_no integer,
	driver_id varchar(10),
	passenger_id varchar(10),
	dates varchar(15),
	pick_up_area varchar(20),
	drop_off_area varchar(20),
	pick_up_time varchar(10),
	payment_amount number(9,2),
	primary key(ride_no),
	foreign key(driver_id) references driver(driver_id),
	foreign key(passenger_id) references passenger(passenger_id)
);

create table manager(
	driver_id varchar(10),
	manager_id varchar(10),
	contact_no varchar(11),
	name varchar(20),
	email_address varchar(20),
	primary key(driver_id),
	foreign key(driver_id) references driver(driver_id)
);



insert into driver (driver_id,contact_no,driver_name,motorcycle_registration_no,preferred_area,no_of_trips) 
	values('dr101',01711000001,'Arnob haider',100000000000001,'uttora',1);/*1021021111*/
insert into driver (driver_id,contact_no,driver_name,motorcycle_registration_no,preferred_area,no_of_trips) 
	values('dr102',01711000002,'Brinto ahmed',100000000000002,'uttora',0);
insert into driver (driver_id,contact_no,driver_name,motorcycle_registration_no,preferred_area,no_of_trips) 
	values('dr103',01711000003,'Chonchol rahman',100000000000003,'mirpur 10',2);
insert into driver (driver_id,contact_no,driver_name,motorcycle_registration_no,preferred_area,no_of_trips) 
	values('dr104',01711000004,'Roshid howlader',100000000000004,'mirpur 6',1);
insert into driver (driver_id,contact_no,driver_name,motorcycle_registration_no,preferred_area,no_of_trips) 
	values('dr105',01711000005,'Kazi morshed',100000000000005,'Mogbazar',0);
insert into driver (driver_id,contact_no,driver_name,motorcycle_registration_no,preferred_area,no_of_trips) 
	values('dr106',01711000006,'Anika rahman',100000000000006,'Banglamotor',2);
insert into driver (driver_id,contact_no,driver_name,motorcycle_registration_no,preferred_area,no_of_trips) 
	values('dr107',01711000007,'Sourav saha',100000000000007,'Mogbazar',1);
insert into driver (driver_id,contact_no,driver_name,motorcycle_registration_no,preferred_area,no_of_trips) 
	values('dr108',01711000008,'Debopriyo halder',100000000000008,'Mogbazar',1);
insert into driver (driver_id,contact_no,driver_name,motorcycle_registration_no,preferred_area,no_of_trips) 
	values('dr109',01711000009,'Mizanur rahman',100000000000009,'Gulshan',1);
insert into driver (driver_id,contact_no,driver_name,motorcycle_registration_no,preferred_area,no_of_trips) 
	values('dr110',01711000010,'Nipa roy',100000000000010,'mirpur 10',1);

insert into passenger(passenger_id,contact_no,passenger_name,email_address,no_of_trips) 
	values('pa101',01521000001,'Akib reza','akib@gmail.com',2);/*2011111111*/
insert into passenger(passenger_id,contact_no,passenger_name,email_address,no_of_trips) 
	values('pa102',01521000002,'Tahmid rahman','tahmid@gmail.com',0);
insert into passenger(passenger_id,contact_no,passenger_name,email_address,no_of_trips) 
	values('pa103',01521000003,'Sarjina chowdhury','saha@gmail.com',1);
insert into passenger(passenger_id,contact_no,passenger_name,email_address,no_of_trips) 
	values('pa104',01521000004,'Shahriar ahmed','Shahriar@gmail.com',1);
insert into passenger(passenger_id,contact_no,passenger_name,email_address,no_of_trips) 
	values('pa105',01521000005,'Priyoronjon das','Priyoronjon11@gmail.com',1);
insert into passenger(passenger_id,contact_no,passenger_name,email_address,no_of_trips) 
	values('pa106',01521000006,'James de costa','Jcosta@gmail.com',1);
insert into passenger(passenger_id,contact_no,passenger_name,email_address,no_of_trips) 
	values('pa107',01521000007,'Tanvir hossain','Tanvir89@gmail.com',1);
insert into passenger(passenger_id,contact_no,passenger_name,email_address,no_of_trips) 
	values('pa108',01521000008,'Nabila rahman','Nabila.sust@gmail.com',1);
insert into passenger(passenger_id,contact_no,passenger_name,email_address,no_of_trips) 
	values('pa109',01521000009,'Borsha dey','Borshadey@gmail.com',1);
insert into passenger(passenger_id,contact_no,passenger_name,email_address,no_of_trips) 
	values('pa110',01521000010,'Raihan Hossain','Raidenslayer@gmail.com',1);

	

insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) 
	values(10001,'dr101','pa101','28/02/2018','uttora','mirpur 10','10:30 am',500);
insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) 
	values(10002,'dr103','pa101','28/02/2018','mirpur 10','uttora','5:30 pm',500);
insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) 
	values(10003,'dr103','pa103','28/02/2018','komlapur','mogbazar','8:00 pm',250);
insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) 
	values(10004,'dr104','pa105','28/02/2018','komlapur','mogbazar','8:00 am',250);
insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) 
	values(10005,'dr106','pa106','28/02/2018','mirpur 6','mogbazar','9:00 am',300);
insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) 
	values(10006,'dr106','pa110','28/02/2018','Banglamotor','mogbazar','7:00 pm',200);
insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) 
	values(10007,'dr109','pa109','28/02/2018','komlapur','Gulshan','5:00 pm',400);
insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) 
	values(10008,'dr110','pa104','28/02/2018','uttora','Gulshan','4:40 pm',600);
insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) 
	values(10009,'dr107','pa108','28/02/2018','komlapur','mirpur 10','8:00 pm',350);
insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) 
	values(10010,'dr108','pa107','28/02/2018','komlapur','mogbazar','11:20 am',250);

/*set serveroutput on 
declare 
f utl_file.file_type;
line varchar(5000);
did manager.driver_id%type;
mid manager.manager_id%type;
cno manager.contact_no%type;
names manager.name%type;
email manager.email_address%type;
begin
f:= utl_file.fopen('ERMS','manager.csv','r');
if utl_file.is_open(f) then
utl_file.get_line(f,line,5000);
loop
begin
utl_file.get_line(f,line,5000);
if line is null then exit;
end if;
did:= regexp_substr(line,'[^,]+',1,1);
mid:= regexp_substr(line,'[^,]+',1,2);
cno:= regexp_substr(line,'[^,]+',1,3);
names:= regexp_substr(line,'[^,]+',1,4);
email:= regexp_substr(line,'[^,]+',1,5);
insert into manager values(did,mid,cno,names,email);
commit;
exception when no_data_found then exit;
end;
end loop;
end if;
--utl_file_fclose(f);
end;

/
*/
insert into manager(driver_id,manager_id,contact_no,name,email_address) 
	values('dr101','ma101',01818000001,'Kashem haider','kashem@gmail.com');
insert into manager(driver_id,manager_id,contact_no,name,email_address)
 	values('dr102','ma101',01818000001,'Kashem haider','kashem@gmail.com');
insert into manager(driver_id,manager_id,contact_no,name,email_address) 
	values('dr103','ma101',01818000001,'Kashem haider','kashem@gmail.com');
insert into manager(driver_id,manager_id,contact_no,name,email_address) 
	values('dr104','ma101',01818000001,'Kashem haider','kashem@gmail.com');
insert into manager(driver_id,manager_id,contact_no,name,email_address) 
	values('dr105','ma101',01818000001,'Kashem haider','kashem@gmail.com');
insert into manager(driver_id,manager_id,contact_no,name,email_address) 
	values('dr106','ma102',01818000002,'Arafat talukder','Arafatzzz@gmail.com');
insert into manager(driver_id,manager_id,contact_no,name,email_address) 
	values('dr107','ma102',01818000002,'Arafat talukder','Arafatzzz@gmail.com');
insert into manager(driver_id,manager_id,contact_no,name,email_address) 
	values('dr108','ma102',01818000002,'Arafat talukder','Arafatzzz@gmail.com');
insert into manager(driver_id,manager_id,contact_no,name,email_address) 
	values('dr109','ma102',01818000002,'Arafat talukder','Arafatzzz@gmail.com');
insert into manager(driver_id,manager_id,contact_no,name,email_address) 
	values('dr110','ma102',01818000002,'Arafat talukder','Arafatzzz@gmail.com');


commit;

select * from driver;
select * from passenger;
select * from ride;
select * from manager;

select driver_id,passenger_id,payment_amount from ride;
select sum(payment_amount) as Bill from ride;
select driver_name,driver.contact_no,manager.name,manager.email_address from driver,manager;
select avg(distinct payment_amount) as DistinctByAmount_Bill from ride group by(payment_amount);
update manager set manager_id='ma102',contact_no='01818000002',name='Baki Billah',email_address='Baki123@yahoo.com' where driver_id='dr101';
select passenger_id,sum(payment_amount) as TOTAL_BILL from ride where passenger_id!='pa104' group by(passenger_id) having sum(payment_amount)<=1000;
select passenger_id from passenger where passenger_name like 'akib%';



create or replace trigger A before update on manager
	for each row
	DECLARE
		a_wage2 number:=-007;
	BEGIN
		DBMS_OUTPUT.PUT_LINE('ERROR CODE '||a_wage2||'.Manager Details Updated!!!');
	END;
/
update manager set manager_id='ma102',contact_no='01818000002',name='Baki Billah',email_address='Baki123@yahoo.com' where driver_id='dr101';
select * from manager;	

select ride.ride_no,ride.passenger_id,ride.payment_amount from ride inner join driver on ride.driver_id=driver.driver_id;

create FUNCTION activeDriverCount RETURN number is
	drNumber number(3):=100;
BEGIN
	select count(driver.driver_id) into drNumber from driver where driver.no_of_trips>0;
	return drNumber;

END;
/
create PROCEDURE activePassengerCount As
	paNumber number(3):=100;
BEGIN
	select count(passenger.passenger_id) into paNumber from passenger where passenger.no_of_trips>0;
	DBMS_OUTPUT.PUT_LINE('No of Active Passenger:'||paNumber);

END;


set serveroutput on
DECLARE
	NdrNumber number(3);
BEGIN
	NdrNumber:=activeDriverCount();
	DBMS_OUTPUT.PUT_LINE('No of Active Drivers:'||NdrNumber);

end;
/

set serveroutput on


DECLARE
	CURSOR d is select payment_amount,driver_id from ride;
	d_record d%rowtype;
	totalbill number(9,2):=0;

BEGIN
	OPEN d;
	LOOP
		FETCH d into d_record;
		EXIT when d%notfound;
		if(d_record.driver_id='dr103')
		THEN
			totalbill:=totalbill+d_record.payment_amount;
		end if;
	end LOOP;
	DBMS_OUTPUT.PUT_LINE('Totalbill:'||totalbill);
	CLOSE d;
END;
/

create trigger oninsertride after insert on ride
for each row
DECLARE
	dnot driver.no_of_trips%type;
	pnot passenger.no_of_trips%type;   
BEGIN
	select no_of_trips into dnot from driver where driver_id=:new.driver_id;
	select no_of_trips into pnot from passenger where passenger_id=:new.passenger_id;
	update driver set no_of_trips=dnot+1 where driver.driver_id=:new.driver_id;
	update passenger set no_of_trips=pnot+1 where passenger.passenger_id=:new.passenger_id;
END;
/

insert into ride(ride_no,driver_id,passenger_id,dates,pick_up_area,drop_off_area,pick_up_time,payment_amount) values(10011,'dr103','pa101','29/02/2018','komlapur','mogbazar','11:20 am',250);

select driver_id,no_of_trips from Driver;
select passenger_id,no_of_trips from passenger;

select ride.ride_no,ride.passenger_id,ride.payment_amount from ride inner join driver on ride.driver_id=driver.driver_id;
DECLARE
	CURSOR d is select payment_amount,driver_id from ride;
	d_record d%rowtype;
	totalbill number(9,2):=0;

BEGIN
	OPEN d;
	LOOP
		FETCH d into d_record;
		EXIT when d%notfound;
		if(d_record.driver_id='dr103')
		THEN
			totalbill:=totalbill+d_record.payment_amount;
		end if;
	end LOOP;
	DBMS_OUTPUT.PUT_LINE('Totalbill:'||totalbill);
	CLOSE d;
END;
/
select driver_id from manager;
commit;
