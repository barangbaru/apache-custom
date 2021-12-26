# Base Image
FROM ubuntu:16.04

# Update repo & install apache2
RUN apt update -y && apt install apache2 -y

# copy file dari lokal ke container
COPY index.html /var/www/html

# restart apache2
CMD apachectl,-D,FOREGROUND
