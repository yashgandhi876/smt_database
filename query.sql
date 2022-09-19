drop schema smtdb;
CREATE DATABASE smtdb;
USE smtDB;

CREATE TABLE team(id int primary key auto_increment, team_name varchar(20), oe_code varchar(20), team_description varchar(200));
CREATE TABLE employee(id int primary key auto_increment, user_name varchar(20), pass_word varchar(20), team_id int, FOREIGN KEY (team_id) REFERENCES team(id), total_seats int);
CREATE TABLE team_manager(id int primary key auto_increment, team_id int, foreign key(team_id) references team(id),team_lead_id int, foreign key(team_lead_id) references employee(id));
create table teamsunderemployee(id int primary key auto_increment, team_id int, foreign key (team_id) references team(id), employee_id int, foreign key (employee_id) references employee(id) );
CREATE TABLE floor(id int primary key auto_increment, floor_number int);
CREATE TABLE zone(id int primary key primary key auto_increment, floor_id int, FOREIGN KEY (floor_id) REFERENCES floor(id), team_id int, FOREIGN KEY (team_id) REFERENCES team(id), zone_name varchar(20));
CREATE TABLE teamfloorzone(id int primary key auto_increment, team_id int, floor_id int, zone_id int, seat_from int, seat_to int);
CREATE TABLE seat(id int primary key auto_increment, team_id int, FOREIGN KEY(team_id) references team(id),floor_id int, FOREIGN KEY (floor_id)
    REFERENCES floor(id), zone_id int, FOREIGN KEY (zone_id)
                      REFERENCES zone(id), seat_number int,booked boolean, start_date date, end_date date);

INSERT INTO team(team_name, oe_code, team_description) values("Front office", "FO", "All teams come under this team");-- Dhiru
INSERT INTO team(team_name, oe_code, team_description) values("Wealth management", "WM1", "Handles all projects for wealth management");-- Mukesh
INSERT INTO team(team_name, oe_code, team_description) values("Investment Bank", "IB1", "Handles all projects for Investment bank");-- Anil
INSERT INTO team(team_name, oe_code, team_description) values("Client Reporting", "WM11", "We report to client");-- Akash
INSERT INTO team(team_name, oe_code, team_description) values("RME", "WM12", "We are SCOT");-- Anand
INSERT INTO team(team_name, oe_code, team_description) values("DPB", "WM13",  "We are DPB");-- Esha
INSERT INTO team(team_name, oe_code, team_description) values("Sentinal", "IB11","We are Sentinal");-- Anmol
INSERT INTO team(team_name, oe_code, team_description) values("SCOT", "IB12", "We are Sentinal");-- Anshu


INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("dhirubhai", "12345", "1", 60);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("mukesh", "12345", "2", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("anil", "12345", "3", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("akash", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("anant", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("esha", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("anmol", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("anshul", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("prithvi", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e1", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e2", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e3", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e4", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e5", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e6", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e7", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e8", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e9", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e10", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("neel", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("nitin", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e11", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e12", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e13", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e14", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e15", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e16", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e17", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e18", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e19", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e20", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e21", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e22", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e23", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e24", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e25", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e26", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e27", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e28", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e29", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e30", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e31", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e32", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e33", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e34", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e35", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e36", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("esha", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e37", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e38", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e39", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e40", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e41", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e42", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e43", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e44", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e45", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e46", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e47", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e48", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e49", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e50", "12345", "6", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e51", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e52", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e53", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e54", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e55", "12345", "4", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e56", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e57", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e58", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e59", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e60", "12345", "5", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e61", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e62", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e63", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e64", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e65", "12345", "7", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e66", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e67", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e68", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e69", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e70", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e71", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e72", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e73", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e74", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e75", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e76", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e77", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e78", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e79", "12345", "8", 0);
INSERT INTO employee(user_name, pass_word, team_id, total_seats) values("e80", "12345", "8", 0);


INSERT INTO teamsunderemployee(team_id, employee_id) values(2, 1);
INSERT INTO teamsunderemployee(team_id, employee_id) values(3, 1);
INSERT INTO teamsunderemployee(team_id, employee_id) values(4,2);
INSERT INTO teamsunderemployee(team_id, employee_id) values(5,2);
INSERT INTO teamsunderemployee(team_id, employee_id) values(6,2);
INSERT INTO teamsunderemployee(team_id, employee_id) values(7,3);
INSERT INTO teamsunderemployee(team_id, employee_id) values(8,3);
INSERT INTO teamsunderemployee(team_id, employee_id) values(null,4);
INSERT INTO teamsunderemployee(team_id, employee_id) values(null,5);
INSERT INTO teamsunderemployee(team_id, employee_id) values(null,6);
INSERT INTO teamsunderemployee(team_id, employee_id) values(null,7);
INSERT INTO teamsunderemployee(team_id, employee_id) values(null,8);


INSERT INTO FLOOR(floor_number) value(1);
INSERT INTO FLOOR(floor_number) value(2);
-- INSERT INTO FLOOR(floor_number) value(3);
-- INSERT INTO FLOOR(floor_number) value(4);


INSERT INTO ZONE(floor_id, team_id, zone_name) values(1, 1, "A");
INSERT INTO ZONE(floor_id, team_id, zone_name) values(1, 1, "B");
INSERT INTO ZONE(floor_id, team_id, zone_name) values(1, 1, "C");
INSERT INTO ZONE(floor_id, team_id, zone_name) values(1, 1, "D");
INSERT INTO ZONE(floor_id, team_id, zone_name) values(2, 1, "A");
INSERT INTO ZONE(floor_id, team_id, zone_name) values(2, 1, "B");
INSERT INTO ZONE(floor_id, team_id, zone_name) values(2, 1, "C");
INSERT INTO ZONE(floor_id, team_id, zone_name) values(2, 1,"D");
-- INSERT INTO ZONE(floor_id, team_id, zone_name) values(3 ,1 ,"A");
-- INSERT INTO ZONE(floor_id, team_id, zone_name) values(3 ,1 ,"B");
-- INSERT INTO ZONE(floor_id, team_id, zone_name) values(3, 1 ,"C");
-- INSERT INTO ZONE(floor_id, team_id, zone_name) values(3, 1 ,"D");
-- INSERT INTO ZONE(floor_id, team_id, zone_name) values(4, 1 ,"A");
-- INSERT INTO ZONE(floor_id, team_id, zone_name) values(4, 1 ,"B");
-- INSERT INTO ZONE(floor_id, team_id, zone_name) values(4, 1, "C");
-- INSERT INTO ZONE(floor_id, team_id, zone_name) values(4, 1, "D");



INSERT INTO teamfloorzone(team_id, floor_id, zone_id, seat_from, seat_to) values (1, 1, 1, 1, 6);
INSERT INTO teamfloorzone(team_id, floor_id, zone_id, seat_from, seat_to) values (1, 1, 2, 1, 6);
INSERT INTO teamfloorzone(team_id, floor_id, zone_id, seat_from, seat_to) values (1, 2, 1, 1, 6);
INSERT INTO teamfloorzone(team_id, floor_id, zone_id, seat_from, seat_to) values (1, 2, 2, 1, 10);


INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,1,1,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,1,2,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,1,1,3,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,1,4,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,1,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,1,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,1,1,7,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,1,8,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));


INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,1,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,2,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,1,2,3,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,4,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,1,2,7,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,8,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));

INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,3,1,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,3,2,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,1,3,3,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,3,4,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,3,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,3,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,1,3,7,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,3,8,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));

INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,4,1,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,4,2,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,1,4,3,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,4,4,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,4,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,4,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,1,4,7,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,4,8,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));


-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,1,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,1,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,1,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,2,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
-- INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,1,2,3,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,4,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,1,2,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,5,1,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,5,2,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,2,5,3,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,5,4,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,5,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,5,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,2,5,7,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,5,8,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));

-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,1,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,1,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,6,1,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,6,2,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,2,6,3,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,6,4,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,6,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,6,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,2,6,7,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,6,8,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));

INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,7,1,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,7,2,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,2,7,3,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,7,4,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,7,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,2,7,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));

INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,8,1,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,8,2,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,2,8,3,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,8,4,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,8,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
INSERT INTO seat( team_id, floor_id, zone_id,  seat_number, booked, start_date, end_date) values(1,2,8,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));

-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,2,5,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));
-- INSERT INTO seat( team_id, floor_id, zone_id, seat_number, booked, start_date, end_date) values(1,2,2,6,false, STR_TO_DATE('19/09/2022', '%d/%m/%Y'),  STR_TO_DATE('25/09/2022', '%d/%m/%Y'));


INSERT INTO team_manager(team_id, team_lead_id) values(1,1);
INSERT INTO team_manager(team_id, team_lead_id) values(2,2);
INSERT INTO team_manager(team_id, team_lead_id) values(3,3);
INSERT INTO team_manager(team_id, team_lead_id) values(4,4);
INSERT INTO team_manager(team_id, team_lead_id) values(5,5);
INSERT INTO team_manager(team_id, team_lead_id) values(6,6);
INSERT INTO team_manager(team_id, team_lead_id) values(7,7);
INSERT INTO team_manager(team_id, team_lead_id) values(8,8);