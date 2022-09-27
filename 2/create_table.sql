--DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
  id_category uuid NOT NULL,
  category varchar(40) COLLATE pg_catalog.default NOT NULL
);
--DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
  id_course uuid NOT NULL,
  course varchar(40) COLLATE pg_catalog.default NOT NULL,
  detail varchar(120) COLLATE pg_catalog.default NOT NULL,
  id_level uuid NOT NULL,
  id_category uuid NOT NULL,
  duration int2 NOT NULL DEFAULT 100
);

--DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
  id_rol uuid NOT NULL,
  rol varchar(40) COLLATE pg_catalog.default NOT NULL
);

--DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id_user uuid NOT NULL,
  email varchar(120) COLLATE pg_catalog.default NOT NULL,
  phone varchar(14) COLLATE pg_catalog.default,
  password varchar(10) COLLATE pg_catalog.default NOT NULL,
  username varchar(10) COLLATE pg_catalog.default NOT NULL,
  id_rol uuid NOT NULL,
  first_name varchar(16) COLLATE pg_catalog.default NOT NULL,
  last_name varchar(16) COLLATE pg_catalog.default NOT NULL
);


--DROP TABLE IF EXISTS users_courses_master;
CREATE TABLE users_courses_master (
 id_user_course uuid NOT NULL,
  id_user uuid NOT NULL,
  id_course uuid NOT NULL
);

--DROP TABLE IF EXISTS users_courses_details;
CREATE TABLE users_courses_details (
  id_user_course uuid NOT NULL,
  id_video uuid NOT NULL,
  is_complete bool DEFAULT false
);


--DROP TABLE IF EXISTS levels;
CREATE TABLE levels (
  id_level uuid NOT NULL,
  level varchar(40) COLLATE pg_catalog.default NOT NULL
);

--DROP TABLE IF EXISTS videos;
CREATE TABLE videos (
  id_video uuid NOT NULL,
  video varchar(40) COLLATE pg_catalog.default NOT NULL,
  url varchar(120) COLLATE pg_catalog.default NOT NULL,
  id_course uuid NOT NULL,
  duration int2
);

INSERT INTO categories VALUES ('29ad0dfb-6db0-cde5-f403-ff639a736e3b', 'Sales manager');
INSERT INTO categories VALUES ('388ccd0f-48e3-0fbe-9c78-dd19a583eb70', 'Pharmacist');
INSERT INTO categories VALUES ('0d048829-e917-da7d-912c-73c8e80f9058', 'Graphic designer');
INSERT INTO categories VALUES ('04efcb61-3eb8-4076-cbc5-ee3b65a4aaee', 'UX/UI designer');
INSERT INTO categories VALUES ('7f01d488-d8c1-7d56-b3bb-712f767c278e', 'Office clerk');
INSERT INTO categories VALUES ('706c4dcc-a72b-f3a6-78db-7f96979c8f9b', 'Professor');
INSERT INTO categories VALUES ('e05b3d1b-ebb1-a6c1-77b8-312fa6c255c0', 'Client services manager');
INSERT INTO categories VALUES ('1339da29-9319-c19c-29bc-08d62ace9475', 'Chief operations officer');
INSERT INTO categories VALUES ('f219a19f-7076-e73b-3d53-7cbb2c63dfca', 'Human resources manager');
INSERT INTO categories VALUES ('f2cba4c7-7d6c-00bc-590d-52413283d9cc', 'teacher');


INSERT INTO levels VALUES ('084ce254-c479-c716-cd47-b02594f2e622', 'Middle');
INSERT INTO levels VALUES ('596be853-b1cd-7276-7b03-3da02afeec0a', 'Basic');
INSERT INTO levels VALUES ('f279bdea-f9d5-0505-81b3-c6b7c4d7e0ab', 'Advanced');

-- ----------------------------
-- Table structure for roles
-- ----------------------------


