DROP DATABASE lportal;

CREATE DATABASE lportal;
USE lportal;

CREATE USER 'henriquelportal'@'127.0.0.1' IDENTIFIED WITH mysql_native_password BY '@plication_test';

GRANT ALL ON lportal.* TO 'henriquelportal'@'127.0.0.1';

/* Make sure the privileges are installed */
FLUSH PRIVILEGES;