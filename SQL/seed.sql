-- Drops the database if it exists already--
DROP DATABASE IF EXISTS employeeTracker_db;
--Creates the database--
CREATE DATABASE employeeTracker_db;

USE employeeTracker_db;

CREATE TABLE department (
    
    department_id INT PRIMARY KEY NOT NULL,
    department_name VARCHAR(30) NOT NULL,      


)

