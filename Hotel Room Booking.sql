show databases;
create database Hotel_Room_Booking;
use Hotel_Room_Booking;

create table Pincode
(
Pincode integer,
City varchar(20),
State varchar(20),
primary key(Pincode)
);

insert into Pincode values(515001,"Anantapur","Andhra Pradesh");
insert into Pincode values(560002,"Bangalore","Karnataka");
insert into Pincode values(641001,"Coimbatore","Tamil Nadu");
insert into Pincode values(682011,"Ernakulam","Kerala");
insert into Pincode values(600001,"Chennai","Tamil Nadu");
insert into Pincode values(500003,"Hyderabad","Telangana");
insert into Pincode values(506004,"Warangal","Telangana");
insert into Pincode values(673601,"Calicut","Kerala");
insert into Pincode values(507001,"Khammam","Telangana");
insert into Pincode values(500020,"Visakhapatnam","Andhra Pradesh");

-- drop table Pincode;
-- select * from Pincode;

create table Hotel
(
Hotel_id integer,
Hotel_Name varchar(20),
Hotel_type varchar(20),
Road_no integer,
Street varchar(20),
primary key(Hotel_id),
Pincode integer,
foreign key(Pincode) references Pincode(Pincode)
);

insert into Hotel values(101,"Masineni Grand","Budget Hotel",32,"Bhagya Nagar",515001);
insert into Hotel values(149,"Swagath Royal","Extended Stay Hotel",67,"Madhapur",500003);
insert into Hotel values(234,"Clarks Inn","Airport Hotel",165,"Bettahalsur cross",560002);
insert into Hotel values(137,"Taj Krishna","Luxury Hotel",96,"Banjara Hills",500003);
insert into Hotel values(176,"Rest Inn","Budget Hotel",54,"Balaji Nagar",507001);
insert into Hotel values(153,"Ohris","Luxury Hotel",145,"Begumpet",500003);
insert into Hotel values(148,"Trident","Business Hotel",132,"HITEC City",500003);
insert into Hotel values(301,"Continental","Resort Hotel",122,"MG Road",682011);
insert into Hotel values(356,"Spring Way","Resort Hotel",142,"Kunnamangalam",673601);
insert into Hotel values(412,"Radisson Blu","Boutique Hotel",152,"Avinash Nagar",641001);
insert into Hotel values(439,"Parkway Inn","Budget Hotel",162,"Padur",600001);
insert into Hotel values(125,"The Beacon","Beachfront Hotel",32,"RK beach",500020);
insert into Hotel values(182,"ITC Kohenur","Luxury Hotel",63,"Madhapur",500003);

-- drop table Hotel;
-- select * from Hotel; 


create table Service
(
Service_id varchar(10),
Service_name varchar(20),
Service_type varchar(32),
primary key(Service_id)
);

insert into Service values("S101","Laundry","General Services");
insert into Service values("S102","Room Service","General Services");
insert into Service values("S103","Luggage Storage","General Services");
insert into Service values("S104","Spa treatments","Wellness Services");
insert into Service values("S105","Swimming Pool Access","Wellness Services");
insert into Service values("S106","Meeting Rooms","Business Services");
insert into Service values("S107","High-Speed Internet","General Services");
insert into Service values("S108","Kids'club activites","Family Services");
insert into Service values("S109","Airport Shuttle","Transportation Services");
insert into Service values("S110","Valet Parking","Transportation Services");
insert into Service values("S111","Co-Working Space","Business Services");

-- drop table Service;
-- select * from Service;

create table Offers
(
Service_id varchar(10),
Hotel_id integer,
price integer,
primary key(Service_id,Hotel_id),
foreign key(Service_id) references Service(Service_id),
foreign key(Hotel_id) references Hotel(Hotel_id)
);

