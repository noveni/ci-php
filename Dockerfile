FROM php:7.1-fpm

RUN apt-get update -yqq && apt-get install -yqq \
                                            rsync \
                                            openssh-client \
                                            zip \
                                            unzip \
                                            git \
                                            git-all \
                                            zlib1g-dev \
                                            libbz2-dev

RUN docker-php-ext-install json zip bz2
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer