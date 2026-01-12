FROM debian:bookworm

RUN apt-get update && apt-get install -y php-fpm php-mysql wget

COPY /www.conf /etc/php/8.2/fpm/pool.d/

COPY /script.sh /

RUN mkdir -p /run/php && chown -R www-data:www-data /run/php

RUN chmod 777 /script.sh

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

ENTRYPOINT [ "/script.sh" ]

CMD [ "php-fpm8.2", "-F" ]