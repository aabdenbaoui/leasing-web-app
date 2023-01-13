USE leasing_office_database;
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

CREATE TABLE IF NOT EXISTS RENTER(
	id INT PRIMARY KEY auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    identity_proof_document varchar(50),
    id_on_identity_proof_doc varchar(50),
    permanent_address varchar(50)
);