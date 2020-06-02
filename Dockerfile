FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
	apt-utils \
	curl \
	apache2 \
	apache2-utils \
	vim
ENV myworkdir /var/www/html/
WORKDIR ${myworkdir}
ARG var01=AAA
RUN echo "<h3>var01:${var01}<h3>" >> index.html
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]