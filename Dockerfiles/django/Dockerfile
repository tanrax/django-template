FROM debian:stable-slim

# Prevents Python from writing pyc files to disc (equivalent to python -B option)
ENV PYTHONDONTWRITEBYTECODE 1
# Prevents Python from buffering stdout and stderr (equivalent to python -u option)
ENV PYTHONUNBUFFERED 1

# set work directory
WORKDIR /usr/src/app

# set time
RUN ln -fs /usr/share/zoneinfo/Europe/Madrid /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata

# install software
RUN apt update
RUN apt install -y build-essential python3 python3-pip sqlite3 gettext

# install dependencies
RUN pip3 install --upgrade pip
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

# launcher
COPY django-launcher.dev.sh /django-launcher.dev.sh
COPY django-launcher.pro.sh /django-launcher.pro.sh
RUN chmod +x /django-launcher.dev.sh
RUN chmod +x /django-launcher.pro.sh
