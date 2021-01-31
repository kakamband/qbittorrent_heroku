#!/usr/bin/env bash

python3 /upload/config.py
yes "" | qbittorrent-nox --webui-port=$PORT --profile=/config