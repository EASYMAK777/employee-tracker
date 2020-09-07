-- Drops the database if it exists already--
DROP DATABASE IF EXISTS employeeTracker_db;
--Creates the database--
CREATE DATABASE employeeTracker_db;

USE employeeTracker_db;

-- CREATE TABLE department_id (
    
--     id INT NOT NULL,
--     name VARCHAR(30) NOT NULL,
--     PRIMARY KEY (id),   
-- );

-- CREATE TABLE company_role (
--     id INT NOT NULL,
--     title VARCHAR(30),
--     salary DECIMAL,
--     PRIMARY KEY (id)
-- );

CREATE TABLE company_employee (
    id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
);


---adding starting information--

INSERT INTO company_employee(first_name, last_name, role_id, manager_id) VALUES ("Jacob", "Seymore", 3, 1);

SELECT*FROM company_employee

SELECT first_name,last_name, id
FROM first_name,last_name,id




