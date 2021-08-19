CREATE DATABASE gameshop_schema

USE gameshop_schema

CREATE TABLE games (
	game_id INT AUTO_INCREMENT,
	game_title VARCHAR(60) NOT NULL,
	game_genre VARCHAR(40) NOT NULL,
	game_price DECIMAL NOT NULL,
	game_details VARCHAR(100) NOT NULL,
	PRIMARY KEY (game_id)
);

CREATE TABLE customers(
	customer_id INT AUTO_INCREMENT,
	customer_name VARCHAR(60) NOT NULL,
	customer_age TINYINT NOT NULL,
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
	age_verify BOOLEAN NOT NULL
	date_of_purchase DATETIME NOT NULL,
	fk_staff_id INT,
	PRIMARY KEY (order_id),
	FOREIGN KEY (fk_game_id) REFERENCES games(game_id),
	FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (fk_staff_id) REFERENCES staff(staff_id)