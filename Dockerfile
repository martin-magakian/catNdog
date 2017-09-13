FROM tutum/lamp

MAINTAINER HB team

ADD conf/catNdog.conf /etc/apache2/sites-enabled/000-default.conf

ADD conf/mysql-setup.sh /mysql-setup.sh

RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix /mysql-setup.sh

CMD ["/run.sh"]