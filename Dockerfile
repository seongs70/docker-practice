FROM ubuntu:18.04
MAINTAINER KSH <seongs70@naver.com>

# Avoiding user interaction with tzdata
ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update
RUN apt-get install -y apache2 # Install Apache web server (only 'yes')
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php # For Installing PHP 7
RUN apt-get update
RUN apt-get install -y php7.3

# Content PHP & Mysql

RUN apt-get install -y php7.3-mysql

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
