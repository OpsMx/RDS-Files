-- Note: No Special Characters for Password

CREATE SCHEMA `clouddriver` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER 'clouddriver_service' @'%'IDENTIFIED BY 'OpsMx2021';	
CREATE USER 'clouddriver_migrate '@'%'IDENTIFIED BY 'OpsMx2021';	
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, EXECUTE, SHOW VIEW  ON `clouddriver`.*   TO 'clouddriver_service'@'%'; 
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, LOCK TABLES, EXECUTE, SHOW VIEW ON `clouddriver`.* TO `clouddriver_migrate`@'%';
GRANT ALL PRIVILEGES ON clouddriver.* TO 'clouddriver_migrate'@'%';
GRANT ALL PRIVILEGES ON clouddriver.* TO 'clouddriver_service'@'%';
GRANT ALL ON clouddriver.* TO 'clouddriver'@'%' IDENTIFIED BY 'OpsMx2021' WITH GRANT OPTION;
GRANT ALL ON clouddriver.* TO 'clouddriver_migrate'@'%' IDENTIFIED BY 'OpsMx2021' WITH GRANT OPTION;
GRANT ALL ON clouddriver.* TO 'clouddriver_service'@'%' IDENTIFIED BY 'OpsMx2021' WITH GRANT OPTION;
flush privileges;
