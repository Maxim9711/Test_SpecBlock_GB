
-- ЗАДАНИЕ 7 --

DROP DATABASE IF EXISTS `Друзья человека`;
CREATE DATABASE `Друзья человека`;
USE `Друзья человека`;



-- ЗАДАНИЕ 8 --

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
	id_Animal BIGINT UNSIGNED NOT NULL,

	FOREIGN KEY (id_Animal) REFERENCES Animal(id)
);
 
INSERT INTO Pet (`typePet`, `id_Animal`) VALUES ('Собака', '1');
INSERT INTO Pet (`typePet`, `id_Animal`) VALUES ('Кошка', '1');
INSERT INTO Pet (`typePet`, `id_Animal`) VALUES ('Хомяк', '1');


DROP TABLE IF EXISTS Pack_animal;
CREATE TABLE Pack_animal (
	id SERIAL,
	typePack_animal varchar(50),
	id_Animal BIGINT UNSIGNED NOT NULL,

	FOREIGN KEY (id_Animal) REFERENCES Animal(id)
);
 
INSERT INTO Pack_animal (`typePack_animal`, `id_Animal`) VALUES ('Лошадь', '2');
INSERT INTO Pack_animal (`typePack_animal`, `id_Animal`) VALUES ('Верблюд', '2');
INSERT INTO Pack_animal (`typePack_animal`, `id_Animal`) VALUES ('Осел', '2');




-- ЗАДАНИЕ 9 --

DROP TABLE IF EXISTS Dog;
CREATE TABLE Dog (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_Pet BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_Pet) REFERENCES Pet(id)
);
 
INSERT INTO Dog (`pet_name`, `commands`, `birthday`, `id_Pet`) VALUES ('Шустрик', 'Сидеть, лежать, стоять, можно', '2011-12-20', '1');
INSERT INTO Dog (`pet_name`, `commands`, `birthday`, `id_Pet`) VALUES ('Бобик', 'Лежать, стоять, можно', '2012-12-20', '1');
INSERT INTO Dog (`pet_name`, `commands`, `birthday`, `id_Pet`) VALUES ('Мия', 'Тихо, лежать, стоять, можно', '2013-12-20', '1');



DROP TABLE IF EXISTS Cat;
CREATE TABLE Cat (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_Pet BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_Pet) REFERENCES Pet(id)
);
 
INSERT INTO Cat (`pet_name`, `commands`, `birthday`, `id_Pet`) VALUES ('Пупсик', 'Спать', '2011-09-21', '2');
INSERT INTO Cat (`pet_name`, `commands`, `birthday`, `id_Pet`) VALUES ('Пушистик', 'Мурлыкать', '2009-12-15', '2');
INSERT INTO Cat (`pet_name`, `commands`, `birthday`, `id_Pet`) VALUES ('Бывалый', '', '2005-11-20', '2');



DROP TABLE IF EXISTS Hamster;
CREATE TABLE Hamster (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_Pet BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_Pet) REFERENCES Pet(id)
);
 
INSERT INTO Hamster (`pet_name`, `commands`, `birthday`, `id_Pet`) VALUES ('Хомяк_1', 'бегать по колесу', '2021-12-21', '3');
INSERT INTO Hamster (`pet_name`, `commands`, `birthday`, `id_Pet`) VALUES ('Хомяк_2', 'бегать по колесу', '2021-12-21', '3');
INSERT INTO Hamster (`pet_name`, `commands`, `birthday`, `id_Pet`) VALUES ('Хомяк_3', 'бегать по колесу', '2021-12-21', '3');


DROP TABLE IF EXISTS Horse;
CREATE TABLE Horse (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_Pack_animal BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_Pack_animal) REFERENCES Pack_animal(id)
);
 
INSERT INTO Horse (`pet_name`, `commands`, `birthday`, `id_Pack_animal`) VALUES ('Юлий', 'Рысь, Хоп, Шагом, Тише', '2001-10-21', '1');
INSERT INTO Horse (`pet_name`, `commands`, `birthday`, `id_Pack_animal`) VALUES ('Белый', 'Рысь, Хоп, Шагом, Тише', '2000-05-21', '1');
INSERT INTO Horse (`pet_name`, `commands`, `birthday`, `id_Pack_animal`) VALUES ('Пегас', 'Рожица', '2005-01-21', '1');



DROP TABLE IF EXISTS Camel;
CREATE TABLE Camel (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_Pack_animal BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_Pack_animal) REFERENCES Pack_animal(id)
);
 
INSERT INTO Camel (`pet_name`, `commands`, `birthday`, `id_Pack_animal`) VALUES ('Патрон', 'Стоять, Каш, Лежать', '2001-10-21', '2');
INSERT INTO Camel (`pet_name`, `commands`, `birthday`, `id_Pack_animal`) VALUES ('Тушкан', 'Цок-Цок, Тише, Иди', '2008-05-21', '2');
INSERT INTO Camel (`pet_name`, `commands`, `birthday`, `id_Pack_animal`) VALUES ('camelCase', 'Рожица', '2002-01-21', '2');



DROP TABLE IF EXISTS Donkey;
CREATE TABLE Donkey (
	id SERIAL,
	pet_name varchar(50),
	commands TEXT,
	birthday DATE,
	id_Pack_animal BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (id_Pack_animal) REFERENCES Pack_animal(id)
);
 
