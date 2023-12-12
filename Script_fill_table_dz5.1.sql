insert into subjects (subjects_name)
values ('C#'), ('Database Theory'), ('C++'), ('Design');
insert into teachers (teacher_name, salary, surname)
values ('Samanta', 1200, 'Adams'), ('Dave', 1500, 'McQueen'), ('Jack', 1300, 'Underhill');
insert into lectures (day_of_week, lecture_room, fk_subject_id, fk_teachers_id)
values (1,'B103',2,2), (2,'D201',3,1),(3,'B105',1,1),(4,'B206',4,2),(5,'D201',3,3), (3,'B105',1,1),(4,'B206',3,2),(1,'D201',2,3), (3,'D202',1,2);
insert into faculties (faculties_name)
values ('Computer Science'), ('AI'),('Information Security');
insert into departments (financing, department_name, fk_faculties_id)
values (7000, 'Software Development',3), (3000, 'cafedra_2',3), (3500,'cafedra_3',1), (2957,'cafedra_4',2),(3750,'cafedra_5',1),(2198,'cafedra_6',2);
insert into _groups (group_name, _year, number_of_students, fk_departments_id)
values ('P107', 2, 12, 1), ('P108', 3, 7, 2), ('P109', 4, 19, 3), ('P110', 1, 17, 4), ('P111', 2, 13, 5),('P100', 3, 10, 6), ('P101', 2, 11, 1), ('P201', 3, 9, 4),('P202',5, 10, 1);
insert into group_lectures 
values(1,1),(2,2),(3,3),(4,4),(5,5),(6,3),(7,4),(8,5),(9,1);