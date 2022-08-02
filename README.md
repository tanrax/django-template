# Install

``` sh
make docker.recreate.django
make run.loaddata
make run.server
```

Now open:

`http://project.localhost`

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

- Caddy: `http://project.localhost`.
- Gulp: `http://project.localhost:3000`.
- Django: `http://project.localhost:8000`.
- Mailhog: `http://project.localhost:8025`.

### Bash Django

``` shell
docker exec -it project-django bash
```

# Run production

``` sh
docker-compose -f docker-compose.pro.yaml up
```

Open `https://proyect.com`.

# Enviroment (.env)
```text
PROJECT_NAME=here.project

# Domain
DOMAIN=project.localhost
DOMAIN_URL=http://project.localhost

# Database
DB_NAME=project_db
DB_USER=postgres
DB_PASSWORD=postgres
DB_HOST=postgresql
DB_PORT=5432

# Django options
DJANGO_SECRET_KEY=mysecret

# Redis
REDIS_HOST=redis
REDIS_PORT=6379

# Caddy
CADDY_PORT_ONE=80
CADDY_PORT_TWO=443

# Email
DEFAULT_FROM_EMAIL=no-reply@project.localhost
EMAIL_CONTACT=info@project.localhost
EMAIL_HOST=mailhog
EMAIL_USER=
EMAIL_PASSWORD=
EMAIL_PORT=1025
EMAIL_USE_TLS=False
EMAIL_USE_SSL=False
```