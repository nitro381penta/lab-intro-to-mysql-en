INSERT INTO CARS.cars (vehicle_identification_number, manufacturer, model, year, color, price)
VALUES 
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue', 28999.99),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red', 21999.99),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White', 24800.99),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver', 22500.99),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray', 19999.99),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray', 19999.99);
    
INSERT INTO CARS.costumers (name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES
    ('Pablo Picasso', '+34 636 17 63 82', 'pablo.picasso@example.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    ('Abraham Lincoln', '+1 305 907 7086', 'abraham.lincoln@example.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    ('Napoléon Bonaparte', '+33 1 79 75 40 00', 'napoleon.bonaparte@example.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
    
INSERT INTO CARS.salespersons (salesperson_id, name, store)
VALUES
    (1, 'Petey Cruiser', 'Madrid'),
    (2, 'Anna Sthesia', 'Barcelona'),
    (3, 'Paul Molive', 'Berlin'),
    (4, 'Gail Forcewind', 'Paris'),
    (5, 'Paige Turner', 'Mimia'),
    (6, 'Bob Frapples', 'Mexico City'),
    (7, 'Walter Melon', 'Amsterdam'),
    (8, 'Shonda Leer', 'São Paulo');
    
    
INSERT INTO CARS.invoices (invoice_id, date, car_id, customer_id, salesperson_id)
VALUES
    (852399038, '2018-08-22', 0, 1, 3),
    (731166526, '2018-12-31', 3, 0, 5),
    (271135104, '2019-01-22', 2, 2, 7);