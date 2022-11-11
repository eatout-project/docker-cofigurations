CREATE DATABASE IF NOT EXISTS db;
GRANT ALL PRIVILEGES on db.*
TO 'root'@'%'
WITH GRANT OPTION;

USE db;

CREATE TABLE IF NOT EXISTS restaurants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email varchar(100) not null,
    restaurantName varchar(50) not null,
    description varchar(200)
);

CREATE TABLE IF NOT EXISTS restaurantAddresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    restaurantId int not null,
    streetName varchar(50) not null,
    houseNumber varchar(10) not null,
    floor int,
    zipCode int not null,
    city varchar(50) not null
);

CREATE TABLE IF NOT EXISTS menus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    restaurantId INT not null
);

CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    menuId INT not null,
    title varchar(50)
);

CREATE TABLE IF NOT EXISTS categoryItems (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categoryId INT not null,
    name varchar(200) not null,
    description varchar(1000) not null,
    price float not null
);

CREATE TABLE IF NOT EXISTS openstatus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    restaurantId INT not null,
    status varchar(20) not null
);
