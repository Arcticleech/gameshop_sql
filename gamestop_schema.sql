DELETE DATABASE IF EXISTS gamestop_schema;

CREATE DATABASE gamestop_schema;

USE gamestop_schema;

CREATE TABLE games (
	game_id INT AUTO_INCREMENT,
	game_title VARCHAR(60) NOT NULL,
	game_genre VARCHAR(40) NOT NULL,
	game_details VARCHAR(100) NOT NULL,
	PRIMARY KEY (game_id),
);

CREATE TABLE price(
	game_price DECIMAL(10,2) NOT NULL,
	PRIMARY KEY (game_price)
);

CREATE TABLE customers(
	customer_id INT AUTO_INCREMENT,
	customer_name VARCHAR(60) NOT NULL,
	customer_age INT NOT NULL,
	customer_phone_number VARCHAR(15) NOT NULL,
	customer_email VARCHAR(60) NOT NULL,
	PRIMARY KEY (customer_id)
);

CREATE TABLE staff(
	staff_id INT AUTO_INCREMENT,
	staff_name VARCHAR(60) NOT NULL,
	staff_location VARCHAR(60) NOT NULL,
	PRIMARY KEY (staff_id)
);


CREATE TABLE orders(
	order_id INT AUTO_INCREMENT,
	fk_game_id INT,
	fk_customer_id INT,
	fk_game_price, DECIMAL(10,2),
	date_of_purchase DATE NOT NULL,
	fk_staff_id INT,
	PRIMARY KEY (order_id),
	FOREIGN KEY (fk_game_id) REFERENCES games(game_id),
	FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (fk_staff_id) REFERENCES staff(staff_id),
	FOREIGN KEY (fk_game_price) REFERENCES price(game_price)
);
