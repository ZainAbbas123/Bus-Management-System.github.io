drop database tigermoves
create database tigermoves

drop table passangers
create table passangers
(
NIC varchar(15) primary key,
name varchar(20) not null,
PhoneNo varchar(11) not null,
email varchar(30),
password varchar(50)
);


--drop table passangers
select *from passangers

--------------------------------------------------------------------------

create table Reservation
(
ReservatioId int primary key,
P_ID varchar(15)not null,
--ManagerId int,
TicketId int
RouteId varchar(20),
);


--drop table Reservation

--drop table Manager
--------------------------------------------------------------------------
create table Manager
(
ManagerId int primary key,
RouteId varchar(20), 
name varchar(20) not null,
TerminalId varchar(20) not null,
PhoneNo int not null,
email varchar(30)
);

select convert(date,getdate())


drop table dates
-- Current Date
create table dates
(
current_date1 date,
)
insert into dates values
(convert(date,getdate())),
(convert(date,getdate()+1)),
(convert(date,getdate()+2))

select * from dates



create table refreshment
(
P_ID varchar(15) primary key,
items varchar(50),
Hostess_id int
)


----------------------------------------------------------------------------
create table Bus_hostes
(
Hostes_Id int primary key,
Name varchar(20)not null,
BusId varchar(20),
salary int ,
terminalId varchar(20)
);

--drop table route

--------------------------------------------------------------------------
create table [route]
( 
RouteId varchar(20) primary key,
Departure_location varchar(30)not null,
Arrival_location varchar(30) not null,
fare int
);


insert into [route] values
('MTN-LHR','Multan','Lahore',2000),
('LHR-ISB','Lahore','Islamabad',1500),
('KHE-RWP','Karachi','Rawalpindi',1000)

drop table departure_date


create table departure_date
( 
ID varchar(20),
RouteId varchar(20),
busTime varchar(20),
busDate date,
BusNumber varchar(20)
CONSTRAINT COMP_K primary key(RouteId,busTime,busDate)
)

--select * from  bus  join departure_date on bus.RouteId=departure_date.RouteId 
--where 'ml101' = bus.BusNumber and departure_date.busDate='2020-12-25' and departure_date.busTime = '04:00'

insert into departure_date values
('1','MTN-LHR','02:00',convert(date,getdate()),'ML111'),
('2','MTN-LHR','00:00',convert(date,getdate()),'ML101'),
('3','MTN-LHR','04:00',convert(date,getdate()),'ML102'),
('4','MTN-LHR','08:00',convert(date,getdate()),'ML103'),
('5','MTN-LHR','12:00',convert(date,getdate()),'ML104'),
('6','MTN-LHR','14:00',convert(date,getdate()),'ML105'),
('7','MTN-LHR','16:00',convert(date,getdate()),'ML106'),
('8','MTN-LHR','18:00',convert(date,getdate()),'ML107'),
('9','MTN-LHR','20:00',convert(date,getdate()),'ML108'),
('10','MTN-LHR','22:00',convert(date,getdate()),'ML109'),

('1','LHR-ISB','00:00',convert(date,getdate()),'LI101'),
('2','LHR-ISB','04:00',convert(date,getdate()),'LI102'),
('3','LHR-ISB','08:00',convert(date,getdate()),'LI103'),
('4','LHR-ISB','12:00',convert(date,getdate()),'LI104'),
('5','LHR-ISB','14:00',convert(date,getdate()),'LI105'),
('6','LHR-ISB','16:00',convert(date,getdate()),'LI106'),
('7','LHR-ISB','18:00',convert(date,getdate()),'LI107'),
('8','LHR-ISB','20:00',convert(date,getdate()),'LI108'),
('9','LHR-ISB','22:00',convert(date,getdate()),'LI109'),

('1','KHE-RWP','00:00',convert(date,getdate()),'KR101'),
('2','KHE-RWP','04:00',convert(date,getdate()),'KR102'),
('3','KHE-RWP','08:00',convert(date,getdate()),'KR103'),
('4','KHE-RWP','12:00',convert(date,getdate()),'KR104'),
('5','KHE-RWP','14:00',convert(date,getdate()),'KR105'),
('6','KHE-RWP','16:00',convert(date,getdate()),'KR106'),
('7','KHE-RWP','18:00',convert(date,getdate()),'KR107'),
('8','KHE-RWP','20:00',convert(date,getdate()),'KR108'),
('9','KHE-RWP','22:00',convert(date,getdate()),'KR109'),



               -- Next Date 
