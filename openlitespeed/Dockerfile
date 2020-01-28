FROM ubuntu

RUN set -xe; \
        apt-get update -yq; \
        apt-get install wget -y; \
        \
        wget -O - http://rpms.litespeedtech.com/debian/enable_lst_debain_repo.sh | bash; \
        \
        apt-get install openlitespeed -y

CMD /usr/local/lsws/bin/openlitespeed -n