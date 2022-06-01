FROM yunus25jmi/yunusmirror:latest

WORKDIR /maruf

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y;apt-get install -y wget
RUN wget --help
RUN wget -O m.zip https://github.com/rooted-cyber/heroku-docker/raw/main/mirror-61293.zip;unzip m.zip;cd mirro*;pip3 install --no-cache-dir -r requirements.txt;chmod -R 777 *;chmod -R 777 *;bash start*

