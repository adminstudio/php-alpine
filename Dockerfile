FROM php:7.3.8-alpine
LABEL Maintainer="Asdrubal Gonzalez <agpenton@gmail.com"
RUN apk --update add wget curl git php php-curl php-openssl php-json php-phar php-dom openssh-client && rm /var/cache/apk/* && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && apk add bash sshpass git
CMD ["/bin/sh"]

ENTRYPOINT ["/bin/sh", "-c"]