-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO roles VALUES ('f6ff3ec9-f800-79b7-f557-ca042cddf1b6', 'Student');
INSERT INTO roles VALUES ('ce261afd-b7c4-cc2f-73ac-913784630ff9', 'Teacher');
INSERT INTO roles VALUES ('0f3cb42e-edb3-c10a-5016-874eac15b0e6', 'Admin');

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO users VALUES ('9976f5eb-1e06-5f1b-58fa-eb6b55059e5e', 'jpayne88@outlook.com', '213-646-7407', 'WtnlJeT2j9', 'AcaUserhN', 'f6ff3ec9-f800-79b7-f557-ca042cddf1b6', 'Jennifer', 'Evans');
INSERT INTO users VALUES ('cece4e4a-63d9-b2dd-f0b5-ac0568a36637', 'jellis@outlook.com', '755-570-8655', 'yjWGdz79d0', 'AcaUserCl', 'f6ff3ec9-f800-79b7-f557-ca042cddf1b6', 'Judy', 'Williams');
INSERT INTO users VALUES ('17eb7dcc-fdf5-a9f8-f1e4-ef49e7a6c135', 'zta3@icloud.com', '11-256-1049', 'jirCRP612v', 'AcaUserEu', 'f6ff3ec9-f800-79b7-f557-ca042cddf1b6', 'Ziyi', 'Robertson');
INSERT INTO users VALUES ('3dedec16-f4e5-cb83-e4fd-33be4363a2c0', 'cai112@icloud.com', '11-757-4594', 'hGEqi2dqEt', 'AcaUserAF', 'f6ff3ec9-f800-79b7-f557-ca042cddf1b6', 'Zhiyuan', 'Patel');
INSERT INTO users VALUES ('dbe46118-9181-4508-2c03-63a212a58132', 'murphya@gmail.com', '66-014-5859', '6sdqN0qvwp', 'AcaUsercc', 'f6ff3ec9-f800-79b7-f557-ca042cddf1b6', 'Alfred', 'Morales');
INSERT INTO users VALUES ('bcc456f9-84d5-c5cf-7046-98148bd5245b', 'johnson1211@mail.com', '838-403-3995', 'jWxsOIfyeo', 'AcaUserbC', 'f6ff3ec9-f800-79b7-f557-ca042cddf1b6', 'Pamela', 'Nelson');
INSERT INTO users VALUES ('5d85a059-a88e-5b6b-283d-61adb6214e75', 'bettyo130@hotmail.com', '178-4583-3585', 'ZbDa3MxWIv', 'AcaUserpA', 'f6ff3ec9-f800-79b7-f557-ca042cddf1b6', 'Betty', 'Turner');
INSERT INTO users VALUES ('c947ee5a-38e2-fad8-b507-461a824893cb', 'kondominato@gmail.com', '189-2611-8859', 'hD8vHZycIQ', 'AcaUserfa', 'ce261afd-b7c4-cc2f-73ac-913784630ff9', 'Minato', 'Allen');
INSERT INTO users VALUES ('4375a58e-2992-4d59-4290-e591cc17c048', 'kmmak@outlook.com', '7721 570395', 'cZ7nftMdvh', 'AcaUserum', 'ce261afd-b7c4-cc2f-73ac-913784630ff9', 'Ka Man', 'Long');
INSERT INTO users VALUES ('693eb4be-088f-4a79-60c1-065b3e82185e', 'xiuyingden6@gmail.com', '90-5176-5840', 'kNSqu3oMJH', 'AcaUserzY', '0f3cb42e-edb3-c10a-5016-874eac15b0e6', 'Xiuying', 'Olson');

-- ---------------


