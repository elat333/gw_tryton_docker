FROM debian:9.6

ENV SERIES 5.0
ENV LANG C.UTF-8


########del Dockerfile oficial de tryton 5.0##########
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        python3 \
        python3-pip \
        python3-setuptools \
        uwsgi \
        uwsgi-plugin-python3 \
        # trytond
        python3-lxml \
        python3-genshi \
        python3-polib \
        python3-werkzeug \
        python3-wrapt \
        python3-psycopg2 \
        python3-bcrypt \
        # modules
        python3-dateutil \
        python3-html2text \
        #python3-ldap3 \ requires >= 2.0.7
        python3-magic \
        python3-ofxparse \
        python3-pypdf2 \
        python3-pysimplesoap \
        python3-requests \
        python3-simpleeval \
        python3-stdnum \
        python3-tz \
        python3-zeep \
        && rm -rf /var/lib/apt/lists/*

#####################################################

RUN apt-get update -y
RUN apt-get install sqlite3 -y
RUN apt-get install vim -y

WORKDIR ~
RUN apt-get install gnupg -y
RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install nodejs -y
RUN apt-get install grunt -y
RUN apt-get install git -y
RUN apt-get install sudo

RUN npm install -g grunt-cli
RUN adduser --disabled-password --gecos '' supervisor
RUN adduser supervisor sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


WORKDIR /home/

EXPOSE 8000

#VOLUME ["/var/lib/trytond/db"]
#ENV TRYTOND_CONFIG=/etc/trytond.conf

