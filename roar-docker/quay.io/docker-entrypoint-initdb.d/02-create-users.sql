CREATE USER 'mysql'@'%' IDENTIFIED BY 'mysql';

GRANT ALL PRIVILEGES ON registry.* TO 'mysql'@'%';

FLUSH privileges;
