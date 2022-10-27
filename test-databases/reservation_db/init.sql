CREATE DATABASE IF NOT EXISTS db;
GRANT ALL PRIVILEGES on db.*
TO 'root'@'%'
WITH GRANT OPTION;

USE db;

CREATE TABLE IF NOT EXISTS pendingReservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customerId int not null,
    reservationDate Date not null,
    amountOfGuests int not null,
    customerName varchar(100)
);

CREATE TABLE IF NOT EXISTS acceptedReservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customerId int not null,
    reservationDate Date not null,
    amountOfGuests int not null,
    customerName varchar(100)
);

CREATE TABLE IF NOT EXISTS declinedReservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customerId int not null,
    reservationDate Date not null,
    amountOfGuests int not null,
    customerName varchar(100)
);