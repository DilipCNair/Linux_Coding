
/*
mysql runs at 127.0.0.1:3306 by default
service mysql status/start/stop/restart are basic commands
mysql -u root -p and enter password to enter mysql shell
Current account is root and password is Dilip@1692
*/

Use mysql;
CREATE USER 'YOUR_SYSTEM_USER'@'localhost' IDENTIFIED BY 'new-password';
UPDATE user SET plugin='mysql_native_password' WHERE User='YOUR_SYSTEM_USER';
GRANT ALL PRIVILEGES ON *.* TO 'YOUR_SYSTEM_USER'@'localhost';
UPDATE user SET plugin='auth_socket' WHERE User='YOUR_SYSTEM_USER';
FLUSH PRIVILEGES;
SELECT User, Host, plugin FROM mysql.user;
ALTER USER 'YOUR_SYSTEM_USER'@'localhost' IDENTIFIED WITH mysql_native_password BY 'new-password';



CREATE DATABASE dotnet;
DROP DATABASE dotnet;
SHOW DATABASES;
Use dotnet;



CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20),species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);
DROP TABLE pet;
SHOW TABLES;
DESCRIBE pet;
INSERT INTO pet VALUES ('Puffball3','Diane','hamster','f','1999-03-30',NULL);
SELECT * FROM pet;
SELECT species, owner FROM pet WHERE name='Puffball3'; 