('1','MTN-LHR','02:00',convert(date,getdate()+1),'ML111'),
('2','MTN-LHR','00:00',convert(date,getdate()+1),'ML101'),
('3','MTN-LHR','04:00',convert(date,getdate()+1),'ML102'),
('4','MTN-LHR','08:00',convert(date,getdate()+1),'ML103'),
('5','MTN-LHR','12:00',convert(date,getdate()+1),'ML104'),
('6','MTN-LHR','14:00',convert(date,getdate()+1),'ML105'),
('7','MTN-LHR','16:00',convert(date,getdate()+1),'ML106'),
('8','MTN-LHR','18:00',convert(date,getdate()+1),'ML107'),
('9','MTN-LHR','20:00',convert(date,getdate()+1),'ML108'),
('10','MTN-LHR','22:00',convert(date,getdate()+1),'ML109'),

('1','LHR-ISB','00:00',convert(date,getdate()+1),'LI101'),
('2','LHR-ISB','04:00',convert(date,getdate()+1),'LI102'),
('3','LHR-ISB','08:00',convert(date,getdate()+1),'LI103'),
('4','LHR-ISB','12:00',convert(date,getdate()+1),'LI104'),
('5','LHR-ISB','14:00',convert(date,getdate()+1),'LI105'),
('6','LHR-ISB','16:00',convert(date,getdate()+1),'LI106'),
('7','LHR-ISB','18:00',convert(date,getdate()+1),'LI107'),
('8','LHR-ISB','20:00',convert(date,getdate()+1),'LI108'),
('9','LHR-ISB','22:00',convert(date,getdate()+1),'LI109'),

('1','KHE-RWP','00:00',convert(date,getdate()+1),'KR101'),
('2','KHE-RWP','04:00',convert(date,getdate()+1),'KR102'),
('3','KHE-RWP','08:00',convert(date,getdate()+1),'KR103'),
('4','KHE-RWP','12:00',convert(date,getdate()+1),'KR104'),
('5','KHE-RWP','14:00',convert(date,getdate()+1),'KR105'),
('6','KHE-RWP','16:00',convert(date,getdate()+1),'KR106'),
('7','KHE-RWP','18:00',convert(date,getdate()+1),'KR107'),
('8','KHE-RWP','20:00',convert(date,getdate()+1),'KR108'),
('9','KHE-RWP','22:00',convert(date,getdate()+1),'KR109'),


               -- Next Date 
('1','MTN-LHR','02:00',convert(date,getdate()+2),'ML111'),
('2','MTN-LHR','00:00',convert(date,getdate()+2),'ML101'),
('3','MTN-LHR','04:00',convert(date,getdate()+2),'ML102'),
('4','MTN-LHR','08:00',convert(date,getdate()+2),'ML103'),
('5','MTN-LHR','12:00',convert(date,getdate()+2),'ML104'),
('6','MTN-LHR','14:00',convert(date,getdate()+2),'ML105'),
('7','MTN-LHR','16:00',convert(date,getdate()+2),'ML106'),
('8','MTN-LHR','18:00',convert(date,getdate()+2),'ML107'),
('9','MTN-LHR','20:00',convert(date,getdate()+2),'ML108'),
('10','MTN-LHR','22:00',convert(date,getdate()+2),'ML109'),

('1','LHR-ISB','00:00',convert(date,getdate()+2),'LI101'),
('2','LHR-ISB','04:00',convert(date,getdate()+2),'LI102'),
('3','LHR-ISB','08:00',convert(date,getdate()+2),'LI103'),
('4','LHR-ISB','12:00',convert(date,getdate()+2),'LI104'),
('5','LHR-ISB','14:00',convert(date,getdate()+2),'LI105'),
('6','LHR-ISB','16:00',convert(date,getdate()+2),'LI106'),
('7','LHR-ISB','18:00',convert(date,getdate()+2),'LI107'),
('8','LHR-ISB','20:00',convert(date,getdate()+2),'LI108'),
('9','LHR-ISB','22:00',convert(date,getdate()+2),'LI109'),

('1','KHE-RWP','00:00',convert(date,getdate()+2),'KR101'),
('2','KHE-RWP','04:00',convert(date,getdate()+2),'KR102'),
('3','KHE-RWP','08:00',convert(date,getdate()+2),'KR103'),
('4','KHE-RWP','12:00',convert(date,getdate()+2),'KR104'),
('5','KHE-RWP','14:00',convert(date,getdate()+2),'KR105'),
('6','KHE-RWP','16:00',convert(date,getdate()+2),'KR106'),
('7','KHE-RWP','18:00',convert(date,getdate()+2),'KR107'),
('8','KHE-RWP','20:00',convert(date,getdate()+2),'KR108'),
('9','KHE-RWP','22:00',convert(date,getdate()+2),'KR109')

