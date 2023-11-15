rm -rf mysql
git clone https://github.com/docker-library/mysql.git

cat ./mysql/8.0/Dockerfile.debian | \
	sed 's#RUN groupadd -r mysql#RUN groupadd -g 2001 -r mysql#' | \
	sed 's#useradd -r -g mysql mysql#useradd -u 2001 -r -g mysql mysql#' | \
	sed 's#COPY config/ /etc/mysql/#COPY ./originalbuild/mysql/8.0/config/ /etc/mysql/#' | \
	sed 's#COPY docker-entrypoint.sh /usr/local/bin/#COPY ./originalbuild/mysql/8.0/docker-entrypoint.sh /usr/local/bin/#' >Dockerfile.new

