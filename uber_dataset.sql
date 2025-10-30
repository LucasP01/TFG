-- Creamos la base de datos si no existe
CREATE DATABASE IF NOT EXISTS uber_db;
-- Usamos la base de datos
USE uber_db;
-- Creamos la tabla indicando el tipo de dato, clave si corresponde y si es nulo o no
CREATE TABLE Uber_Rides (
    `Date` DATETIME NOT NULL,
    `Time` TIME NOT NULL,
    `Booking_ID` VARCHAR(20) NOT NULL,
    `Booking_Status` VARCHAR(30) NOT NULL,
    `Customer_ID` VARCHAR(20) NOT NULL,
    `Vehicle_Type` VARCHAR(20) NOT NULL,
    `Pickup_Location` VARCHAR(100) NOT NULL,
    `Drop_Location` VARCHAR(100) NOT NULL,
    `Avg_VTAT` DOUBLE NULL,
    `Avg_CTAT` DOUBLE NULL,
    `Cancelled_Rides_by_Customer` INT NOT NULL,
    `Reason_for_cancelling_by_Customer` VARCHAR(255) NULL,
    `Cancelled_Rides_by_Driver` INT NOT NULL,
    `Driver_Cancellation_Reason` VARCHAR(255) NULL,
    `Incomplete_Rides` INT NULL,
    `Incomplete_Rides_Reason` VARCHAR(255) NULL,
    `Booking_Value` DECIMAL(10, 2) NULL,
    `Ride_Distance` DECIMAL(10, 2) NULL,
    `Driver_Ratings` DECIMAL(3, 1) NULL,
    `Customer_Rating` DECIMAL(3, 1) NULL,
    `Payment_Method` VARCHAR(20) NULL,
    PRIMARY KEY (`Booking_ID`)
);
