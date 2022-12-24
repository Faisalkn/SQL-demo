CREATE DATABASE friends_database;
USE friends_database;
CREATE TABLE friends(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20),
    age INT,
    state VARCHAR(20),
    PRIMARY KEY(id)
);
CREATE TABLE food(
	id INT NOT NULL AUTO_INCREMENT,
    food_name VARCHAR(20) NOT NULL,
    friend_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(friend_id) REFERENCES friends(id)
);

/* adds values to the friends table*/
INSERT INTO friends (name, phone_number, age, state)
VALUES ('Kamal', '372834324', 21, 'MN'),
	   ('Yahye', '244354656', 19, 'MO'), 
       ('Nasra', '234453835', 19, 'KY'),
       ('Guled', '939898434', 19, 'MN'),
       ('Mahat', '238923324', 18, 'WA');
/* adds values to the food table*/
INSERT INTO food(food_name, friend_id)
VALUES ('Pancake', 3),
	   ('Steak', 1),
       ('Kabab', 4),
       ('Spaghetti', 2),
       ('Shawarma', 5);

/* Queries the friends table*/
SELECT * FROM friends;

/* Starts the id column from 1 */
ALTER TABLE friends AUTO_INCREMENT = 1;

/* deletes all the row in friends table */
DELETE FROM friends;

/* deletes all the rows in foods table */
DELETE FROM food;

ALTER TABLE food AUTO_INCREMENT = 1;

UPDATE friends
SET state = 'MN'
WHERE name = 'Yahye';

SELECT * FROM friends
JOIN food ON  friends.id = food.friend_id;