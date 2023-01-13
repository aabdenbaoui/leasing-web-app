CREATE DATABASE IF NOT EXISTS leasing_office_database;
USE leasing_office_database;
CREATE TABLE IF NOT EXISTS Unit_type (
    id INT PRIMARY KEY auto_increment,
    unit_type VARCHAR(50)
--     foreign key (userid) references USERS(userid)
);
CREATE TABLE IF NOT EXISTS ADDRESS (
	id INT PRIMARY KEY auto_increment,
    street_address varchar(100),
    city varchar(50),
	state varchar(20),
	zip_code VARCHAR(10)
);
CREATE TABLE IF NOT EXISTS COMMUNITY(
	id INT PRIMARY KEY auto_increment,
    community_name varchar(100),
    address_id INT,
	FOREIGN KEY (address_id) REFERENCES ADDRESS(ID)
);
CREATE TABLE IF NOT EXISTS LEASING_INFO(
    id INT PRIMARY KEY auto_increment,
    leasing_type varchar(50),
    is_sub_leasing_allowed char(1),
    application_fee double,
    security_depoist double,
    leasing_duration varchar(50),
    is_lease_termination_allowed char(1),
    lease_termination_cost double
);

CREATE TABLE IF NOT EXISTS UNIT (
	id INT PRIMARY KEY auto_increment,
    unit_type_id int,
    community_id int,
    address_id int,
    number_of_bedroom int,
    number_of_bathroom int,
    number_of_balcony int, 
    is_available char(1),
    is_reserved char(1),
    unit_available_from date,
    unit_description VARCHAR(700),
    leasing_info_id int,
    carpet_area double,
    unit_number int,
    unit_at_floor int,
	FOREIGN KEY (address_id) REFERENCES ADDRESS(ID),
	FOREIGN KEY (community_id) REFERENCES COMMUNITY(ID),
	FOREIGN KEY (unit_type_id) REFERENCES UNIT_TYPE(ID),
	FOREIGN KEY (leasing_info_id) REFERENCES LEASING_INFO(ID)
);