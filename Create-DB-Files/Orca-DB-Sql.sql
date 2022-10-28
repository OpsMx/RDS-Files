-- Note: No Special Characters for Password

CREATE SCHEMA `orca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; 
          
CREATE USER 'orca_service'@'%'IDENTIFIED BY 'OpsMx2021';	
CREATE USER 'orca_migrate'@'%'IDENTIFIED BY 'OpsMx2021';	
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, EXECUTE, SHOW VIEW ON `orca`.*   TO 'orca_service'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, LOCK TABLES, EXECUTE, SHOW VIEW ON `orca`.* TO `orca_migrate`@'%';
GRANT ALL PRIVILEGES ON orca.* TO 'orca_migrate'@'%';
GRANT ALL PRIVILEGES ON orca.* TO 'orca_service'@'%';
GRANT ALL PRIVILEGES ON orca.* TO 'orca'@'%';
GRANT ALL ON orca.* TO 'orca'@'%' IDENTIFIED BY 'OpsMx2021' WITH GRANT OPTION;
GRANT ALL ON orca.* TO 'orca_migrate'@'%' IDENTIFIED BY 'OpsMx2021' WITH GRANT OPTION;
GRANT ALL ON orca.* TO 'orca_service'@'%' IDENTIFIED BY 'OpsMx2021' WITH GRANT OPTION;
flush privileges;
