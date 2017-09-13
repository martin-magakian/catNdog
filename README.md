

Start Projet
==============

As requirement, you need PHP and Composer install on your machine.

```
git clone https://github.com/martin-magakian/catNdog
composer install
docker run -it -p 80:80 -p 3306:3306 -e MYSQL_PASS="admin" -v /path/to/catNdog/sources:/var/www/catNdog martinmagakian/catndog
```



I want to change to Docker image
=========================

```
docker build -t martinmagakian/catndog .
docker push martinmagakian/catndog #OPTIONAL: publish on hub.docker.com
```



How did we build this projet ?
================================

Pour les infos des serveurs, vous pouvez consulter le fichier SERV.txt

Pour Jenkins c'est là : jenkins-readme.txt


Step 1 : Install Symfony

https://symfony.com/doc/current/setup.html




How did we structure the database ?
================================

Name = DB_CATNDOG

Table = pets

The table have 4 column :

id (int) ; label (varchar(50)) ; nb_vote (int) 

The column nb_vote is set to 0.


