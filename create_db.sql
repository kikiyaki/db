CREATE SCHEMA test DEFAULT CHARACTER SET utf8 ;

USE test;

CREATE TABLE companies (
id INT PRIMARY KEY AUTO_INCREMENT,
status INT,
name VARCHAR(30),
inn INT,
ceo VARCHAR(30),
address VARCHAR(80)
);

CREATE TABLE contacts (
id INT PRIMARY KEY AUTO_INCREMENT,
comp_id INT NOT NULL,
name VARCHAR(30),
phone VARCHAR(15),
email VARCHAR(30)
);

CREATE TABLE users (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30),
pass CHAR(250),
role INT
);

CREATE TABLE update_companies (
company_id INT PRIMARY KEY,
user_id INT,
status INT,
name VARCHAR(30),
inn INT,
ceo VARCHAR(30),
address VARCHAR(30)
);

CREATE TABLE update_contacts (
cont_id INT PRIMARY KEY,
user_id INT,
status INT,
name VARCHAR(30),
phone VARCHAR(15),
email VARCHAR(30)
);

INSERT INTO users (name, pass, role) VALUES ('admin', 'admin', 1);
INSERT INTO users (name, pass, role) VALUES ('editor', 'editor', 2);

INSERT INTO companies (status, name, inn, ceo, address) values (
0, 'ООО Сталь', 111111111, 'Сидоров А.Е.', 'Санкт-Петербург, ул. Кузнецовская, д.3'
),
(
0, 'ООО Металл', 222222222, 'Алексеев А.Е.', 'Санкт-Петербург, ул. Попова, д.3'
),
(
0, 'ООО Пластик', 333333333, 'Антонюк А.Е.', 'Санкт-Петербург, пр. Космонавтов, д.22'
),
(
0, 'ПАО Бетон', 444444444, 'Петрова А.Е.', 'Москва, ул. Ленина, д.22'
),
(
0, 'ПАО Полимер', 123123123, 'Семенова А.Е.', 'Москва, ул. Толстого, д.11'
),
(
0, 'ООО Измерения', 123412341, 'Цветков Э.Д.', 'Санкт-Петербург, ул. Профессора Попова, д.5'
),
(
0, 'ООО Алюминий', 123451234, 'Сергеев А.А.', 'Москва, ул. Коммунальная, д.44'
),
(
0, 'ПАО Радий', 123456123, 'Николаев Е.Е.', 'Москва, ул. Ленина, д.11'
),
(
0, 'ООО Никель', 123456712, 'Борисов А.В.', 'Санкт-Петербург, пр. Новоизмайловский, д.16'
),
(
0, 'ООО Хром', 123456781, 'Александров А.Е.', 'Великий Новгород, ул. Псковская, д.13'
),
(
0, 'ООО Литий', 123333333, 'Лучинин Ф.М.', 'Псков, ул. Алексея Алехина, д.17'
),
(
0, 'ООО Фуллерен', 123123221, 'Алексеев А.А.', 'Санкт-Петербург, пр. Медиков, д.77'
);


INSERT INTO contacts (comp_id, name, phone, email) values (
1, 'Дмитрий', 89992001122, 'mail@mail.ru'
),
(
1, 'Олег', 89992043222, 'gggl@mail.ru'
),
(
2, 'Петр', 89992234322, 'mfdl@mail.ru'
),
(
3, 'Семен', 89956001122, 'madfgf@fff.ru'
),
(
4, 'Вячеслав', 89765001122, 'mail@fdfg.ru'
),
(
5, 'Алена', 89996765122, 'asdasd@sdad.ru'
),
(
5, 'Александра', 81234501122, 'qwe@qwe.ru'
),
(
5, 'Алина', 89992043432, 'sdfl@mjg.ru'
),
(
6, 'Ольга', 89342001122, 'bfg@mbddfb.ru'
),
(
7, 'Борис', 89923401122, 'mail@mail.ru'
),
(
8, 'Афанасий', 8992342122, 'sdfsdfil@sdfsdafil.ru'
),
(
9, 'Даниил', 89992876622, 'asdiasda.ru'
),
(
10, 'Сергей', 8998766122, 'mail@mail.ru'
),
(
11, 'Анна', 8999876622, 'asdasd@asdil.ru'
),
(
12, 'Денис', 89998761122, 'asdasmail.ru'
),
(
13, 'Кирилл', 89994001122, 'msdfsdf@mail.ru'
),
(
13, 'Дмитрий', 899432001122, 'ddddd@mail.ru'
),
(
14, 'Наталья', 89234401122, 'mffff@mail.ru'
),
(
14, 'Федор', 89923412322, 'mdfsds@mail.ru'
),
(
3, 'Алексей', 89992444122, 'sdsdfdsd@mail.ru'
);