select * from departure_date


--drop table route
drop table Bus


-----------------------------------------------------------------------------
create table Bus
(
BusNumber varchar(20),
RouteId varchar(20) not null,
No_Of_Seats int,
Bus_date date,
bus_seats varchar(30),
CONSTRAINT COMP_K1 primary key(BusNumber,Bus_date)
);
insert into Bus values
('ML101','MTN-LHR',30,convert(date,getdate()),'0000000000000000000000000000'),
('ML102','MTN-LHR',30,convert(date,getdate()),'00000000000000000000000000000'),
('ML103','MTN-LHR',30,convert(date,getdate()),'00000000000000000000000000000'),
('ML104','MTN-LHR',30,convert(date,getdate()),'00000000000000000000000000000'),
('ML105','MTN-LHR',30,convert(date,getdate()),'000000000000000000000000000000'),
('ML106','MTN-LHR',30,convert(date,getdate()),'000000000000000000000000000000'),
('ML107','MTN-LHR',30,convert(date,getdate()),'000000000000000000000000000000'),
('ML108','MTN-LHR',30,convert(date,getdate()),'000000000000000000000000000000'),
('ML109','MTN-LHR',30,convert(date,getdate()),'000000000000000000000000000000'),

('LI101','LHR-ISB',30,convert(date,getdate()),'000000000000000000000000000000'),
('LI102','LHR-ISB',30,convert(date,getdate()),'000000000000000000000000000000'),
('LI103','LHR-ISB',30,convert(date,getdate()),'000000000000000000000000000000'),
('LI104','LHR-ISB',30,convert(date,getdate()),'000000000000000000000000000000'),
('LI105','LHR-ISB',30,convert(date,getdate()),'000000000000000000000000000000'),
('LI106','LHR-ISB',30,convert(date,getdate()),'000000000000000000000000000000'),
('LI107','LHR-ISB',30,convert(date,getdate()),'000000000000000000000000000000'),
('LI108','LHR-ISB',30,convert(date,getdate()),'000000000000000000000000000000'),
('LI109','LHR-ISB',30,convert(date,getdate()),'000000000000000000000000000000'),

('KR101','KHE-RWP',30,convert(date,getdate()),'000000000000000000000000000000'),
('KR102','KHE-RWP',30,convert(date,getdate()),'000000000000000000000000000000'),
('KR103','KHE-RWP',30,convert(date,getdate()),'000000000000000000000000000000'),
('KR104','KHE-RWP',30,convert(date,getdate()),'000000000000000000000000000000'),
('KR105','KHE-RWP',30,convert(date,getdate()),'000000000000000000000000000000'),
('KR106','KHE-RWP',30,convert(date,getdate()),'000000000000000000000000000000'),
('KR107','KHE-RWP',30,convert(date,getdate()),'000000000000000000000000000000'),
('KR108','KHE-RWP',30,convert(date,getdate()),'000000000000000000000000000000'),
('KR109','KHE-RWP',30,convert(date,getdate()),'000000000000000000000000000000'),


                   --Next Date
