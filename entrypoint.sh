#!/usr/local/bin/expect

qbittorrent-nox --webui-port=8080

expect "accept and continue" 
send "y\r"
#发送yes