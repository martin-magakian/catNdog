CREATE DATABASE DB_CATNDOG;
USE DB_CATNDOG;


CREATE TABLE pets (
    id INT(1) NOT NULL auto_increment,
    libelle VARCHAR(50),
	nbVote int,
    PRIMARY KEY (id)
);
