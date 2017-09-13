#!/bin/bash


RESULT=`mysqlshow -uroot BD_CATNDOG | grep -o BD_CATNDOG`
if ![ "$RESULT" == "BD_CATNDOG" ]; then
mysql -u root -admin 
<< EOF
CREATE DATABASE DB_CATNDOG;

USE DB_CATNDOG;

CREATE TABLE pets (
	id INT(1) NOT NULL auto_increment,
	label VARCHAR(50),
	nb_vote int,
	PRIMARY KEY (id)
);

INSERT INTO pets (label) VALUES ('Cat'), ('Dog');
EOF
echo "database init"
else
	echo "database already exist"
fi
