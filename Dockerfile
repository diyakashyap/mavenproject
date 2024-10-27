#lets run a static page
FROM ubuntu:latest

#describe label

LABEL author=diya
LABEL app="web_application"

#download all dependencies to run app (ngnix,jboxx,apache, windowsiis)
RUN  sudo apt-get update -y && \
     sudo apt-get install ngnix -y
    
COPY index.html .
EXPOSE 80
CMD ["ngnix","-d"]