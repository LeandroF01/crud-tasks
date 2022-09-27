insert into users 
( 
	id, 
	name, 
	email, 
	age, 
	height, 
	is_active
) values (
	'8d204034-fc25-453c-a1db-462aaebba539', 
	'Jorge Gomez', 
	'jorge.g@academlo.com', 
	24, 
	1.75,
	false
),
(
	'02f38b9a-c07f-4d5b-bef4-c1cca531dabe', 
	'Rene Martinez', 
	'rene@academlo.com', 
	27, 
	1.83, 
	true
);

-- Hola este es un comentario
-- GET todos los usuarios

select * from users;  

select id, name, age from users;  

select * from users where is_active = true ;  
