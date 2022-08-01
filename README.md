# Install

``` sh
make docker.recreate.django
make run.loaddata
make run.server
```

Now open:

`http://here.project.localhost`

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

- Caddy: `http://here.project.localhost`.
- Gulp: `http://here.project.localhost:3000`.
- Django: `http://here.project.localhost:8000`.
- Mailhog: `http://here.project.localhost:8025`.

### Bash Django

``` shell
docker exec -it here.project-django bash
```

# Run production

``` sh
docker-compose -f docker-compose.pro.yaml up
```

Open `https://template.io`.

# Enviroment (.env)
```text
PROJECT_NAME=here.project

# Domain
DOMAIN=here.project.localhost
DOMAIN_URL=http://here.project.localhost

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
DEFAULT_FROM_EMAIL=no-reply@here.project.localhost
EMAIL_CONTACT=info@here.project.localhost
EMAIL_HOST=mailhog
EMAIL_USER=
EMAIL_PASSWORD=
EMAIL_PORT=1025
EMAIL_USE_TLS=False
EMAIL_USE_SSL=False

# Mailhog
MAILHOG_PORT=8025
```