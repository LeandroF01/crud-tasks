select * from users;
select * from todos;

insert into users (
	id,
	name,
	email,
	password
) values (
	'de00b879-bf5c-40ad-9af2-b05184a33f36',
	'usuario prueba',
	'ejemplo@ejemplo.com',
	'asd1234'
);

-- En este join, la tabla A=Users B= Todos, la tabla principal es Users
select users.id as user_id  ,users.name as user_name, todos.title  from users left join todos on users.id = todos.user_id ;

-- En este join, la tabla A=Todos B= Users, la tabla principal es Users
select users.id, users.name, todos.title  from todos right join users on users.id = todos.user_id ;

-- En este join, la tabla A=Users B= Todos, la tabla principal es Todos
select users.id, users.name, todos.title  from users right join todos on users.id = todos.user_id ;

-- En este join, la tabla A=Todos B= Users, la tabla principal es Todos
select users.id, users.name, todos.title  from  todos left join users on users.id = todos.user_id ;

-- Este es un inner join y no importa cual es cual
select users.id, users.name, todos.title  from users inner join todos on users.id = todos.user_id ;

-- Este es un inner join y no importa cual es cual
select users.id, users.name, todos.title  from users inner join todos on users.id = todos.user_id where users.id = '26f22f51-90a9-4f59-9b1a-93f145815caf';


create view view_users_todos as select users.id as user_id  ,users.name as user_name, todos.title  from users left join todos on users.id = todos.user_id ;

select * from view_users_todos where user_name = 'Sahid';