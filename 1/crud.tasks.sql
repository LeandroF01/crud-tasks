-- dbdiagram

table tasks{
  id uuid [pk]
  title varchar [not null]
   varchar [not null]
  student varchar  [not null]
  tasks varchar
  is_active bool [default: false]
  deliver_date date
}

-- create table dbeaver

CREATE TABLE "tasks" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "teach" varchar NOT NULL,
  "student" varchar NOT NULL,
  "tasks" varchar,
  "is_active" bool DEFAULT false,
  "deliver_date" date
);

-- insert table dbeaver

insert into tasks (
id, 
title ,
teach ,
student ,
tasks ,
is_active ,
deliver_date 
) values (
'c511e99c-d789-485a-a93c-edace47ea264',
'Entregable Practico',
'Sahid Kick',
'Leandro Farias',
'https://github.com/leand/example',
true,
'2022/9/22'
),
(
'59f6ed4c-df6c-4592-a7db-efe70f3a91a3',
'Entregable Practico',
'Sahid Kick',
'Draven Ranker',
'https://github.com/draven/example',
false,
'2022/9/23'
),
(
'72c75394-184b-4de6-ab29-5a00888d9e40',
'Entregable Practico',
'Sahid Kick',
'Jinx Vue',
'https://github.com/jinx/example',
true,
'2022/9/21'
);


-- select table dbeaver

select * from tasks

select student, tasks, is_active from tasks

select * from tasks where is_active = false 

select * from tasks where deliver_date  > '2022/9/21'
