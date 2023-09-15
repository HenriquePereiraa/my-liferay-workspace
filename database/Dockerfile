FROM mysql:latest

# Get variables values of the .env file
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

# Set values in variables of environment
ENV MYSQL_DATABASE=$MYSQL_DATABASE
ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD


# Copy configuration database to into container
COPY --chown=mysql:root ./dump.sql ./
COPY --chown=mysql:root ./scripts/import-dump.sh /docker-entrypoint-initdb.d/
COPY --chown=mysql:root ./scripts/Init.sql /docker-entrypoint-initdb.d/

RUN cd /docker-entrypoint-initdb.d; \ 
    chmod 777 import-dump.sh

# Executable to mysql utf8 encoding
CMD ["mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]