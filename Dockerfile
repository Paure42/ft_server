FROM debian:buster

ADD	./srcs/config.inc.php /tmp
ADD ./srcs/default_index_on /tmp
ADD ./srcs/default_index_off /tmp
ADD ./srcs/webserver_install.sh /home/docker/script/webserver_install.sh
ADD ./srcs/wp-config.php /tmp
ADD ./srcs/wordpress /tmp
ADD ./srcs/self-signed.conf /tmp
ADD ./srcs/ssl-params.conf /tmp
ADD ./srcs/service_start.sh .
ADD ./srcs/autoindex.sh .

RUN chmod 755 /home/docker/script/webserver_install.sh
RUN chmod 755 service_start.sh
RUN chmod 755 autoindex.sh

EXPOSE 80
EXPOSE 443

RUN /home/docker/script/webserver_install.sh
CMD ["./service_start.sh"]
