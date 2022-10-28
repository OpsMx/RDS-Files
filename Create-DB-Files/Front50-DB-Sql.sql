-- Note: No Special Characters for Password

CREATE SCHEMA `front50` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
  
CREATE USER 'front50_service'@'%'IDENTIFIED BY 'OpsMx2021';	
CREATE USER 'front50_migrate'@'%'IDENTIFIED BY 'OpsMx2021';	
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, EXECUTE, SHOW VIEW ON `front50`.*   TO 'front50_service'@'%'; 
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, LOCK TABLES, EXECUTE, SHOW VIEW ON `front50`.* TO `front50_migrate`@'%';
GRANT ALL PRIVILEGES ON front50.* TO 'front50_migrate'@'%';
GRANT ALL PRIVILEGES ON front50.* TO 'front50_service'@'%';
GRANT ALL ON front50.* TO 'front50'@'%' IDENTIFIED BY 'OpsMx2021' WITH GRANT OPTION;
GRANT ALL ON front50.* TO 'front50_migrate'@'%' IDENTIFIED BY 'OpsMx2021' WITH GRANT OPTION;
GRANT ALL ON front50.* TO 'front50_service'@'%' IDENTIFIED BY 'OpsMx2021' WITH GRANT OPTION;
flush privileges;