INSERT INTO Donkey (`pet_name`, `commands`, `birthday`, `id_Pack_animal`) VALUES ('Молния', 'Тащи', '2001-10-21', '3');
INSERT INTO Donkey (`pet_name`, `commands`, `birthday`, `id_Pack_animal`) VALUES ('Гром', 'Марш', '2008-05-21', '3');
INSERT INTO Donkey (`pet_name`, `commands`, `birthday`, `id_Pack_animal`) VALUES ('Полконя', 'Галопом', '2002-01-21', '3');



-- ЗАДАНИЕ 10 --

DELETE FROM Camel;
-- SELECT * FROM Camel;


DROP TABLE IF EXISTS Artiodactyl;
CREATE TABLE Artiodactyl (
	SELECT * FROM Horse
	UNION
	SELECT * FROM Donkey
);

SET @id = 0;
UPDATE Artiodactyl SET
  id = (SELECT @id := @id + 1);
ALTER TABLE Artiodactyl MODIFY COLUMN id SERIAL;
-- ALTER TABLE Artiodactyl MODIFY COLUMN id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE Artiodactyl ADD FOREIGN KEY (id_Pack_animal) REFERENCES Pack_animal(Id);





-- ЗАДАНИЕ 11 --

DROP TABLE IF EXISTS all_pets;
CREATE TABLE all_pets( 
	SELECT * FROM Cat
	UNION
	SELECT * FROM Dog
	UNION
	SELECT * FROM Hamster
);
-- ALTER TABLE all_pets ADD COLUMN id_Pack_animal BIGINT UNSIGNED;

DROP TABLE IF EXISTS all_pack;
CREATE TABLE all_pack( 
	SELECT * FROM Donkey
	UNION
	SELECT * FROM Horse
	UNION
	SELECT * FROM Camel
);
-- ALTER TABLE all_pack ADD COLUMN id_Pet BIGINT UNSIGNED;

DROP TABLE IF EXISTS all_animals;
CREATE TABLE all_animals (
	SELECT * FROM all_pets
	UNION
	SELECT * FROM all_pack
);

DROP TABLE IF EXISTS young_animal;
CREATE TABLE young_animal (
	SELECT
		*,
		TIMESTAMPDIFF(MONTH, all_animals.birthday, NOW()) AS "how_old(month)"
	FROM all_animals WHERE TIMESTAMPDIFF(YEAR, all_animals.birthday, NOW()) >= 1 AND TIMESTAMPDIFF(YEAR, all_animals.birthday, NOW()) < 4 
);

DROP TABLE IF EXISTS all_pets;
DROP TABLE IF EXISTS all_pack;
DROP TABLE IF EXISTS all_animals;

SET @id = 0;
UPDATE young_animal SET
  id = (SELECT @id := @id + 1);
ALTER TABLE young_animal MODIFY COLUMN id SERIAL;
-- SELECT * FROM young_animal;







-- ЗАДАНИЕ 12 --

DROP TABLE IF EXISTS all_Pets;
CREATE TABLE all_Pets (
	SELECT * FROM Cat
	UNION
	SELECT * FROM Dog
	UNION
	SELECT * FROM Hamster
);
ALTER TABLE all_Pets DROP id;
-- SELECT * FROM all_Pets;

DROP TABLE IF EXISTS all_Pets_with_type;
CREATE TABLE all_Pets_with_type (
	SELECT * FROM all_Pets LEFT JOIN Pet ON all_Pets.id_Pet = Pet.id
);
ALTER TABLE all_Pets_with_type DROP id;
-- SELECT * FROM all_Pets_with_type;


DROP TABLE IF EXISTS all_Pack_animal;
CREATE TABLE all_Pack_animal (
	SELECT * FROM Camel
	UNION
	SELECT * FROM Donkey
	UNION
	SELECT * FROM Horse
);
ALTER TABLE all_Pack_animal DROP id;
-- SELECT * FROM all_Pack_animal;

DROP TABLE IF EXISTS all_Pack_animal_with_type;
CREATE TABLE all_Pack_animal_with_type (
	SELECT * FROM all_Pack_animal LEFT JOIN Pack_animal ON all_Pack_animal.id_Pack_animal = Pack_animal.id
);
ALTER TABLE all_Pack_animal_with_type DROP id;
-- SELECT * FROM all_Pack_animal_with_type;



DROP TABLE IF EXISTS all_animals;
CREATE TABLE all_animals(
	SELECT * FROM Animal
		LEFT JOIN all_Pack_animal_with_type ON all_Pack_animal_with_type.id_Animal = Animal.id
	UNION
	SELECT * FROM Animal
		LEFT JOIN all_Pets_with_type ON all_Pets_with_type.id_Animal = Animal.id
);

DROP TABLE IF EXISTS all_Pets;
DROP TABLE IF EXISTS all_Pets_with_type;
DROP TABLE IF EXISTS all_Pack_animal;
DROP TABLE IF EXISTS all_Pack_animal_with_type;

SET @id = 0;
UPDATE all_animals SET
  id = (SELECT @id := @id + 1);
ALTER TABLE all_animals MODIFY COLUMN id SERIAL;
-- SELECT * FROM all_animals;

-- id, typeAnimal, pet_name, commands, birthday, id_Pet, typePet, id_Pack_animal, typePack_animal, id_Animal


