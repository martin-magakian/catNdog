FROM tutum/lamp

MAINTAINER HB team

ADD conf/catNdog.conf /etc/apache2/sites-enabled/000-default.conf

ADD conf/mysql-setup.sh /mysql-setup.sh

CMD ["/run.sh"]