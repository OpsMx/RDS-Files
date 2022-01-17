-- Note: No Special Characters for Password

CREATE SCHEMA `orca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER 'orca_service' IDENTIFIED BY 'orcapasswd';
CREATE USER 'orca_migrate' IDENTIFIED BY 'orcapasswd';
GRANT  SELECT, INSERT, UPDATE, DELETE, EXECUTE, SHOW VIEW ON `orca`.*   TO 'orca_service';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, LOCK TABLES, EXECUTE, SHOW VIEW  ON `orca`.* TO 'orca_migrate';