FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive 

RUN set -eux; \
        apt-get update -yq; \ 
        apt-get install -y \
                memcached \
                netcat
        
CMD ["/usr/bin/memcached","-p","11211","-u","root","-m","64"]