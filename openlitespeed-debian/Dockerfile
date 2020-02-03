FROM debian:stretch-slim AS builder

RUN set -ux; \
        apt-get update -yq; \
        apt-get install --no-install-recommends ca-certificates wget -y; \
        \
        wget https://openlitespeed.org/preuse/openlitespeed-1.6.5.tgz; \
        tar xzvf openlitespeed-1.6.5.tgz; \
        cd openlitespeed; \
        ./install.sh; \
        rm -rf /openlitespeed; \
        \
        apt-get install --no-install-recommends -y \
            mysql-client \
            lsphp73 \
            lsphp73-common \
            lsphp73-mysql \
            lsphp73-opcache \
            lsphp73-curl \
            lsphp73-json \
            lsphp73-imagick \
            lsphp73-redis \
            lsphp73-memcached; \
        \
        wget -O /usr/local/lsws/admin/misc/lsup.sh \
        https://raw.githubusercontent.com/litespeedtech/openlitespeed/master/dist/admin/misc/lsup.sh; \
        chmod +x /usr/local/lsws/admin/misc/lsup.sh; \
        \
        wget -O /usr/local/bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
	    chmod +x /usr/local/bin/wp-cli.phar && mv /usr/local/bin/wp-cli.phar /usr/bin/wp; \
	    ln -s /usr/local/lsws/lsphp73/bin/php7.3 /usr/bin/php; \
        \
        #apt-get install -y --no-install-recommends software-properties-common gpg dirmngr; \
        #add-apt-repository ppa:certbot/certbot; \
        #apt-get update -yq; \
        #apt-get install -y --no-install-recommends certbot; \
        \
        #apt-get purge -y curl \
        #    ca-certificates \
        #    wget; \
        apt-get autoremove -y; \
        apt-get clean; \
        rm -rf /var/lib/apt/lists/*


FROM debian:stretch-slim

COPY --from=builder /usr/local/lsws/ /usr/local/lsws/
COPY --from=builder /usr/bin/wp /usr/bin/wp
COPY --from=builder /usr/lib/ /usr/lib/
COPY --from=builder /lib/ /lib/
CMD ["/usr/local/lsws/bin/openlitespeed","-n"]