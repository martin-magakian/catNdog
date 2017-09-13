CREATE DATABASE DB_CATNDOG;

USE DB_CATNDOG;

CREATE TABLE pets (
    id INT(1) NOT NULL auto_increment,
    label VARCHAR(50),
	nb_vote int,
    PRIMARY KEY (id)
);

INSERT INTO pets (label) VALUES ('Cat'), ('Dog');





