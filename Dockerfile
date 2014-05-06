FROM ubuntu:14.04
MAINTAINER aldi <kriwil@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get -y update

RUN apt-get -y install wget

# base
RUN apt-get install -y python-software-properties
RUN apt-get install -y python-pip
RUN apt-get install -y python-dev
RUN apt-get install -y libpq-dev

# pillow
RUN apt-get install -y libfreetype6-dev
RUN apt-get install -y libjpeg8-dev
RUN apt-get install -y liblcms2-dev
RUN apt-get install -y libtiff4-dev
RUN apt-get install -y libwebp-dev
RUN apt-get install -y python-tk
RUN apt-get install -y tcl8.5-dev
RUN apt-get install -y tk8.5-dev
RUN apt-get install -y zlib1g-dev

RUN pip install virtualenv
