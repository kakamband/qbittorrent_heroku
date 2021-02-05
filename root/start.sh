#!/bin/bash
sudo /usr/sbin/service cron start
chmod 0777 /upload/ -R
python3 /upload/config.py
yes "" | qbittorrent-nox --webui-port=$PORT  --profile=/config