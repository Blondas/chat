DROP DATABASE IF EXISTS chat_ver1;
CREATE DATABASE chat_ver1;
USE chat_ver1;

CREATE TABLE `gender` (
	id INT NOT NULL auto_increment,
	gender varchar (20) NULL DEFAULT NULL,
	PRIMARY KEY (id)
)Engine=InnoDB;
INSERT INTO `gender`(gender) VALUES ('male'), ('female');

CREATE TABLE `user` (
	id INT NOT NULL AUTO_INCREMENT,
	nick varchar(30) NULL DEFAULT NULL,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	age int(2) NULL DEFAULT NULL,
	gender_id int(1) NULL DEFAULT NULL,
	logged_in BIT NULL DEFAULT 0,
	created TIMESTAMP NOT NULL,
	modified TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY (id),

	CONSTRAINT `fk_gender`
	FOREIGN KEY fk_gender(gender_id)
	REFERENCES gender(id)
	ON DELETE SET null
	ON UPDATE cascade
)Engine=InnoDB;

CREATE TABLE `user_friend` (
	user_id INT NOT NULL,
	friend_id INT NOT NULL, 
	PRIMARY KEY (user_id, friend_id),

	CONSTRAINT `fk_user`
	FOREIGN KEY fk_user(user_id)
	REFERENCES user(id)
	ON DELETE cascade	
	ON UPDATE cascade,

	CONSTRAINT `fk_friend`
	FOREIGN KEY fk_friend(friend_id)
	REFERENCES user(id)
)Engine=InnoDB;

CREATE TABLE `message` (
	id INT NOT NULL AUTO_INCREMENT,
	sender_id INT NOT NULL,
	parent_message_id INT NULL DEFAULT NULL,
	`text` TEXT NULL DEFAULT NULL,
	created TIMESTAMP NOT NULL,
	PRIMARY KEY (id),

	CONSTRAINT fk_parent_message
	FOREIGN KEY fk_parent_message(parent_message_id)
	REFERENCES message(id)
	ON DELETE SET null
	ON UPDATE CASCADE
)Engine=InnoDB;

CREATE TABLE `message_receiver` (
	message_id INT NOT NULL,
	receiver_id INT NOT NULL,
	PRIMARY KEY (message_id, receiver_id),

	CONSTRAINT `fk_message`
	FOREIGN KEY fk_message(message_id)
	REFERENCES message(id)
	ON DELETE cascade
	ON UPDATE cascade,

	constraint fk_receiver
	FOREIGN KEY  fk_receiver(receiver_id)
	REFERENCES `user`(id)
	ON DELETE cascade
	ON UPDATE cascade
)Engine=InnoDB;