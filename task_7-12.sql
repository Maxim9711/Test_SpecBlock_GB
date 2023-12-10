DROP DATABASE IF EXISTS `Друзья человека`;
CREATE DATABASE `Друзья человека`;
USE `Друзья человека`;

DROP TABLE IF EXISTS Animal;
CREATE TABLE Animal (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	typeAnimal varchar(50)
);

INSERT INTO Animal (`typeAnimal`) VALUES ('Домашнее животное');
INSERT INTO Animal (`typeAnimal`) VALUES ('Вьючное животное');


DROP TABLE IF EXISTS Pet;
CREATE TABLE Pet (
	id SERIAL,
	typePet varchar(50),
	id_typeAminal BIGINT UNSIGNED NOT NULL,

	FOREIGN KEY (id_typeAminal) REFERENCES Animal(id)
);
 
INSERT INTO Pet (`typePet`, `id_typeAminal`) VALUES ('Собака', '1');
INSERT INTO Pet (`typePet`, `id_typeAminal`) VALUES ('Кошка', '1');
INSERT INTO Pet (`typePet`, `id_typeAminal`) VALUES ('Хомяк', '1');


DROP TABLE IF EXISTS Pack_animal;
CREATE TABLE Pack_animal (
	id SERIAL,
	typePack_animal varchar(50),
	id_typeAminal BIGINT UNSIGNED NOT NULL,

	FOREIGN KEY (id_typeAminal) REFERENCES Animal(id)
);
 
INSERT INTO Pack_animal (`typePack_animal`, `id_typeAminal`) VALUES ('Лошадь', '2');
INSERT INTO Pack_animal (`typePack_animal`, `id_typeAminal`) VALUES ('Верблюд', '2');
INSERT INTO Pack_animal (`typePack_animal`, `id_typeAminal`) VALUES ('Осел', '2');



DROP TABLE IF EXISTS Dog;
CREATE TABLE Dog (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_typePet BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_typePet) REFERENCES Pet(id)
);
 
INSERT INTO Dog (`pet_name`, `commands`, `birthday`, `id_typePet`) VALUES ('Шустрик', 'Сидеть, лежать, стоять, можно', '2011-12-20', '1');
INSERT INTO Dog (`pet_name`, `commands`, `birthday`, `id_typePet`) VALUES ('Бобик', 'Лежать, стоять, можно', '2012-12-20', '1');
INSERT INTO Dog (`pet_name`, `commands`, `birthday`, `id_typePet`) VALUES ('Мия', 'Тихо, лежать, стоять, можно', '2013-12-20', '1');



DROP TABLE IF EXISTS Cat;
CREATE TABLE Cat (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_typePet BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_typePet) REFERENCES Pet(id)
);
 
INSERT INTO Cat (`pet_name`, `commands`, `birthday`, `id_typePet`) VALUES ('Пупсик', 'Спать', '2011-09-21', '2');
INSERT INTO Cat (`pet_name`, `commands`, `birthday`, `id_typePet`) VALUES ('Пушистик', 'Мурлыкать', '2009-12-15', '2');
INSERT INTO Cat (`pet_name`, `commands`, `birthday`, `id_typePet`) VALUES ('Бывалый', '', '2005-11-20', '2');



DROP TABLE IF EXISTS Hamster;
CREATE TABLE Hamster (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_typePet BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_typePet) REFERENCES Pet(id)
);
 
INSERT INTO Hamster (`pet_name`, `commands`, `birthday`, `id_typePet`) VALUES ('Хомяк_1', 'бегать по колесу', '2021-12-21', '3');
INSERT INTO Hamster (`pet_name`, `commands`, `birthday`, `id_typePet`) VALUES ('Хомяк_2', 'бегать по колесу', '2021-12-21', '3');
INSERT INTO Hamster (`pet_name`, `commands`, `birthday`, `id_typePet`) VALUES ('Хомяк_3', 'бегать по колесу', '2021-12-21', '3');


DROP TABLE IF EXISTS Hourse;
CREATE TABLE Hourse (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_typePack_animal BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_typePack_animal) REFERENCES Pack_animal(id)
);
 
INSERT INTO Hourse (`pet_name`, `commands`, `birthday`, `id_typePack_animal`) VALUES ('Юлий', 'Рысь, Хоп, Шагом, Тише', '2001-10-21', '1');
INSERT INTO Hourse (`pet_name`, `commands`, `birthday`, `id_typePack_animal`) VALUES ('Белый', 'Рысь, Хоп, Шагом, Тише', '2000-05-21', '1');
INSERT INTO Hourse (`pet_name`, `commands`, `birthday`, `id_typePack_animal`) VALUES ('Пегас', 'Рожица', '2005-01-21', '1');



DROP TABLE IF EXISTS Camel;
CREATE TABLE Camel (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_typePack_animal BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_typePack_animal) REFERENCES Pack_animal(id)
);
 
INSERT INTO Camel (`pet_name`, `commands`, `birthday`, `id_typePack_animal`) VALUES ('Патрон', 'Стоять, Каш, Лежать', '2001-10-21', '2');
INSERT INTO Camel (`pet_name`, `commands`, `birthday`, `id_typePack_animal`) VALUES ('Тушкан', 'Цок-Цок, Тише, Иди', '2008-05-21', '2');
INSERT INTO Camel (`pet_name`, `commands`, `birthday`, `id_typePack_animal`) VALUES ('camelCase', 'Рожица', '2002-01-21', '2');



DROP TABLE IF EXISTS Donkey;
CREATE TABLE Donkey (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_typePack_animal BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_typePack_animal) REFERENCES Pack_animal(id)
);
 
INSERT INTO Donkey (`pet_name`, `commands`, `birthday`, `id_typePack_animal`) VALUES ('Молния', 'Тащи', '2001-10-21', '3');
INSERT INTO Donkey (`pet_name`, `commands`, `birthday`, `id_typePack_animal`) VALUES ('Гром', 'Марш', '2008-05-21', '3');
INSERT INTO Donkey (`pet_name`, `commands`, `birthday`, `id_typePack_animal`) VALUES ('Полконя', 'Галопом', '2002-01-21', '3');


-- SELECT * FROM Camel;
DELETE FROM Camel;
SELECT * FROM Camel;

-- SELECT * FROM Hourse
-- UNION
-- SELECT * FROM Donkey;

DROP TABLE IF EXISTS Artiodactyl;
CREATE TABLE Artiodactyl (
	SELECT * FROM Hourse
-- 	UNION
-- 	SELECT * FROM Donkey
);

-- SELECT * FROM Artiodactyl;



