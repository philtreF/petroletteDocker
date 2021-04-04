FROM ubuntu:20.04
MAINTAINER Frédéric <faithful@infused.io>
RUN apt-get update && apt-get install -y git sudo && git clone https://framagit.org/yphil/petrolette &&\
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone &&\
    apt-get -y install curl dirmngr apt-transport-https lsb-release ca-certificates vim &&\
    curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash - &&\
    sudo apt-get -y install nodejs gcc g++ make &&\
    cd petrolette &&\
    echo "========================" &&\
    echo "NOW INSTALLING" &&\
    echo "========================" &&\
    npm install || cat /npm-debug.log &&\
    npm install pm2@latest -g
EXPOSE 8000
WORKDIR /petrolette
ENV PATH "/usr/bin/:${PATH}"
ENV TZ "Europe/Paris"
CMD ["node", "./http/server.js"] 
