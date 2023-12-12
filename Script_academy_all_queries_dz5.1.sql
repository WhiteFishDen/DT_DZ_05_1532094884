select count(distinct teachers) as "преподов на Software Development "
from teachers inner join lectures on teachers_id = fk_teachers_id 
join group_lectures on lectures_id = lecture_id join _groups on group_id = groups_id
join departments on fk_departments_id = departments_id 
where department_name = 'Software Development'; -- task 1;

select count(distinct lectures) as "количество лекций у Dave McQueen"
from teachers inner join lectures on teachers_id = fk_teachers_id 
where teacher_name = 'Dave' and surname = 'McQueen'; -- task 2;

select count(subjects) as "количество занятий в аудитории D201", subjects_name
from subjects inner join lectures on subjects_id = fk_subject_id 
where lecture_room = 'D201'
group by subjects_name --task 3

select lecture_room as Аудитория, count(lectures) as "Количество лекций"
from lectures 
group by lecture_room
order by  lecture_room desc; --task 4

select sum(number_of_students) as "Кол. студентов препода Jack Underhill"
from _groups inner join group_lectures on groups_id = group_id
join lectures on lecture_id = lectures_id join teachers on fk_teachers_id = teachers_id
where teacher_name = 'Jack' and surname = 'Underhill'; -- task 5

select avg(salary) as "средняя зарплата Computer Science"
from teachers inner join lectures on teachers_id = fk_teachers_id 
join group_lectures on lectures_id = lecture_id join _groups on group_id = groups_id
join departments on fk_departments_id = departments_id join faculties on fk_faculties_id = faculties_id 
where faculties_name = 'Computer Science'; --task 6

select max(number_of_students), min(number_of_students)
from _groups; -- task 7

select cast("fond" as decimal(10,2))
from (select avg(financing)as "fond" from departments); -- task 8

select concat(teacher_name,' ', surname) as "Teachers", count(subjects) as "Subjects"
from teachers join lectures on teachers_id = fk_teachers_id join subjects on fk_subject_id = subjects_id
group by "Teachers"
order by "Subjects" desc; -- task 9

select count(lectures) as "Количество лекций", day_of_week as "Номер дня недели"
from lectures 
group by day_of_week 
order by day_of_week; -- task 10

select lecture_room, count(departments)
from lectures join group_lectures on lectures_id = lecture_id
join _groups on group_id = groups_id join departments on fk_departments_id = departments_id 
group by lecture_room
order by lecture_room; -- task 11

select faculties_name as "Факультет", count(subjects) as "Количество дисциплин"
from faculties join departments on faculties_id = fk_faculties_id 
join _groups on departments_id = fk_departments_id
join group_lectures on groups_id = group_id
join lectures on lecture_id = lectures_id
join subjects on fk_subject_id = subjects_id
group by faculties_name; -- task 12

select count(distinct lectures)"Количество лекций", concat(teacher_name,' in ',lecture_room) "Teacher - room" 
from lectures join teachers on fk_teachers_id = fk_teachers_id 
group by "Teacher - room"
order by "Количество лекций" desc; -- task 13



