# DOCKER-VERSION  1.6.2

FROM php:5.5-apache
MAINTAINER Nathaniel Hoag, info@nathanielhoag.com

RUN a2enmod rewrite

RUN apt-get update \
  && apt-get install -y libpng12-dev libjpeg-dev libpq-dev patch \
  && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
  && docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip

RUN curl -sS https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer \
  && ln -s /usr/local/bin/composer /usr/bin/composer \
  && composer global require drush/drush:7.* \
  && echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> ~/.bashrc

ADD site-install.sh /usr/bin/site-install.sh

ONBUILD RUN rm -r /var/www/html
ONBUILD COPY ./app /var/www/html
ONBUILD RUN chown -R www-data:www-data ./sites

CMD ["/usr/bin/site-install.sh"]
