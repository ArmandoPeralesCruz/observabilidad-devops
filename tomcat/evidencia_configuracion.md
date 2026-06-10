# Configuracion Tomcat con JMX Exporter

## Stack utilizado
- Tomcat 10.1 con JDK 17
- jmx_prometheus_javaagent-0.20.0.jar
- Puerto JMX expuesto: 9404

## Configuracion CATALINA_OPTS
-javaagent:/jmx_exporter/jmx_prometheus_javaagent.jar=9404:/jmx_exporter/config.yml

## Verificacion
curl http://localhost:9404/metrics | head -10

## Metricas expuestas
- jvm_heap_used
- jvm_heap_committed
- jvm_gc_collection_seconds
- jvm_threading_threadcount
- tomcat_requestcount
