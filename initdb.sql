/* Silly lord of the rings databse to demo mysql.
*/
CREATE DATABASE IF NOT EXISTS student;

use student;

DROP TABLE IF EXISTS characters;
CREATE TABLE IF NOT EXISTS characters(
character_id	INT NOT NULL AUTO_INCREMENT,
firstName	VARCHAR(30),
lastName	VARCHAR(30),
email		VARCHAR(80),
PRIMARY KEY(character_id)
);

INSERT INTO characters(firstName, lastName, email) VALUES('Frodo', 'Baggins', 'frodo.baggins@gmail.com');
INSERT INTO characters(firstName, lastName, email) VALUES('Samwise', 'Gamgee', 'samwise.gamgee@gmail.com');
INSERT INTO characters(firstName, lastName, email) VALUES('Legolas', 'Greenleaf', 'legolas.greenleaf@gmail.com');
INSERT INTO characters(firstName, lastName, email) VALUES('Pippin', 'Took', 'pippin.took@gmail.com');
INSERT INTO characters(firstName, lastName, email) VALUES('Bilbo', 'Baggins', 'bilbo.baggins@gmail.com');
INSERT INTO characters(firstName, lastName, email) VALUES('Gandalf', 'The White', 'gandalf.thewhite@gmail.com');
INSERT INTO characters(firstName, lastName, email) VALUES('Grima', 'Wormtongue', 'grima.wormtongue@gmail.com');

DROP TABLE IF EXISTS weapons;
CREATE TABLE IF NOT EXISTS weapons(
weapon_id	INT NOT NULL AUTO_INCREMENT,
name		VARCHAR(30),
style		VARCHAR(30),
PRIMARY KEY(weapon_id)
);

INSERT INTO weapons(name, style) VALUES('sword', 'melee');
INSERT INTO weapons(name, style) VALUES('knife', 'melee');
INSERT INTO weapons(name, style) VALUES('staff', 'magic');
INSERT INTO weapons(name, style) VALUES('rock', 'throw');
INSERT INTO weapons(name, style) VALUES('ring', 'magic');
INSERT INTO weapons(name, style) VALUES('torch', 'melee');
INSERT INTO weapons(name, style) VALUES('palantir', 'magic');
INSERT INTO weapons(name, style) VALUES('spit', 'throw');
INSERT INTO weapons(name, style) VALUES('bow', 'melee');
INSERT INTO weapons(name, style) VALUES('arrow', 'throw');
INSERT INTO weapons(name, style) VALUES('pan', 'melee');

DROP TABLE IF EXISTS character_weapons;
CREATE TABLE IF NOT EXISTS character_weapons(
character_weapon_id	INT NOT NULL AUTO_INCREMENT,
character_id		INT NOT NULL,
weapon_id		INT NOT NULL,
FOREIGN KEY(character_id) REFERENCES characters(character_id),
FOREIGN KEY(weapon_id) REFERENCES weapons(weapon_id),
PRIMARY KEY(character_weapon_id)
);


INSERT INTO character_weapons(character_id, weapon_id) VALUES(1, 2);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(1, 5);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(2, 1);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(2, 4);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(2, 11);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(3, 2);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(3, 9);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(3, 10);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(4, 1);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(5, 1);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(5, 5);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(5, 6);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(6, 1);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(6, 3);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(6, 7);
INSERT INTO character_weapons(character_id, weapon_id) VALUES(7, 8);

SELECT `weapons`.`name`,`weapons`.`style``character_weapons`.* FROM weapons
LEFT JOIN `student`.`character_weapons` ON `weapons`.`weapon_id` = `character_weapons`.`weapon_id` 
LEFT JOIN `student`.`characters` ON `character_weapons`.`character_id` = `characters`.`character_id` 
 WHERE(( firstName = 'frodo'))
