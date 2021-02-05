FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install apache2 git
RUN rm /var/www/html/index.html
RUN git clone https://github.com/Vladiablo/fortest.git /var/www/html
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND]
EXPOSE 80
