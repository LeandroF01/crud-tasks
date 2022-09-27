SELECT DISTINCT
	users.id_user,
	users.first_name,
	users.last_name,
	roles.rol,
	courses.course,
	courses.duration AS tota_hours,
	levels."level",
	categories.category,
	( SELECT COUNT ( users_courses_details.is_complete ) AS episodes FROM users_courses_details WHERE users_courses_details.id_user_course = users_courses_master.id_user_course ) AS chapters,
	( SELECT COUNT ( users_courses_details.is_complete ) AS ended FROM users_courses_details WHERE users_courses_details.is_complete AND users_courses_details.id_user_course = users_courses_master.id_user_course ) AS endeds 
FROM
	users_courses_master
	INNER JOIN users_courses_details ON users_courses_master.id_user_course = users_courses_details.id_user_course
	INNER JOIN users ON users_courses_master.id_user = users.id_user
	INNER JOIN roles ON users.id_rol = roles.id_rol
	INNER JOIN courses ON users_courses_master.id_course = courses.id_course
	INNER JOIN videos ON users_courses_details.id_video = videos.id_video
	INNER JOIN levels ON courses.id_level = levels.id_level
	INNER JOIN categories ON courses.id_category = categories.id_category