('ML101','MTN-LHR',30,convert(date,getdate()+1),'00000000000000000000000000'),
('ML102','MTN-LHR',30,convert(date,getdate()+1),'00000000000000000000000000000'),
('ML103','MTN-LHR',30,convert(date,getdate()+1),'00000000000000000000000000000'),
('ML104','MTN-LHR',30,convert(date,getdate()+1),'00000000000000000000000000000'),
('ML105','MTN-LHR',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('ML106','MTN-LHR',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('ML107','MTN-LHR',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('ML108','MTN-LHR',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('ML109','MTN-LHR',30,convert(date,getdate()+1),'000000000000000000000000000000'),

('LI101','LHR-ISB',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('LI102','LHR-ISB',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('LI103','LHR-ISB',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('LI104','LHR-ISB',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('LI105','LHR-ISB',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('LI106','LHR-ISB',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('LI107','LHR-ISB',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('LI108','LHR-ISB',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('LI109','LHR-ISB',30,convert(date,getdate()+1),'000000000000000000000000000000'),

('KR101','KHE-RWP',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('KR102','KHE-RWP',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('KR103','KHE-RWP',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('KR104','KHE-RWP',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('KR105','KHE-RWP',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('KR106','KHE-RWP',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('KR107','KHE-RWP',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('KR108','KHE-RWP',30,convert(date,getdate()+1),'000000000000000000000000000000'),
('KR109','KHE-RWP',30,convert(date,getdate()+1),'000000000000000000000000000000'),


                   --Next Date 2

('ML101','MTN-LHR',30,convert(date,getdate()+2),'0000000000000000000000000'),
('ML102','MTN-LHR',30,convert(date,getdate()+2),'000000000000000000000000000'),
('ML103','MTN-LHR',30,convert(date,getdate()+2),'0000000000000000000000000000'),
('ML104','MTN-LHR',30,convert(date,getdate()+2),'0000000000000000000000000'),
('ML105','MTN-LHR',30,convert(date,getdate()+2),'00000000000000000000000000000'),
('ML106','MTN-LHR',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('ML107','MTN-LHR',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('ML108','MTN-LHR',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('ML109','MTN-LHR',30,convert(date,getdate()+2),'000000000000000000000000000000'),

('LI101','LHR-ISB',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('LI102','LHR-ISB',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('LI103','LHR-ISB',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('LI104','LHR-ISB',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('LI105','LHR-ISB',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('LI106','LHR-ISB',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('LI107','LHR-ISB',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('LI108','LHR-ISB',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('LI109','LHR-ISB',30,convert(date,getdate()+2),'000000000000000000000000000000'),

('KR101','KHE-RWP',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('KR102','KHE-RWP',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('KR103','KHE-RWP',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('KR104','KHE-RWP',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('KR105','KHE-RWP',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('KR106','KHE-RWP',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('KR107','KHE-RWP',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('KR108','KHE-RWP',30,convert(date,getdate()+2),'000000000000000000000000000000'),
('KR109','KHE-RWP',30,convert(date,getdate()+2),'000000000000000000000000000000')
             
			 
select*from Bus
--drop table fare
create table fare
(
RouteId varchar(20) not null,
FareId int not null,
Fare int not null,
)
--drop table fare



create table Driver
(
DriverId int primary key,
name varchar(20),
salary int not null,
BusNUM varchar(20),
terminalId varchar(20) not null
);


create table
---------------------------------------------------------------------------
create table Ticket
(
TicketId int primary key,
ReservationId int,
Seat_No int not null,
FareId int not null,
RouteId varchar(50)
);


---------------------------------------------------------------------------
create table Payment
(
FareId int primary key,
Fare int not null,
Payment_Type varchar(20) not null,
);
---------------------------------------------------------------------------

create table terminal
(
TerminalId varchar(20) primary key,
ManagerId int not null,
No_Of_busses int not null,
Terminal_location varchar(20) not null,
);


create table mybooking
(
CNIC int,
RouteId varchar(50),
Bus_ID varchar(50),
SeatNo varchar(50),
fare int,
BusTime varchar(50),
BusDate date,
)

--drop table myTickets
--drop table mybooking
create table myTickets
(
CNIC int,
RouteId varchar(50),
Bus_ID varchar(50),
SeatNo varchar(50),
fare int,
BusTime varchar(50),
BusDate date,
Payment_Type varchar(20) not null
)
select*from myTickets
select*from mybooking
--=========================================
--=========================================
create table seats_no
(
bus_id int,
s1 varchar(20),s2 varchar(20),s3 varchar(20),s4 varchar(20),s5 varchar(20)
)
insert into seats_no values
(111,'0','0','0','0','0'),
(112,'0','0','0','0','0'),
(113,'0','0','0','0','0'),
(114,'0','0','0','0','0'),
(115,'0','0','0','0','0'),
(116,'0','0','0','0','0')


create table Wallet
(
CNIC varchar(15),
Amount int
)



--drop table terminal


alter table Reservation add constraint FK_passangers foreign key(P_ID) references passangers(NIC)
alter table terminal add constraint FK_Manager foreign key(ManagerId) references Manager(ManagerId)

alter table Manager add constraint FK_Route foreign key(RouteId) references route(RouteId)

alter table Ticket add constraint FK_Payment foreign key(FareId) references Payment(FareId)

alter table passangers add constraint FK_Reservation foreign key(ReservatioId) references Reservation(ReservatioId)


alter table Bus_hostes add constraint FK_terminal foreign key(terminalId) references terminal(terminalId)

alter table Driver add constraint FK_terminal1 foreign key(terminalId) references terminal(terminalId)

alter table [route] add constraint FK_terminal2 foreign key(terminalId) references terminal(terminalId)
alter table Manager add constraint FK_terminal3 foreign key(TerminalId) references terminal(terminalId)
select *from Bus_hostes

select*from passangers
--select @@GLOBAL_CNIC varchar(15) = ' '
--select @@SERVERNAME


go
alter Procedure SignUp
@NIC varchar(15),
@name varchar(20),
@PhoneNo varchar(11),
@email varchar(30),
@password varchar(50),
@output int output
as
begin
	if(@email is NULL or @password is NULL or @NIC is null or @name is null or @PhoneNo is null)
	begin
		print 'Values Not Be NULL'
		set @output=0
	end

	else
	if exists(select *from passangers 
	    where passangers.NIC=@NIC or passangers.PhoneNo=@PhoneNo
	)
	begin
	print'User is Already Exists'
	set @output=2
	end
	else
	begin
		insert into passangers values(@NIC,@name,@PhoneNo,@email,@password)
		set @output=1
	end
	return @output
end 

select*from passangers




-- sign in
go
create procedure USER_LOGIN
@NIC varchar(20),
@password varchar(10),
@output int output
as
begin
declare @getNIC varchar(15)
	if exists (select * from passangers 
	where passangers.NIC=@NIC and passangers.password=@password)
	begin
		print 'User is exists'
		set @output=1
	--	select @@GLOBAL_CNIC1 as @NIc
	end

	else
	begin
		set @output=0
		print 'User is not exists'
	end
	return @output
end
   
        -- Update Profile Procedure
		go
		create procedure update_Profile
		(
		  @NIC varchar(15),
		  @oldpassword varchar(50),
		  @New_Password varchar(50),
		  @output int output
		)
		  as
		  begin
		  set @output = 0;
		  update passangers set passangers.password = @New_Password
		  where passangers.NIC=@NIC and passangers.password=@oldpassword
		    begin
			set @output=1
			end
	end


	select* from  Bus

--   Checking roots made with UDF and Procedure
go
alter Function dbo.timeallocations(
@departure_location varchar(20),
@arrival_location varchar(20))
returns varchar(20)
as
begin
declare @route_id varchar(20)
select @route_id = (select  [route].RouteId from [route] where  @departure_location = [route].Departure_location and @arrival_location = [route].Arrival_location)
	return @route_id
end

select dbo.time_allocation('Multan','Lahore')
go	 



--select*from departure_date
create procedure current_dates

as
begin
select convert(date,getdate())


select*from myTickets

go
alter procedure allocation_of_time(
@Departure_location varchar(30),
@Arrival_location varchar(30),
@busDate date
)
as
begin
   --  declare @tmpdate date
	 --set @tmpdate = convert(date,@busDate)

	 --update departure_date set departure_date.busDate = @tmpdate ---where departure_date.busDate is null 
   declare @Route_ID varchar(20)
	set @Route_ID = dbo.timeallocations(@Departure_location,@Arrival_location)
	print @Route_ID

	 select departure_date.ID as BusNo,route.Departure_location,route.Arrival_location,departure_date.busTime,route.fare from departure_date join route on departure_date.RouteId=route.RouteId
	 where  @Route_ID = departure_date.RouteId 
	 and @busDate = departure_date.busDate
	 and departure_date.busTime >  FORMAT(getdate(),'HH:mm')
end

--execute allocation_of_time @Departure_location='Multan',@Arrival_location='Lahore',@busDate='2020-12-24'
select *from departure_date

select*from passangers

go
create function seat_no
(
@seatNo1  varchar(20)
)
returns varchar(20)
as 
begin
return @seatNo1
end
select dbo.seat_no('14')


select*from departure_date
order by departure_date.busDate




------------------------------------------ Booking ---------------------------------------------------
go
alter procedure booking
(
@ID varchar(12),
@Departure_location varchar(30),
@Arrival_location varchar(30),
@busDate date
)
as
begin 
declare @bus_id varchar(20)

declare @seat_num varchar(10)
declare @Route_ID varchar(10)
declare @tmp varchar(20)

     set @Route_ID =  dbo.timeallocations(@Departure_location,@Arrival_location)
     set @bus_id = dbo.route_time(@Route_ID , @ID, @busDate)
	 print @bus_id
  declare @num varchar(5)
  declare @bus_time varchar(20)
  select @bus_time = (select departure_date.busTime from departure_date where departure_date.RouteId=@Route_ID and departure_date.BusNumber=@bus_id and departure_date.busDate =@busDate)


      select @num = (select SUBSTRING(bus.bus_seats,1,1) as seat_no from bus 
        where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
	   If @num = '0'
	     update seats_no  set s1 = '1 (available)' where seats_no.bus_id = 111
	  else
	   update seats_no  set s1 = '1 (allocated)' where seats_no.bus_id= 111


	    select @num = (select SUBSTRING(bus.bus_seats,2,1) as seat_no from bus 
        where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
print @num
       If @num = '0'
	     update seats_no  set s2 = '2 (available)' where seats_no.bus_id = 111
	  else
	   update seats_no  set s2 = '2 (allocated)' where seats_no.bus_id = 111



	    select @num = (select SUBSTRING(bus.bus_seats,3,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s3 = '3 (available)' where seats_no.bus_id = 111
	  else
	   update seats_no  set s3 = '3 (allocated)' where seats_no.bus_id = 111


	    select @num = (select SUBSTRING(bus.bus_seats,4,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s4 = '4 (available)' where seats_no.bus_id = 111
	  else
	   update seats_no  set s4 = '4 (allocated)' where seats_no.bus_id = 111



	    select @num = (select SUBSTRING(bus.bus_seats,5,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s5 = '5 (available)' where seats_no.bus_id = 111
	  else
	   update seats_no  set s5 = '5 (allocated)' where seats_no.bus_id = 111


	                           --   (6-10)

	    select @num = (select SUBSTRING(bus.bus_seats,6,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s1 = '6 (available)' where seats_no.bus_id = 112
	  else
	   update seats_no  set s1 = '6 (allocated)' where seats_no.bus_id = 112


	    select @num = (select SUBSTRING(bus.bus_seats,7,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s2 = '7 (available)' where seats_no.bus_id = 112
	  else
	   update seats_no  set s2 = '7 (allocated)' where seats_no.bus_id = 112


	    select @num = (select SUBSTRING(bus.bus_seats,8,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s3 = '8 (available)' where seats_no.bus_id = 112
	  else
	   update seats_no  set s3 = '8 (allocated)' where seats_no.bus_id = 112


	    select @num = (select SUBSTRING(bus.bus_seats,9,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s4 = '9 (available)' where seats_no.bus_id = 112
	  else
	   update seats_no  set s4 = '9 (allocated)' where seats_no.bus_id = 112


	    select @num = (select SUBSTRING(bus.bus_seats,10,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s5 = '10 (available)' where seats_no.bus_id = 112
	  else
	   update seats_no  set s5 = '10 (allocated)' where seats_no.bus_id = 112



	    select @num = (select SUBSTRING(bus.bus_seats,11,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s1 = '11 (available)' where seats_no.bus_id = 113
	  else
	   update seats_no  set s1 = '11 (allocated)' where seats_no.bus_id = 113


	    select @num = (select SUBSTRING(bus.bus_seats,12,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s2 = '12 (available)' where seats_no.bus_id = 113
	  else
	   update seats_no  set s2 = '12 (allocated)' where seats_no.bus_id = 113


	    select @num = (select SUBSTRING(bus.bus_seats,13,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s3 = '13 (available)' where seats_no.bus_id = 113
	  else
	   update seats_no  set s3 = '13 (allocated)' where seats_no.bus_id = 113



	    select @num = (select SUBSTRING(bus.bus_seats,14,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s4 = '14 (available)' where seats_no.bus_id = 113
	  else
	   update seats_no  set s4 = '14 (allocated)' where seats_no.bus_id = 113


	    select @num = (select SUBSTRING(bus.bus_seats,15,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s5 = '15 (available)' where seats_no.bus_id = 113
	  else
	   update seats_no  set s5 = '15 (allocated)' where seats_no.bus_id = 113



	    select @num = (select SUBSTRING(bus.bus_seats,16,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s1 = '16 (available)' where seats_no.bus_id = 114
	  else
	   update seats_no  set s1 = '16 (allocated)' where seats_no.bus_id = 114


	    select @num = (select SUBSTRING(bus.bus_seats,17,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s2 = '17 (available)' where seats_no.bus_id = 114
	  else
	   update seats_no  set s2 = '17 (allocated)' where seats_no.bus_id = 114


	    select @num = (select SUBSTRING(bus.bus_seats,18,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s3 = '18 (available)' where seats_no.bus_id = 114
	  else
	   update seats_no  set s3 = '18 (allocated)' where seats_no.bus_id = 114


	    select @num = (select SUBSTRING(bus.bus_seats,19,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s4 = '19 (available)' where seats_no.bus_id = 114
	  else
	   update seats_no  set s4 = '19 (allocated)' where seats_no.bus_id = 114


	    select @num = (select SUBSTRING(bus.bus_seats,20,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s5 = '20 (available)' where seats_no.bus_id = 114
	  else
	   update seats_no  set s5 = '20 (allocated)' where seats_no.bus_id = 114




	    select @num = (select SUBSTRING(bus.bus_seats,21,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s1 = '21 (available)' where seats_no.bus_id = 115
	  else
	   update seats_no  set s1 = '21 (allocated)' where seats_no.bus_id = 115


	    select @num = (select SUBSTRING(bus.bus_seats,22,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s2 = '22 (available)' where seats_no.bus_id = 115
	  else
	   update seats_no  set s2 = '22 (allocated)' where seats_no.bus_id = 115


	    select @num = (select SUBSTRING(bus.bus_seats,23,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s3 = '23 (available)' where seats_no.bus_id = 115
	  else
	   update seats_no  set s3 = '23 (allocated)' where seats_no.bus_id = 115


	    select @num = (select SUBSTRING(bus.bus_seats,24,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s4 = '24 (available)' where seats_no.bus_id = 115
	  else
	   update seats_no  set s4 = '24 (allocated)' where seats_no.bus_id = 115


	    select @num = (select SUBSTRING(bus.bus_seats,25,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0' 
	     update seats_no  set s5 = '25 (available)' where seats_no.bus_id = 115
	  else
	   update seats_no  set s5 = '25 (allocated)' where seats_no.bus_id = 115




	   select @num = (select SUBSTRING(bus.bus_seats,26,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
      If @num = '0'
	     update seats_no  set s1 = '26 (available)' where seats_no.bus_id = 116
	  else
	  update seats_no  set s1 = '26 (allocated)' where seats_no.bus_id = 116


	    select @num = (select SUBSTRING(bus.bus_seats,27,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s2 = '27 (available)' where seats_no.bus_id = 116
	  else
	   update seats_no  set s2 = '27 (allocated)' where seats_no.bus_id = 116


	    select @num = (select SUBSTRING(bus.bus_seats,28,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s3 = '28(available)' where seats_no.bus_id = 116
	  else
	   update seats_no  set s3 = '28 (allocated)' where seats_no.bus_id = 116


	    select @num = (select SUBSTRING(bus.bus_seats,29,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s4 = '29 (available)' where seats_no.bus_id = 116
	  else
	   update seats_no  set s4 = '29 (allocated)' where seats_no.bus_id = 116


	   select @num = (select SUBSTRING(bus.bus_seats,30,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@busDate)
       If @num = '0'
	     update seats_no  set s5 = '30 (available)' where seats_no.bus_id = 116
	  else
	   update seats_no  set s5 = '30 (allocated)' where seats_no.bus_id = 116
     
	 select s1 as row1,s2 as row2,s3 as row3,s4 as row4,s5 as row5 from seats_no 
end

execute booking @ID='8',@Departure_location='Multan',@Arrival_location='Lahore',@busDate='2020-12-26'






     -- UDF for Route and Time when User Presses row to find respective bus
	 
	 select*from mybooking
	 go
    alter function dbo.route_time(
	 @Route_id varchar(20),
      @ID varchar(20),
	  @bus_date date
)
   returns varchar(20)
   as
   begin
   declare @bus_id varchar(20)
    set @bus_id = ( select  departure_date.BusNumber from departure_date where @Route_id = departure_date.RouteId and @ID = departure_date.ID and departure_date.busDate=@bus_date)
     return @bus_id
   end
--select dbo.route_time ('MTN-LHR','8','2020-12-24')


--select *from departure_date





   go
   alter procedure selectionofseat
   (
   @CNIC varchar(15),
   @ID varchar(12),
   @seat_no1 varchar(10),
   @Departure_location varchar(30),
   @Arrival_location varchar(30),
   @Bus_date date,
   @output int output
   )
   as
begin

     declare @seat_no int
     SET @seat_no = CONVERT(INT, @seat_no1);
     declare @bus_id varchar(20)
     declare @Route_ID varchar(10)
     set @Route_ID =  dbo.time_allocation(@Departure_location,@Arrival_location)
     set @bus_id = dbo.route_time(@Route_ID ,@ID,@Bus_date)

	  declare @bus_time varchar(20)
  set @bus_time = (select departure_date.busTime from departure_date where departure_date.RouteId=@Route_ID and departure_date.BusNumber= @bus_id and departure_date.busDate = @Bus_date)


       declare @num varchar(10)
       set @num = (select SUBSTRING(bus.bus_seats,@seat_no,1) as seat_no from bus where @bus_id = bus.BusNumber and bus.Bus_date=@Bus_date)
       
	   If @num = '0'
	     begin
       update bus set bus.bus_seats =  stuff(bus.bus_seats,@seat_no,1, '1') from bus where @bus_id = bus.BusNumber and bus.Bus_date=@Bus_date
	   set @output =1
	   
	   declare @fare int
	  -- declare @bus_time varchar(20)
	   --declare @bus_date date
	    set @fare = (select route.fare from route where route.RouteId=@Route_ID)
		--select @bus_time = (select departure_date.busTime from departure_date where departure_date.RouteId=@Route_ID and departure_date.BusNumber=@bus_id)
	   insert into mybooking values(@CNIC,@Route_ID,@bus_id,@seat_no1,@fare,@bus_time,@Bus_date)
	  
	      end
		else
			set @output =0

			return @output
end

execute selectionofseat @CNIC='23',@ID='8',@seat_no1='26',@Departure_location='Multan',@Arrival_location='Lahore',@Bus_date='2020-12-24',@output=0

select*from Bus
select*from mybooking
select*from departure_date



------------------------------ Procedure of Mybookings --------------------------
go
create procedure MyBookings
(
@CNIC varchar(15),
@output int output
)
as
begin

  if exists( select*from mybooking where mybooking.CNIC=@CNIC)
  begin
  select*from mybooking where mybooking.CNIC=@CNIC
  set @output =1;
  end
 else
  set @output =0;

  print @output
  return @output
end
--execute MyBookings @CNIC='23',@output=0



---------------------- Procedure of Buy Tickets------------
go
alter procedure Buy_Tickets
(
   @CNIC varchar(15),
   @ID varchar(12),
   @seat_no1 varchar(10),
   @Departure_location varchar(30),
   @Arrival_location varchar(30),
   @payment_Type varchar(25),
   @Bus_date date,
   @output int output
   )
   as
   begin
    declare @bus_id varchar(20)
     declare @Route_ID varchar(10)
     set @Route_ID =  dbo.time_allocation(@Departure_location,@Arrival_location)
     set @bus_id = dbo.route_time(@Route_ID ,@ID,@Bus_date)

	 declare @fare int
	 declare @bus_time varchar(20)
	
	    set @fare = (select route.fare from route where route.RouteId=@Route_ID)
		set @bus_time = (select departure_date.busTime from departure_date where departure_date.RouteId=@Route_ID and departure_date.BusNumber=@bus_id and departure_date.busDate =@Bus_date)
		insert into myTickets values(@CNIC,@Route_ID,@bus_id,@seat_no1,@fare,@bus_time,@bus_date,@payment_Type)
		--select*from myTickets where myTickets.CNIC=@CNIC
		set @output=1
		return @output
	end

		execute Buy_Tickets @CNIC='23',@ID='8',@seat_no1='18',@Departure_location='Multan',@Arrival_location='Lahore', @Bus_date='2020-12-24', @output=0, @payment_Type='Easypaisa'
		
		select*from myTickets
		select*from mybooking

		------------------------------ Procedure of Tickets --------------------------

go
alter procedure Tickets
(
@CNIC varchar(15),
@output int output
)
as
begin
if exists(select*from myTickets where myTickets.CNIC=@CNIC)
  begin
  select*from myTickets where myTickets.CNIC=@CNIC
     set @output =1;
  end
  else
  set @output =0;

  print @output
  return @output
end

execute Tickets @CNIC='33303', @output=0


go
alter Procedure MyWallet
(
@CNIC varchar(15),
@output int output
)
as
begin
insert into Wallet values
(@CNIC,6000)
set @output=1
end
select*from Wallet





go
alter procedure deduct_amount
(
@CNIC varchar(15),
@Departure_city varchar(20),
@Arrival_City varchar(20),
@output int output
)
as
begin
declare @subtract int
declare @amount int
declare @Route_ID varchar(20)
set @Route_ID =  dbo.time_allocation(@Departure_city,@Arrival_City)
print @Route_ID
set  @amount = (select Wallet.Amount from Wallet where Wallet.CNIC=@CNIC)
print @amount

declare @fare int
set  @fare = (select route.fare from route where route.RouteId=@Route_ID)

if(@fare<=@amount)
begin
set @subtract = @amount-@fare;
print @subtract

update Wallet set Wallet.Amount= @subtract where Wallet.CNIC=@CNIC
set @output=1
end
else
set @output=0
print @output
select*from Wallet where Wallet.CNIC=@CNIC
return @output
end

execute deduct_amount @CNIC='111',@Departure_city='Multan',@Arrival_City='Lahore',@output=0
select*from Wallet
select*from route
select*from passangers




go
alter procedure check_Wallet
(
@CNIC varchar(15),
@output int output
)
as
begin
select*from wallet where wallet.CNIC=@CNIC
set @output=1
return @output
end


select*from mybooking
select*from passangers
select*from Wallet