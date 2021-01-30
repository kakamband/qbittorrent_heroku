FROM ghcr.io/linuxserver/baseimage-ubuntu:bionic

RUN apt-get update
RUN apt-get install sudo
RUN sudo apt-get update

RUN sudo apt-get install software-properties-common -y

RUN sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y

RUN sudo apt-get update
RUN sudo apt-get install qbittorrent-nox -y

RUN apt-get install yum -y
RUN apt-get install wget -y

RUN sudo apt-get install expect -y


CMD yes "" | qbittorrent-nox --webui-port=$PORT
