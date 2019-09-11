FROM php:5.6-apache
MAINTAINER http://github.com/emircanerkul/cvgen Emircan ERKUL contact@emircanerkul.com

RUN apt-get update
RUN apt-get install wget -y
RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb
RUN apt-get install ./wkhtmltox_0.12.5-1.stretch_amd64.deb -y
RUN rm ./wkhtmltox_0.12.5-1.stretch_amd64.deb

WORKDIR /var/www/html
COPY / /var/www/html/

EXPOSE 80
