#!/bin/bash

RESULT=`mysqlshow -uadmin  -padmin | grep -o DB_CATNDOG`
if ! [[ "$RESULT" == DB_CATNDOG ]]; then
	mysql -uadmin -padmin -e "CREATE DATABASE DB_CATNDOG;"
	mysql -uadmin -padmin -e "USE DB_CATNDOG; CREATE TABLE pets (id INT(1) NOT NULL auto_increment, label VARCHAR(50), nb_vote int, PRIMARY KEY (id)); INSERT INTO pets (label, nb_vote) VALUES ('Cat', 0), ('Dog', 0);"
	echo "database init"
else
	echo "database already exist"
fi