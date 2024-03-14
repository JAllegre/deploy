#!/bin/bash

if [ "$1" = "" ]; then
  echo "Prune and Restart all containers"
  sudo docker system prune -f
else
  echo "Restart container $1"
fi

sudo docker compose down 

sudo docker compose build 

sudo docker compose up -d


