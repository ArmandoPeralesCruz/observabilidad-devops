FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    apache2 \
    default-libmysqlclient-dev \
    build-essential \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

RUN python manage.py collectstatic --noinput || true

COPY apache.conf /etc/apache2/sites-available/django.conf
RUN a2ensite django.conf && a2dissite 000-default.conf
RUN a2enmod proxy proxy_http

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

CMD ["/entrypoint.sh"]
