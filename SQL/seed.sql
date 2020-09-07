DROP DATABASE IF EXISTS employeeTracker_db;

CREATE DATABASE employeeTracker_db;

USE employeeTracker_db;

CREATE TABLE company_employee (
    id INT auto_increment PRIMARY KEY NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    is_currently_employeed BOOLEAN NOT NULL
);





INSERT INTO company_employee (first_name, last_name, id, role_id, manager_id) 
VALUES ("Jacob", "Seymore", 1, 1, 1, true);

UPDATE company_employee
SET currently_employeed
