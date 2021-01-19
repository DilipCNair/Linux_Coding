
/*
To install mysql run following command
    sudo apt install mysql-server mysql-client
For initial configuration of mysql run following command
    sudo mysql_secure_installation
service mysql status/start/stop/restart are basic commands
Mysql runs at 127.0.0.1:3306 by default
Current admin account username is "root" and password is "Mysql@1692"
sudo mysql command to login using auth-socket
mysql -u root -p and enter password to start mysql shell/client normally
auth_socket plugin needs to be changed for normal login - research on that
*/

Use mysql;
SELECT User, Host, plugin FROM mysql.user;
UPDATE user SET plugin='mysql_native_password' WHERE User='root';
UPDATE user SET plugin='auth_socket' WHERE User='root';
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'new-password';
CREATE USER 'root'@'localhost' IDENTIFIED BY 'new-password';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';                                                    
FLUSH PRIVILEGES;


SHOW DATABASES;
CREATE DATABASE dotnet;
DROP DATABASE dotnet;
Use dotnet;



CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20),species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);
DROP TABLE pet;
SHOW TABLES;
DESCRIBE pet;
INSERT INTO pet VALUES ('Puffball3','Diane','hamster','f','1999-03-30',NULL);
SELECT * FROM pet;
SELECT species, owner FROM pet WHERE name='Puffball3'; 


