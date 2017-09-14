2 serveurs Ubuntu ont été créés :

	1 - Serveur de tests (jenkins) :
		ip = 165.227.153.56
	Contient : Docker, Jenkins, Composer, php, symfony
		

	2 - Serveur de Prod (prod) :
		ip = 165.227.153.55
	Contient : Docker, accés remote API sécurisé


Installations nécessaires :
---------------------------
Pour màj la liste des packages : 
	apt update

Sur les 2 serveurs, on installe :
	- docker :
	apt install docker
	apt install docker.io
	
1 - Sur le serveur de tests (jenkins) :

Installation de "unzip" :
	apt install unzip
	
Installation de "php-xml" :
	apt install php7.0-xml
	
Installation de "composer" :
	apt install composer
	
Installation de "php" et "symfony" (contient php7.0) :
	apt install symfony*

	
2 - Serveur de Prod (prod) :
Pas d'installation de packages, mais préparation des répertoires application à "binder".


Configuration nécessaire accés remote API Docker sécurisé :
-----------------------------------------------------------

1 - Creer des clés RSA de securité
 On utilise le script récupéré :
 wget https://raw.githubusercontent.com/ksahnine/docker/master/gen-docker-certs.sh

 En executant ce gen-docker-certs.sh, on crée des clés publiques et privées.
  - Pour le Serveur : ca.pem server.pem server-key.pem
  - Pour le Client  : ca.pem cert.pem key.pem
 
 Côté serveur (Ubuntu) :
	- copier les fichier ca.pem, server.pem et server-key.pem dans le répertoire /root/.docker (ou tout autre répertoire sécurisé)
	- éditer le fichier /etc/default/docker puis renseigner la variable d’environnement DOCKER_OPTS comme suit :
	
	DOCKER_OPTS="--tlsverify --tlscacert=/root/.docker/ca.pem --tlscert=/root/.docker/server.pem \
				 --tlskey=/root/.docker/server-key.pem -H=unix:///var/run/docker.sock -H=0.0.0.0:2376"

	- Redémarrer le service docker :
		sudo service docker restart

 Côté client (Ubuntu) sous un user log-user :
 
    - copier les fichier ca.pem cert.pem key.pem dans le répertoire /home/log-user/.docker
	
	- Pour executer une commande docker sue le serv distant 165.227.153.55 port 2376 :
	
	docker --tlsverify -H=165.227.153.55:2376 ps
