CREATE TABLE IF NOT EXISTS Unit_type (
    id INT PRIMARY KEY auto_increment,
    unit_type VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS SERVICE_CATEGORY(
	id int PRIMARY KEY auto_increment,
    service_category varchar(200)
);
CREATE TABLE IF NOT EXISTS ADDRESS (
	id INT PRIMARY KEY auto_increment,
    street_address varchar(100),
    city varchar(50),
	state varchar(20),
	zip_code VARCHAR(10)
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
CREATE TABLE IF NOT EXISTS COMMUNITY(
	id INT PRIMARY KEY auto_increment,
    community_name varchar(100),
    address_id INT,
	FOREIGN KEY (address_id) REFERENCES ADDRESS(ID)
);
CREATE TABLE IF NOT EXISTS RENTER(
	id INT PRIMARY KEY auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    identity_proof_document varchar(50),
    id_on_identity_proof_doc varchar(50),
    permanent_address varchar(50)
);
CREATE TABLE IF NOT EXISTS STAFF(
	id int primary key auto_increment,
    first_name varchar(20),
    last_name varchar(20),
    staff_role varchar(20),
    employment_start_date date,
    emeployment_end_date date
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
CREATE TABLE IF NOT EXISTS APPLICATION(
	id int primary key auto_increment,
    renter_id int,
    requirement varchar(700),
    submit_date date,
    processing_date date,
    processing_status varchar(50),
    unit_id int,
    unit_reservation_fee double,
    staff_id int,
	foreign key (unit_id) references UNIT(id),
	foreign key (renter_id) references RENTER(id),
	foreign key (staff_id) references STAFF(id)
);

CREATE TABLE IF NOT EXISTS UNIT_LEASE(
    id INT PRIMARY KEY auto_increment,
	application_id int,
    unit_id int,
    lease_period_in_months int,
    discount_in_rent double,
    lease_starting_from date,
    lease_ending_on date,
    foreign key (application_id) references APPLICATION(id),
	foreign key (unit_id) references UNIT(id)
);
CREATE TABLE IF NOT EXISTS RENT_PAYMENT_LOG(
	id int primary key auto_increment,
    unit_leasing_log_id int,
    amount_paid double,
    payment_date date,
    payment_medium varchar(20),
    online_transaction_num int,
    payment_accepted_by int,
    check_number int,
	foreign key (unit_leasing_log_id) references UNIT_LEASE(id),
	foreign key (payment_accepted_by) references STAFF(id)
);

CREATE TABLE IF NOT EXISTS SERVICE_REQUEST(
	id int PRIMARY KEY auto_increment,
    unit_leasing_log_id int,
    service_category_id int,
    problem_description varchar(700),
    log_date date,
    service_assigned_to int,
    service_status char(1),
    closure_date date,
	foreign key ( service_category_id) references SERVICE_CATEGORY(id),
    foreign key (unit_leasing_log_id) references UNIT_LEASE(id),
    foreign key (service_assigned_to) references STAFF(id)
);

