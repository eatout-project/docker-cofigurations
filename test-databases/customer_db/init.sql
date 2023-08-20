# noinspection SqlNoDataSourceInspectionForFile

CREATE DATABASE IF NOT EXISTS db;
GRANT ALL PRIVILEGES on db.*
    TO 'root'@'%'
    WITH GRANT OPTION;

USE db;

CREATE TABLE IF NOT EXISTS customers_login (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email varchar(100),
    hash varchar(72)
);

CREATE TABLE IF NOT EXISTS customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email varchar(100),
    firstName varchar(100),
    lastName varchar(100),
    phone varchar(8)
);