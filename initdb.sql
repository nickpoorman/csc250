DROP TABLE lotr;
CREATE DATABASE IF NOT EXISTS lotr;

use csc250;

CREATE TABLE IF NOT EXISTS users(
user_id		INT NOT NULL AUTO_INCREMENT,
firstName	VARCHAR(30),
lastName	VARCHAR(30),
email		VARCHAR(80),
PRIMARY_KEY(user_id)
);

INSERT INTO users(firstName, lastName, email) VALUES('Frodo', 'Baggins', 'frodo.baggins@gmail.com');
INSERT INTO users(firstName, lastName, email) VALUES('Samwise', 'Gamgee', 'samwise.gamgee@gmail.com');
INSERT INTO users(firstName, lastName, email) VALUES('Legolas', 'Greenleaf', 'legolas.greenleaf@gmail.com');
INSERT INTO users(firstName, lastName, email) VALUES('Pippin', 'Took', 'pippin.took@gmail.com');
INSERT INTO users(firstName, lastName, email) VALUES('Bilbo', 'Baggins', 'bilbo.baggins@gmail.com');
INSERT INTO users(firstName, lastName, email) VALUES('Gandalf', 'The White', 'gandalf.thewhite@gmail.com');
INSERT INTO users(firstName, lastName, email) VALUES('Grima', 'Wormtongue', 'grima.wormtongue@gmail.com');

CREATE TABLE IF NOT EXISTS weapons(
weapon_id	INT NOT NULL AUTO_INCREMENT,
name		VARCHAR(30),
style		VARCHAR(30),
PRIMARY_KEY(weapon_id)
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

CREATE TABLE IF NOT EXISTS user_weapons(
user_weapon_id		INT NOT NULL AUTO_INCREMENT,
user_id			INT NOT NULL,
weapon_id		INT NOT NULL,
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(weapon_id) REFERENCES weapons(weapon_id),
PRIMARY_KEY(user_weapon_id)
);


INSERT INTO user_weapons(user_id, weapon_id) VALUES(1, 2);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(1, 5);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(2, 1);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(2, 4);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(2, 11);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(3, 2);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(3, 9);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(3, 10);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(4, 1);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(5, 1);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(5, 5);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(5, 6);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(6, 1);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(6, 3);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(6, 7);
INSERT INTO user_weapons(user_id, weapon_id) VALUES(7, 8);