-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO courses VALUES ('d9521cb4-f01f-63ed-4eea-718926852225', 'Database manager', 'Landed property industry', 'f279bdea-f9d5-0505-81b3-c6b7c4d7e0ab', '7f01d488-d8c1-7d56-b3bb-712f767c278e', 70);
INSERT INTO courses VALUES ('4f043e13-73e3-f47a-fc30-05313651dc7f', 'Software developer', 'Consulting industry', '596be853-b1cd-7276-7b03-3da02afeec0a', '1339da29-9319-c19c-29bc-08d62ace9475', 100);
INSERT INTO courses VALUES ('a4a6a162-3220-debc-fbbb-5967a0fb8224', 'Graphic designer', 'Pharmaceutical industry', 'f279bdea-f9d5-0505-81b3-c6b7c4d7e0ab', '04efcb61-3eb8-4076-cbc5-ee3b65a4aaee', 100);
INSERT INTO courses VALUES ('d9d3d58a-95f8-a128-40c4-dbcd7c83b0e7', 'Office manager', 'Logistic industry', 'f279bdea-f9d5-0505-81b3-c6b7c4d7e0ab', '04efcb61-3eb8-4076-cbc5-ee3b65a4aaee', 100);
INSERT INTO courses VALUES ('ab5a4866-e948-f3c5-bac6-175733f5d2fd', 'Marketing director', 'Information technology industry', '084ce254-c479-c716-cd47-b02594f2e622', '1339da29-9319-c19c-29bc-08d62ace9475', 90);

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO videos VALUES ('ec2b8b77-61e4-b17a-b27d-50ba1e201be9', 'TLNWwjuRAh', 'https://www.video.lokok1128.com/ComputersElectronics', 'a4a6a162-3220-debc-fbbb-5967a0fb8224', 10);
INSERT INTO videos VALUES ('c301ca2e-57a7-8c94-940f-f7cda77b4047', 'vE1q0ufuHF', 'http://www.youtube.dazhiyuan.com/AutomotivePartsAccessories', 'a4a6a162-3220-debc-fbbb-5967a0fb8224', 10);
INSERT INTO videos VALUES ('bf9454da-a080-32ae-32dd-814cebd0dcf9', 'ictyLwIiLK', 'http://www.youtube.wayuning.com/HealthBabyCare', 'a4a6a162-3220-debc-fbbb-5967a0fb8224', 30);
INSERT INTO videos VALUES ('29ec6b0a-cff5-f893-ed9b-b4f0be981ab1', 'fYylJK3sQ1', 'https://www.video.saumansiu.com/BeautyPersonalCare', 'a4a6a162-3220-debc-fbbb-5967a0fb8224', 40);
INSERT INTO videos VALUES ('06c6ca23-7282-c608-5999-fe2abc79c017', 'dwXEbJL6Qo', 'http://www.video.rkoyama47.com/AppsGames', 'd9521cb4-f01f-63ed-4eea-718926852225', 10);
INSERT INTO videos VALUES ('9b5ccb1c-aaf6-b37e-a9ab-553b050b5270', 'GBdeOXbMUJ', 'http://www.youtube.qin9.com/Beauty', 'd9521cb4-f01f-63ed-4eea-718926852225', 40);
INSERT INTO videos VALUES ('fb40a75b-0594-5fc1-6d8a-adb8e3158dc1', 'qhoC7l2uIb', 'http://www.video.tszhin5.com/CollectiblesFineArt', 'd9521cb4-f01f-63ed-4eea-718926852225', 20);
INSERT INTO videos VALUES ('40826c86-86ed-4924-3902-de0597bef51a', 'Rlu8H9SxFi', 'http://www.video.lu904.com/HouseholdKitchenAppliances', 'd9d3d58a-95f8-a128-40c4-dbcd7c83b0e7', 20);
INSERT INTO videos VALUES ('55902ade-f3a3-f06c-a7f2-1f0e8212324f', 'sUOmpOp9zm', 'https://www.youtube.hanas1943.com/ClothingShoesandJewelry', '4f043e13-73e3-f47a-fc30-05313651dc7f', 30);
INSERT INTO videos VALUES ('92656a32-561b-cd9d-af59-54ed28857efe', 'SLIiiOEWmX', 'http://www.youtube.herbertgr.com/VideoGames', '4f043e13-73e3-f47a-fc30-05313651dc7f', 40);
INSERT INTO videos VALUES ('79b5e085-520e-bd87-746d-ead5cbf31ab2', 'MdUDvLr4YU', 'http://www.youtube.yunta8.com/MusicalInstrument', '4f043e13-73e3-f47a-fc30-05313651dc7f', 15);
INSERT INTO videos VALUES ('47ce8799-b121-d334-a4a3-46eb3caf1bd8', 'kFEt4JrQPT', 'https://www.youtube.shi5.com/SportsOutdoor', '4f043e13-73e3-f47a-fc30-05313651dc7f', 15);
INSERT INTO videos VALUES ('94299b41-0b8d-5d02-527e-9414bd843a88', 'MPJpLOMNlP', 'https://www.youtube.raymondwhi.com/Food', 'a4a6a162-3220-debc-fbbb-5967a0fb8224', 10);
INSERT INTO videos VALUES ('d9102026-0776-f17d-0f57-56e23813c232', 'iE8mibjhj6', 'https://www.youtube.mikefoster5.com/SportsOutdoor', 'd9d3d58a-95f8-a128-40c4-dbcd7c83b0e7', 30);
INSERT INTO videos VALUES ('69b2e6a0-edb0-f412-0cb1-fd591e0a71f6', '6MUZSCiwdz', 'http://www.video.nao.com/Baby', 'd9d3d58a-95f8-a128-40c4-dbcd7c83b0e7', 30);
INSERT INTO videos VALUES ('b408c97c-17ff-9f7d-6abb-a710cf84982e', 'YTn9NDG5W8', 'http://www.youtube.sano2010.com/Appliances', 'd9d3d58a-95f8-a128-40c4-dbcd7c83b0e7', 20);
INSERT INTO videos VALUES ('1ef8abdd-24c7-1669-6c4d-899a765a1187', 'QNrEFpbDc9', 'http://www.video.mxiuying906.com/Books', 'ab5a4866-e948-f3c5-bac6-175733f5d2fd', 30);
INSERT INTO videos VALUES ('28bf14a4-928e-f88b-0c99-7717100cb0b7', 'B6PO2kuGDT', 'http://www.video.raglenn.com/ArtsHandicraftsSewing', 'ab5a4866-e948-f3c5-bac6-175733f5d2fd', 60);



