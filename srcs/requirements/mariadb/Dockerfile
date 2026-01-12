FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir -p /run/mysqld/ && chown mysql:mysql /run/mysqld && chmod 777 /run/mysqld

COPY /50-server.cnf /etc/mysql/mariadb.conf.d/

COPY /script.sh /

RUN chmod 777 /script.sh

ENTRYPOINT [ "/script.sh" ]

CMD [ "mariadbd" ]