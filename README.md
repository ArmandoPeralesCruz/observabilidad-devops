# Observabilidad DevOps — Prometheus + Grafana

Stack de observabilidad desplegado en AWS EC2 con Docker Compose.

## Servicios incluidos
- Prometheus + Alertmanager
- Grafana
- Node Exporter
- cAdvisor
- MariaDB Exporter
- Blackbox Exporter
- Django + Apache + Gunicorn
- Tomcat + JMX Exporter
- WordPress
- MariaDB

## Requisitos
- Docker y Docker Compose
- AWS EC2 con Debian 12

## Uso
cp .env.example .env
docker compose up -d

## Acceso
- Grafana: https://grafana.armando-cruz.site
- Django: https://django.armando-cruz.site
- WordPress: https://wordpress.armando-cruz.site
- Tomcat: https://tomcat.armando-cruz.site
