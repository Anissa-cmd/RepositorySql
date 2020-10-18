DROP DATABASE IF EXISTS account;
CREATE DATABASE account;
USE account;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
user_id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
birth_date DATE NOT NULL,
gender CHAR (10) NULL,
email VARCHAR (50) UNIQUE NOT NULL,
phone_number VARCHAR (26),
password VARCHAR (130) NOT NULL,
last_login TIMESTAMP NOT NULL,
PRIMARY KEY (user_id)
);

CREATE TABLE post (
post_id INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
username VARCHAR (50) UNIQUE NOT NULL,
description TEXT NOT NULL,
geolocation VARCHAR (70),
time_to_get_through TIME,
problem TINYINT,
create_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (post_id),
FOREIGN KEY (user_id) REFERENCES user (user_id)
);

CREATE TABLE comment (
comment_id INT NOT NULL UNIQUE AUTO_INCREMENT,
user_id INT NOT NULL,
post_id INT NOT NULL,
username VARCHAR (70) NOT NULL UNIQUE,
comment TEXT NOT NULL,
create_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (comment_id),
FOREIGN KEY (user_id) REFERENCES user (user_id),
FOREIGN KEY (post_id) REFERENCES post (post_id)
);