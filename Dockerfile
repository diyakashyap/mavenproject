#lets run a static page
FROM ubuntu:latest

#describe label

LABEL author=diya
LABEL app="web_application"

#download all dependencies to run app (ngnix,jboxx,apache, windowsiis)
RUN  apt-get update -y && \   
     apt-get install nginx -y
    
#COPY index.html .
EXPOSE 80
CMD ["usr/sbin/nginx"]