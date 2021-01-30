FROM linuxserver/qbittorrent:version-14.2.5.99202004250119-7015-2c65b79ubuntu18.04.1

# add local files
COPY root/ /

RUN apt-get update
RUN apt-get install sudo
RUN sudo apt-get update
RUN apt-get install yum -y

RUN apt-get install wget -y


RUN chmod 0777 /rclone
RUN cp ./rclone /usr/bin/
RUN rm -rf /rclone

RUN wget https://bootstrap.pypa.io/get-pip.py

RUN sudo apt-get install python3-distutils -y
RUN python3 get-pip.py

RUN pip3 install pyTelegramBotAPI
RUN pip3 install qbittorrent-api

RUN sudo apt-get install cron -y

RUN sudo /usr/sbin/service cron start 

RUN sudo apt install vim -y 

RUN sudo apt-get install git -y


ENV WEB_PORT=$PORT 

CMD tail -f /dev/null