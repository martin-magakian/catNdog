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