insert into Offers values('S101',101,259);
insert into Offers values('S101',176,300);
insert into Offers values('S101',439,400);
insert into Offers values('S102',149,200);
insert into Offers values('S103',149,250);
insert into Offers values('S103',148,400);
insert into Offers values('S104',412,459);
insert into Offers values('S104',125,359);
insert into Offers values('S105',153,200);
insert into Offers values('S105',137,300);
insert into Offers values('S105',182,400);
insert into Offers values('S106',148,249);
insert into Offers values('S107',182,129);
insert into Offers values('S107',149,149);
insert into Offers values('S107',234,159);
insert into Offers values('S107',137,149);
insert into Offers values('S107',176,129);
insert into Offers values('S108',149,200);
insert into Offers values('S109',234,300);
insert into Offers values('S110',153,99);
insert into Offers values('S111',148,100);
insert into Offers values('S107',356,130);
insert into Offers values('S110',148,99);
insert into Offers values('S108',125,200);
insert into Offers values('S107',412,100);

-- drop table Offers;
-- select * from Offers;

create table Room
(
Room_id varchar(10),
Room_no integer,
primary key(Room_id),
Room_type varchar(32),
Availability varchar(10),
Description varchar(128),
Hotel_id integer,
foreign key(Hotel_id) references Hotel(Hotel_id)
);