-- ----------------------------
-- Records of users_courses_master
-- ----------------------------
INSERT INTO users_courses_master VALUES ('718505ad-8ece-ee48-f4e2-559afa5d2877', '9976f5eb-1e06-5f1b-58fa-eb6b55059e5e', 'd9521cb4-f01f-63ed-4eea-718926852225');
INSERT INTO users_courses_master VALUES ('04419e91-a1c3-abd5-741d-1168bcf75e7d', '9976f5eb-1e06-5f1b-58fa-eb6b55059e5e', '4f043e13-73e3-f47a-fc30-05313651dc7f');
INSERT INTO users_courses_master VALUES ('a2e7a191-61c9-506c-4ae7-1e4250ce367d', '9976f5eb-1e06-5f1b-58fa-eb6b55059e5e', 'a4a6a162-3220-debc-fbbb-5967a0fb8224');
INSERT INTO users_courses_master VALUES ('82c68f37-e2c2-a3bb-9373-737cc0cda365', 'cece4e4a-63d9-b2dd-f0b5-ac0568a36637', 'd9521cb4-f01f-63ed-4eea-718926852225');
INSERT INTO users_courses_master VALUES ('d360669f-56d6-788e-1807-787eac2681fc', 'cece4e4a-63d9-b2dd-f0b5-ac0568a36637', 'ab5a4866-e948-f3c5-bac6-175733f5d2fd');
INSERT INTO users_courses_master VALUES ('c3c69790-02ca-502d-7e7a-7b9284feb5d2', '17eb7dcc-fdf5-a9f8-f1e4-ef49e7a6c135', 'ab5a4866-e948-f3c5-bac6-175733f5d2fd');
INSERT INTO users_courses_master VALUES ('07a15c91-8b5e-0f6f-c276-eec66987ed33', '3dedec16-f4e5-cb83-e4fd-33be4363a2c0', 'd9d3d58a-95f8-a128-40c4-dbcd7c83b0e7');


