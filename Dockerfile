FROM php:7.4-cli

RUN apt-get update
RUN apt-get install -y wget

RUN wget https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
RUN mv phpcbf.phar /usr/local/bin/phpcbf
RUN chmod +x /usr/local/bin/phpcbf

ENTRYPOINT ["phpcbf"]
CMD []
