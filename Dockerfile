FROM ubuntu:latest
LABEL author=diya
RUN apt-get install apache2 -y \
    && apt-get update -y