insert into Room values('A101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',101);
insert into Room values('A102',102,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',101);
insert into Room values('A103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',101);
insert into Room values('A104',104,'Single Room','No','Ideal for one guest. Contains TV,in-room safe',101);
insert into Room values('A105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',101);
insert into Room values('B101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',125);
insert into Room values('B102',102,'Double Room','No','Ideal for two guests. Contains TV,in-room safe',125);
insert into Room values('B103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',125);
insert into Room values('B104',104,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',125);
insert into Room values('B105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',125);
insert into Room values('C101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',137);
insert into Room values('C102',102,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',137);
insert into Room values('C103',103,'Family Room','No','Catered to families. Contains TV,in-room safe and balcony view',137);
insert into Room values('C104',104,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',137);
insert into Room values('C105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',137);
insert into Room values('D101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',148);
insert into Room values('D102',102,'Double Room','No','Ideal for two guests. Contains TV,in-room safe',148);
insert into Room values('D103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',148);
insert into Room values('D104',104,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',148);
insert into Room values('D105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',148);
insert into Room values('E101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',149);
insert into Room values('E102',102,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',149);
insert into Room values('E103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',149);
insert into Room values('E104',104,'Single Room','No','Ideal for one guest. Contains TV,in-room safe',149);
insert into Room values('E105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',149);
insert into Room values('F101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',153);
insert into Room values('F102',102,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',153);
insert into Room values('F103',103,'Family Room','No','Catered to families. Contains TV,in-room safe and balcony view',153);
insert into Room values('F104',104,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',153);
insert into Room values('F105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',153);
insert into Room values('G101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',176);
insert into Room values('G102',102,'Double Room','No','Ideal for two guests. Contains TV,in-room safe',176);
insert into Room values('G103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',176);
insert into Room values('G104',104,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',176);
insert into Room values('G105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',176);
insert into Room values('H101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',182);
insert into Room values('H102',102,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',182);
insert into Room values('H103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',182);
insert into Room values('H104',104,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',182);
insert into Room values('H105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',182);
insert into Room values('I101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',234);
insert into Room values('I102',102,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',234);
insert into Room values('I103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',234);
insert into Room values('I104',104,'Single Room','No','Ideal for one guest. Contains TV,in-room safe',234);
insert into Room values('I105',105,'Single Room','No','Ideal for one guest. Contains TV,in-room safe',234);
insert into Room values('J101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',301);
insert into Room values('J102',102,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',301);
insert into Room values('J103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',301);
insert into Room values('J104',104,'Single Room','No','Ideal for one guest. Contains TV,in-room safe',301);
insert into Room values('J105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',301);
insert into Room values('K101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',356);
insert into Room values('K102',102,'Double Room','No','Ideal for two guests. Contains TV,in-room safe',356);
insert into Room values('K103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',356);
insert into Room values('K104',104,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',356);
insert into Room values('K105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',356);
insert into Room values('L101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',412);
insert into Room values('L102',102,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',412);
insert into Room values('L103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',412);
insert into Room values('L104',104,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',412);
insert into Room values('L105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',412);
insert into Room values('M101',101,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',439);
insert into Room values('M102',102,'Double Room','Yes','Ideal for two guests. Contains TV,in-room safe',439);
insert into Room values('M103',103,'Family Room','Yes','Catered to families. Contains TV,in-room safe and balcony view',439);
insert into Room values('M104',104,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',439);
insert into Room values('M105',105,'Single Room','Yes','Ideal for one guest. Contains TV,in-room safe',439);

-- drop table Room;
-- select * from Room;

create table Customer
(
Customer_id integer,
primary key(Customer_id),
Customer_name varchar(20),
H_no integer,
Street varchar(20),
Email varchar(20),
IsGuest bool,
Pincode integer,
foreign key(Pincode) references Pincode(Pincode)
);

insert into Customer values(1,'Yashwanth',4,'Vidya Nagar','yash123@gmail.com',false,500003);
insert into Customer values(2,'Karthik',17,'Ram Nagar','pkr222@gmail.com',false,515001);
insert into Customer values(3,'Sai Teja',53,'MG Road','st123@gmail.com',true,600001);
insert into Customer values(4,'Mahesh',12,'Nehru Road','pdsm111@gmail.com',false,507001);
insert into Customer values(5,'Akhil',14,'SP nagar','kas333@gmail.com',false,500020);
insert into Customer values(6,'Vishnu',24,'Bharat Nagar','vishsays@gmail.com',false,506004);
insert into Customer values(7,'Shiva',34,'Kukatpally','shivs@gmail.com',true,500003);
insert into Customer values(8,'Arun',34,'Madhapur','amarun@gmail.com',false,500003);
insert into Customer values(9,'Sreeram',54,'Kazipet','ksr29@gmail.com',true,506004);
insert into Customer values(10,'Karthikeya',64,'Kasergod','shawnfrost@gmail.com',false,560002);
insert into Customer values(11,'Manoj',74,'Calicut Circle','manoj8@gmail.com',true,673601);
insert into Customer values(12,'Vamshi',84,'Padur','vamz21@gmail.com',false,600001);
insert into Customer values(13,'Chandu',94,'Benz Circle','chandu233@gmail.com',true,641001);
insert into Customer values(14,'Rani',41,'Fathima Nagar','rani123@gmail.com',false,500020);

-- drop table Customer;
-- select * from Customer;

create table CustomerContact
(
Customer_id integer,
Contact_num varchar(10),
primary key(Customer_id,Contact_num),
foreign key (Customer_id) references Customer(Customer_id)
);

insert into CustomerContact values(1,'9490422671');
insert into CustomerContact values(2,'9490422672');
insert into CustomerContact values(3,'9490422673');
insert into CustomerContact values(4,'9490422674');
insert into CustomerContact values(5,'9490422675');
insert into CustomerContact values(5,'9490422676');
insert into CustomerContact values(6,'9490422677');
insert into CustomerContact values(7,'9490422678');
insert into CustomerContact values(8,'9490422679');
insert into CustomerContact values(9,'9490422680');
insert into CustomerContact values(10,'9490422681');
insert into CustomerContact values(11,'9490422682');
insert into CustomerContact values(12,'9490422683');
insert into CustomerContact values(13,'9490422684');
insert into CustomerContact values(14,'9490422685');

-- drop table CustomerContact;
-- select * from customercontact;

create table Guest
(
Customer_id integer,
primary key(Customer_id),
Guest_type varchar(10),
Preferred_roomtype varchar(20),
foreign key(Customer_id) references Customer(Customer_id)
);

insert into Guest values(3,'VIP','Family Room');
insert into Guest values(7,'VVIP','King Suite');
insert into Guest values(9,'Management','Family Room');
insert into Guest values(11,'Management','Single Room');
insert into Guest values(13,'VIP','Family Room');

-- drop table Guest;
-- select * from Guest;

/*create table GuestContact
(
Customer_id integer,
Contact_num varchar(10),
primary key(Customer_id,Contact_num),
foreign key (Customer_id) references Guest(Customer_id)
);
insert into GuestContact values(3,'9490422673');
insert into GuestContact values(7,'9490422678');
insert into GuestContact values(9,'9490422680');
insert into GuestContact values(11,'9490422682');
insert into GuestContact values(13,'9490422684');

 drop table GuestContact;
*/
create table Booking
(
Booking_id integer,
primary key(Booking_id),
Booking_title varchar(20),
Booking_date date,
Check_in_date date,
Check_out_date date,
Room_id varchar(10),
Customer_id integer,
foreign key(Room_id) references Room(Room_id),
foreign key(Customer_id) references Customer(Customer_id)
);

insert into Booking values(120,'Stay in Hyd',"2024-03-07",'2024-03-11','2024-03-29','E101',1);
insert into Booking values(121,'Business Meet',"2024-01-10",'2024-01-11','2024-01-12','D104',2);
insert into Booking values(122,'Hyd Trip',"2023-10-13",'2024-01-10','2024-01-18','E103',3);
insert into Booking values(123,'Booking No.123',"2023-12-12",'2023-12-12','2023-12-14','A101',4);
insert into Booking values(124,'Birthday Celebration',"2023-11-11",'2023-11-11','2023-11-12','C104',5);
insert into Booking values(125,'Prepaid C101 booking',"2023-12-10",'2024-02-12','2024-02-14','C101',6);
insert into Booking values(126,'Flight delay',"2023-11-10",'2023-11-10','2023-11-10','I101',7);
insert into Booking values(127,'Ernakulam Sea Visit',"2023-09-13",'2024-01-11','2024-01-18','J105',8);
insert into Booking values(128,'Kochi Trip',"2024-01-10",'2024-01-11','2024-01-14','K103',9);
insert into Booking values(129,'Vacation(Office)',"2024-02-10",'2024-02-11','2024-02-12','F102',10);
insert into Booking values(130,'TA trip',"2024-01-13",'2024-02-11','2024-02-11','G105',11);
insert into Booking values(131,'Chennai Visit',"2024-03-08",'2024-03-11','2024-03-14','M103',12);
insert into Booking values(132,'Visit to Vizag',"2024-02-18",'2024-04-11','2024-04-14','B103',13);
insert into Booking values(133,'Weekend Visit to Hyd',"2024-02-19",'2024-03-11','2024-03-14','H103',14);

-- drop table Booking;
-- select * from Booking;

create table Payment
(
Payment_id varchar(10),
Booking_id integer,
Date date,
Amount integer,
primary key(Payment_id),
foreign key(Booking_id) references Booking(Booking_id)
);

insert into Payment values('T4305671',120,'2024-03-07',3500);
insert into Payment values('T4305672',121,'2024-01-10',1500);
insert into Payment values('T4305673',122,'2023-10-13',3000);
insert into Payment values('T4305674',123,'2023-12-12',500);
insert into Payment values('T4305675',124,'2023-11-11',300);
insert into Payment values('T4305676',125,'2023-12-10',550);
insert into Payment values('T4305677',126,'2023-11-10',800);
insert into Payment values('T4305678',127,'2023-09-13',2000);
insert into Payment values('T4305679',128,'2024-01-10',800);
insert into Payment values('T4305680',129,'2024-02-10',2500);
insert into Payment values('T4305681',130,'2024-01-13',300);
insert into Payment values('T4305682',131,'2024-03-08',1200);
insert into Payment values('T4305683',132,'2024-02-18',1700);
insert into Payment values('T4305684',133,'2024-02-19',1500);

-- drop table Payment;
-- select * from Payment;
-- select * from Room where Availability='Yes';