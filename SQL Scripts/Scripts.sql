
Use mysql;
CREATE USER 'YOUR_SYSTEM_USER'@'localhost' IDENTIFIED BY 'new-password';
UPDATE user SET plugin='mysql_native_password' WHERE User='YOUR_SYSTEM_USER';
GRANT ALL PRIVILEGES ON *.* TO 'YOUR_SYSTEM_USER'@'localhost';
UPDATE user SET plugin='auth_socket' WHERE User='YOUR_SYSTEM_USER';
FLUSH PRIVILEGES;
SELECT User, Host, plugin FROM mysql.user;
ALTER USER 'YOUR_SYSTEM_USER'@'localhost' IDENTIFIED WITH mysql_native_password BY 'new-password';

CREATE DATABASE dotnet;
SHOW DATABASES;
Use dotnet;



CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20),species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);
SHOW TABLES;
DESCRIBE pet;
INSERT INTO pet VALUES ('Puffball','Diane','hamster','f','1999-03-30',NULL);
SELECT * FROM pet;