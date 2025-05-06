FROM yourls:1.9.2

RUN apt-get update && \
	apt-get install -y libpq-dev && \
	docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql && \
	docker-php-ext-install pdo pdo_pgsql pgsql \
  && rm -rf /var/lib/apt/lists/*

COPY ./src  /usr/src/yourls
