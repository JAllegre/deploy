# deploy

### At initial install, git pull all services including reverse proxy (rproxy, miam, cv, ...)

```
docker-compose down

docker compose build

docker compose up -d
```

### At service update, git pull only this service

```
docker-compose down <SERVICE_NAME>

docker compose build <SERVICE_NAME>

docker compose up -d <SERVICE_NAME>
```