-- ----------------------------
-- Records of users_courses_details
-- ----------------------------
INSERT INTO users_courses_details VALUES ('718505ad-8ece-ee48-f4e2-559afa5d2877', '06c6ca23-7282-c608-5999-fe2abc79c017', 't');
INSERT INTO users_courses_details VALUES ('718505ad-8ece-ee48-f4e2-559afa5d2877', 'fb40a75b-0594-5fc1-6d8a-adb8e3158dc1', 't');
INSERT INTO users_courses_details VALUES ('04419e91-a1c3-abd5-741d-1168bcf75e7d', '55902ade-f3a3-f06c-a7f2-1f0e8212324f', 't');
INSERT INTO users_courses_details VALUES ('04419e91-a1c3-abd5-741d-1168bcf75e7d', '92656a32-561b-cd9d-af59-54ed28857efe', 't');
INSERT INTO users_courses_details VALUES ('04419e91-a1c3-abd5-741d-1168bcf75e7d', '79b5e085-520e-bd87-746d-ead5cbf31ab2', 't');
INSERT INTO users_courses_details VALUES ('04419e91-a1c3-abd5-741d-1168bcf75e7d', '47ce8799-b121-d334-a4a3-46eb3caf1bd8', 't');
INSERT INTO users_courses_details VALUES ('718505ad-8ece-ee48-f4e2-559afa5d2877', '9b5ccb1c-aaf6-b37e-a9ab-553b050b5270', 'f');



ALTER TABLE categories ADD CONSTRAINT categories_category_key UNIQUE (category);

ALTER TABLE categories ADD CONSTRAINT categories_pkey PRIMARY KEY (id_category);


ALTER TABLE courses ADD CONSTRAINT courses_pkey PRIMARY KEY (id_course);

ALTER TABLE levels ADD CONSTRAINT levels_level_key UNIQUE (level);


ALTER TABLE levels ADD CONSTRAINT levels_pkey PRIMARY KEY (id_level);


ALTER TABLE roles ADD CONSTRAINT roles_rol_key UNIQUE (rol);


ALTER TABLE roles ADD CONSTRAINT roles_pkey PRIMARY KEY (id_rol);


ALTER TABLE users ADD CONSTRAINT users_username_key UNIQUE (username);
ALTER TABLE users ADD CONSTRAINT users_phone_key UNIQUE (phone);
ALTER TABLE users ADD CONSTRAINT users_email_key UNIQUE (email);


ALTER TABLE users ADD CONSTRAINT users_pkey PRIMARY KEY (id_user);


ALTER TABLE users_courses_details ADD CONSTRAINT users_cours_details_pkey PRIMARY KEY (id_user_course, id_video);


ALTER TABLE users_courses_master ADD CONSTRAINT users_courses_master_id_user_id_course_key UNIQUE (id_user, id_course);


ALTER TABLE users_courses_master ADD CONSTRAINT users_courses_pkey PRIMARY KEY (id_user_course);


ALTER TABLE videos ADD CONSTRAINT course_videos_video_url_key UNIQUE (video, url);

ALTER TABLE videos ADD CONSTRAINT course_videos_pkey PRIMARY KEY (id_video);


ALTER TABLE courses ADD CONSTRAINT courses_id_category_fkey FOREIGN KEY (id_category) REFERENCES categories (id_category) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE courses ADD CONSTRAINT courses_id_level_fkey FOREIGN KEY (id_level) REFERENCES levels (id_level) ON DELETE NO ACTION ON UPDATE NO ACTION;


ALTER TABLE users ADD CONSTRAINT users_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES roles (id_rol) ON DELETE NO ACTION ON UPDATE NO ACTION;


ALTER TABLE users_courses_details ADD CONSTRAINT users_courses_details_id_user_course_fkey FOREIGN KEY (id_user_course) REFERENCES users_courses_master (id_user_course) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE users_courses_details ADD CONSTRAINT users_courses_details_id_video_fkey FOREIGN KEY (id_video) REFERENCES videos (id_video) ON DELETE NO ACTION ON UPDATE NO ACTION;


ALTER TABLE users_courses_master ADD CONSTRAINT users_courses_id_course_fkey FOREIGN KEY (id_course) REFERENCES courses (id_course) ON DELETE NO ACTION ON UPDATE NO ACTION;
--ALTER TABLE users_courses_master ADD CONSTRAINT users_courses_id_user_fkey FOREIGN KEY (id_user) REFERENCES users (id_user) ON DELETE NO ACTION ON UPDATE NO ACTION;


