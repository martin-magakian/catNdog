

Start Projet
==============

As requirement, you need PHP and Composer install on your machine.

```
git clone https://github.com/martin-magakian/catNdog
composer install
# (OPTIONAL: run localy) php bin/console server:run
# (OPTIONAL: build your own image) docker build -t martinmagakian/catndog .
docker run -it -p 80:80 -p 3306:3306 -v /c/Users/HB1/catNdog/project:/var/www/catNdog martinmagakian/catndog
```




How did we build this projet ?
================================

Pour les infos des serveurs, vous pouvez consulter le fichier SERV.txt

Pour Jenkins c'est là : jenkins-readme.txt


Step 1 : Install Symfony

https://symfony.com/doc/current/setup.html

Step fichier de création du fichier des commandes pour la création de la base de donnée DB_CATNDOG.

** Pour ce connecter sur la bd avec un mdp spécifique : 

	docker run -d -p 80:80 -p 3306:3306 -e MYSQL_PASS="mypass" tutum/lamp
