# Install

``` sh
make docker.recreate.django
make run.loaddata
make run.server
```

Now open:

`http://api.localhost`

## Gulp

```shell
npm i
```

Run.

```shell
gulp dev
```

## Tools

Lint

```shell
make lint
```

Formatear

```shell
make format
```

Recrear imagen de Django

```shell
make docker.recreate.django
```

Hacer una nueva migración después de cambiar un model.

```shell
make makemigrations
```

Migrar

```shell
make run.migrate
```

Cargar data mínima.

```shell
make run.loaddata
```

Generar data de desarrollo.

```shell
make run.loaddata.test
```

## Other domains

- Caddy: `http://api.localhost`.
- Gulp: `http://api.localhost:3000`.
- Django: `http://api.localhost:8000`.
- Mailhog: `http://api.localhost:8025`.

### Bash Django

``` shell
docker exec -it api_django_1 bash
```

# Run production

``` sh
docker-compose -f docker-compose.pro.yaml up
```

Open `https://domain.com`.
