-- Drops the database if it exists already--
DROP DATABASE IF EXISTS employeeTracker_db;
--Creates the database--
CREATE DATABASE employeeTracker_db;

USE employeeTracker_db;

CREATE TABLE department (
    
    id INT PRIMARY KEY NOT NULL,
    department_name VARCHAR(30) NOT NULL,   
    PRIMARY KEY (id)   
);

CREATE TABLE company_role (
    id INT PRIMARY KEY NOT NULL,
    title VARCHAR(30),
    salary DECIMAL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
)







