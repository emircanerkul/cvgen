FROM php:5.6-apache

ARG BUILD_DATE
LABEL maintainer="contact@emircanerkul.com"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="emircanerkul/cvgen"
LABEL org.label-schema.description="Customizable CV Generator"
LABEL org.label-schema.url="http://github.com/emircanerkul/cvgen"
LABEL org.label-schema.vendor="Emircan ERKUL"
LABEL org.label-schema.version="1.0.0"

RUN apt-get update
RUN apt-get install wget -y
RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb
RUN apt-get install ./wkhtmltox_0.12.5-1.stretch_amd64.deb -y
RUN rm ./wkhtmltox_0.12.5-1.stretch_amd64.deb

EXPOSE 80
