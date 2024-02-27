# deploy

Deploy tools
First time:

> docker-compose up -d --force-recreate --always-recreate-deps

Else:

> docker-compose down && docker rmi miam rproxy cv && docker-compose up -d --force-recreate --always-recreate-deps

certbot --nginx -d jallegre.freeboxos.fr --non-interactive --agree-tos -m ju.allegre@gmail.com
