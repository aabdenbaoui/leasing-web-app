USE leasing_office_database;
CREATE TABLE IF NOT EXISTS SERVICE_CATEGORY(
	id int PRIMARY KEY auto_increment,
    service_category varchar(200)
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
CREATE TABLE IF NOT EXISTS STAFF(
	id int primary key auto_increment,
    first_name varchar(20),
    last_name varchar(20),
    staff_role varchar(20),
    employment_start_date date,
    emeployment_end_date date
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