#!/bin/bash

if [ "$1" = "" ]; then
  echo "Prune and Restart all containers"
  sudo docker system prune -f
else
  echo "Restart container $1"
fi

sudo docker compose down $1

sudo docker compose build $1

sudo docker compose up -d $1


