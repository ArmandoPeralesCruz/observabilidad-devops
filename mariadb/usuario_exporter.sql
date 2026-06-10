-- Usuario creado para el exporter de Prometheus
-- Ejecutar como root en MariaDB

CREATE USER 'exporter'@'%' IDENTIFIED BY 'exporterpass';
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'exporter'@'%';
GRANT SLAVE MONITOR ON *.* TO 'exporter'@'%';
FLUSH PRIVILEGES;

-- Verificar
SELECT user, host FROM mysql.user WHERE user='exporter';
