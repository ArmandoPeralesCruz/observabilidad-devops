# Configuracion Django con Apache y Gunicorn

## Stack utilizado
- Python 3.11
- Django 5.x
- Gunicorn (servidor WSGI)
- Apache2 como proxy inverso
- django-prometheus para exponer metricas

## Endpoint de metricas
http://django.armando-cruz.site/metrics

## Verificacion
curl http://localhost:8083/metrics | head -10

## Metricas expuestas
- django_http_requests_total
- django_http_responses_total_by_status
- django_http_requests_latency_seconds
- python_gc_objects_collected_total
