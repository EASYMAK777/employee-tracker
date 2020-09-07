-- Drops the database if it exists already--
DROP DATABASE IF EXISTS employeeTracker_db;
--Creates the database--
CREATE DATABASE employeeTracker_db;

USE employeeTracker_db;

CREATE TABLE department_id (
    
    id INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id),   
);

CREATE TABLE company_role (
    id INT NOT NULL,
    title VARCHAR(30),
    salary DECIMAL,
    PRIMARY KEY (id)
);

CREATE TABLE company_employee (
    id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
);


---adding starting information--

INSERT INTO department (name)
VALUES("Operations"),
("Training"),
("Accounting"),
("Maintenance"),
("Security"),
("Public Relations"),
("Plundering");

INSERT INTO company_role (title, salary, department_id)
VALUES ("Owner",5000000000, 1),
("Landscaping",50000, 4),
("Patrol",90000,5),
("News-letter-editor",100000,6),
("Captain",1000000, 1000);

INSERT INTO company_employee (last_name, first_name, role_id, manager_id)
VALUES ("Juan", "Flores", 1, NULL);







