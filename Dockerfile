#lets run a static page
FROM ubuntu:latest

#describe label

LABEL author=diya
LABEL app= "web application"

#download all dependencies to run app (ngnix,jboxx,apache, windowsiis)
RUN  apt-get update -y && \
     apt-get install ngnix -y
    
COPY index.html .