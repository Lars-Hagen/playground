FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive 

RUN set -eux; \
        apt-get update -yq; \
        apt-get install -y \
                php \
                libapache2-mod-php \
                curl;

CMD apachectl -D FOREGROUND
#RUN service apache2 start



