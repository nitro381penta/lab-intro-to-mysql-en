CREATE DATABASE IF NOT EXISTS CARS;

USE CARS;

CREATE TABLE IF NOT EXISTS CARS.cars (
    car_id INT NOT NULL AUTO_INCREMENT,
    vehicle_identification_number VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year YEAR DEFAULT NULL,
    color VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (car_id)
);
    
CREATE TABLE IF NOT EXISTS CARS.costumers (
    costumer_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    email VARCHAR(255) DEFAULT NULL,
    address TINYTEXT NOT NULL,
    city VARCHAR(255) NOT NULL,
    state_province VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    ZIP_postal_code VARCHAR(255) NOT NULL,
    PRIMARY KEY (costumer_id) 
);

CREATE TABLE IF NOT EXISTS CARS.salespersons (
    salesperson_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    store VARCHAR(255) NOT NULL,
    PRIMARY KEY (salesperson_id)
);

CREATE TABLE IF NOT EXISTS CARS.invoices (
    invoice_id INT NOT NULL AUTO_INCREMENT,
    date DATE NOT NULL,
    car_id INT DEFAULT NULL,  
    customer_id INT DEFAULT NULL,
    salesperson_id INT DEFAULT NULL,
    PRIMARY KEY (invoice_id), 
    FOREIGN KEY (car_id) REFERENCES CARS.cars(car_id) ON DELETE SET NULL,
    FOREIGN KEY (customer_id) REFERENCES CARS.costumers(costumer_id) ON DELETE SET NULL,
    FOREIGN KEY (salesperson_id) REFERENCES CARS.salespersons(salesperson_id) ON DELETE SET NULL
);