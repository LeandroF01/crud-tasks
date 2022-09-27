SELECT
    users.id_user,
    roles.rol,
    users.first_name,
    users.last_name,
    users.email,
    users."password",
CASE
        WHEN courses.course IS NULL THEN 'N/A' 
        WHEN courses.course IS NOT NULL THEN courses.course 
    END AS course_name,
CASE
        WHEN categories.category IS NULL THEN 'N/A' 
        WHEN categories.category IS NOT NULL THEN categories.category 
    END AS category_name,
CASE
        WHEN levels."level" IS NULL THEN 'N/A' 
        WHEN levels."level" IS NOT NULL THEN levels."level" 
    END AS level_name 
FROM
    users
    LEFT JOIN roles ON users.id_rol = roles.id_rol
    LEFT JOIN users_courses_master ON users.id_user = users_courses_master.id_user
    LEFT JOIN courses ON users_courses_master.id_course = courses.id_course
    LEFT JOIN levels ON courses.id_level = levels.id_level
    LEFT JOIN categories ON courses.id_category = categories.id_category 
ORDER BY
    roles.rol,
    users.id_user