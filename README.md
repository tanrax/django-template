# Install

## Django

https://programadorwebvalencia.com/django-chat-usando-websockets-con-salas-y-async/

## Gulp

```shell
npm i
```

Run.

```shell
gulp dev
```

# Config

## Change path templates


In `settings.py`.

``` python
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]
```

Update `DIRS`.

``` python
'DIRS': [str(BASE_DIR) + '/app/templates/'],
```

# Run development

``` sh
docker-compose -f docker-compose.dev.yaml up
```

Now open:

`http://api.localhost`

### Other domains

- Caddy: `http://api.localhost`.
- Gulp: `http://localhost:3000`.
- Django: `http://localhost:8000`.
- Mailhog: `http://localhost:8025`.
- Postgres: `localhost:5432`.

### Bash Django

``` shell
docker exec -it api_django_1 bash
```

# Run production

``` sh
docker-compose up -d
```

Open `https://domain.com`.
