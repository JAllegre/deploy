# deploy

Deploy tools
First time:

> docker-compose up -d --force-recreate --always-recreate-deps

Else:

> docker-compose down && docker rmi miam rproxy cv && docker-compose up -d --force-recreate --always-recreate-deps
