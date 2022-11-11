CREATE DATABASE IF NOT EXISTS db;
GRANT ALL PRIVILEGES on db.*
TO 'root'@'%'
WITH GRANT OPTION;

USE db;

CREATE TABLE IF NOT EXISTS reservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customerName varchar(100) not null,
    customerId int not null,
    restaurantId int not null,
    restaurantName varchar(100) not null,
    timeOfArrival varchar(20) not null,
    amountOfGuests int not null,
    status varchar(20) not null
);