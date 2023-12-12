create table if not exists subjects
(
	subjects_id int generated always as identity primary key,
	subjects_name varchar(100) not null unique
);

create table if not exists teachers
(
	teachers_id int generated always as identity primary key,
	teacher_name varchar not null unique,
	salary numeric not null check (salary>0),
	surname varchar not null
);

create table if not exists faculties
(
    faculties_id int generated always as identity primary key,
    faculties_name varchar(100) not null unique
);

create table if not exists departments
(
    departments_id int generated always as identity primary key,
    financing numeric not null default 0 check (financing>=0),
    department_name varchar(100) not null unique,
    fk_faculties_id int references faculties(faculties_id) not null
);

create table if not exists lectures
(
	lectures_id int generated always as identity primary key,
	day_of_week int not null check (day_of_week>=1 and day_of_week<=7),
	lecture_room varchar not null,
	fk_subject_id int references subjects(subjects_id) not null,
	fk_teachers_id int references teachers(teachers_id) not null
);

create table if not exists _groups
(
   groups_id int generated always as identity primary key,
   group_name varchar(10) not null unique,
   _year int not null check (_year>=1 and _year<=5),
   number_of_students int not null check (number_of_students>1 and number_of_students<20),
   fk_departments_id int references departments(departments_id) not null
);

create table if not exists group_lectures
(
	group_id int references _groups(groups_id) not null, 
	lecture_id int references lectures(lectures_id) not null,
	constraint groups_lectures_id primary key(group_id, lecture_id)
);