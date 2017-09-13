--- Projet catNdog ---

Pour les infos des serveurs, vous pouvez consulter le fichier SERV.txt


Step 1 : Install Symfony

https://symfony.com/doc/current/setup.html



Step Installation Jenkins sur serveur de test :

  This is the Debian package repository of Jenkins to automate installation and upgrade. To use this repository, first add the key    to your system:

  wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -

  
  Then add the following entry in your /etc/apt/sources.list:

  deb https://pkg.jenkins.io/debian-stable binary/

  
  Update your local package index, then finally install Jenkins:

  apt-get update
  apt-get install jenkins

  Débloquer Jenkins :
  
  Dans un navigateur, taper l'url (ou l'IP) du serveur de test sur le port 8080, ici http://165.227.153.56:8080/.
  
  Récupérer le mot de passe ici : /var/lib/jenkins/secrets/initialAdminPassword
  
  Recopier ce MDP dans le navigateur.
  
Step fichier de création du fichier des commandes pour la création de la base de donnée DB_CATNDOG.

** Pour ce connecter sur la bd avec un mdp spécifique : 

	docker run -d -p 80:80 -p 3306:3306 -e MYSQL_PASS="mypass" tutum/lamp
  
