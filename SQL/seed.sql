DROP DATABASE IF EXISTS employeetracker_db;

CREATE DATABASE employeetracker_db;

USE employeetracker_db;


CREATE TABLE company_employee (
    employee_id INT auto_increment PRIMARY KEY NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    role_name VARCHAR(30),
   is_currently_employeed BOOLEAN NOT NULL default true
);

CREATE TABLE department (
    department_id INT auto_increment PRIMARY KEY NOT NULL,
    department_name varchar(30)
);

CREATE TABLE company_role (
    role_id INT PRIMARY KEY,
    role_title VARCHAR(30),
    employee_salary DECIMAL,
    department_id INT
);


INSERT INTO company_employee (first_name, last_name, employee_id, department_name)
VALUES ("Jacob", "Seymore", 2, "Sales");


INSERT INTO company_role (role_title,role_id)
VALUES ("Sales Person", 2);



INSERT INTO department (department_id,department_name)
VALUES (1, "Sales");




