drop table if exists dininghalls
GO
create table dininghalls(
    dining_id int identity not null,
    dining_name varchar(20) not null,
    dining_manger_firstname varchar(20),
    dining_manager_lastname varchar(20),
    dining_email varchar(50),
    dining_address varchar(100) not null,
    dining_no_of_employees int not null,
    dining_capacity int not null,
    dining_timings varchar(20),
    constraint pk_dininghalls_dining_id PRIMARY key (dining_id),
    CONSTRAINT u_dining_name UNIQUE (dining_name)
)

insert into dininghalls 
values('Ernie Davis','Sabrina','Davis-Thomas','erniedavismngs@syr.edu','619 Comstock Ave, Syracuse, NY 13210',20,100,'7:30am - 8:00pm')

select * from dininghalls

---------------------------------------------------
drop table if exists supervisors

create table supervisors(
    supervisor_id int identity not null,
    supervisor_firstname varchar(20) not null,
    supervisor_lastname varchar(20) not null,
    supervisor_dining_id int not null,
    supervisor_email varchar(20) not null,
    supervisor_payperhour float DEFAULT 16.30,
    constraint pk_supervisor_id primary key (supervisor_id),
    constraint u_supervisor_id unique (supervisor_email)
)
---------------------------------------------------------

create table student_employees(
    student_id int identity not null,
    student_firstname varchar(20) not null,
    student_lastname varchar(20) not null,
    student_email varchar(50) not null,
    student_dining_id int not null,
    student_payperhour float default 15.30,
    constraint pk_student_id primary key(student_id),
    constraint u_student_email unique (student_email),
    constraint fk_student_dining_id FOREIGN KEY (student_dining_id)
    REFERENCES dininghalls(dining_id) 

)


----------------------------------------------------------
create table shift_type_lookup(
    shift_type varchar(50) not null,
    constraint pk_shift_type primary key (shift_type)
)

create table shift_time_lookup(
    shift_time varchar(50) not null,
    constraint pk_shift_time primary key(shift_time)
)

create table shift_day_lookup(
    shift_day varchar(50) not null,
    constraint pk_shift_day primary key (shift_day)
)

create table shifts(
    shift_id int identity not null,
    shift_student_id int not null,
    shift_day varchar(20) not null,
    shift_duration int not null default 4,
    shift_time  varchar(20) not null,
    shift_type varchar(20) not null,
    shift_supervisor int not null,
    constraint pk_shift_id PRIMARY KEY (shift_id),
    constraint fk_shift_student_id FOREIGN KEY(shift_student_id) references student_employees(student_id),
    constraint fk_shift_day FOREIGN KEY(shift_day) references shift_day_lookup(shift_day),
    constraint fk_shift_time FOREIGN KEY(shift_time) references shift_time_lookup(shift_time),
    constraint fk_shift_type FOREIGN KEY(shift_type) references shift_type_lookup(shift_type),
)

