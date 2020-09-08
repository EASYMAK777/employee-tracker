DROP DATABASE IF EXISTS employeetracker_db;

CREATE DATABASE employeetracker_db;

USE employeetracker_db;


CREATE TABLE company_employee (
    employee_id INT auto_increment PRIMARY KEY NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    role_title VARCHAR(30)
);

CREATE TABLE department (
    department_id INT auto_increment PRIMARY KEY NOT NULL,
    department_name varchar(30)
);

CREATE TABLE company_role (
    role_id INT PRIMARY KEY,
    role_title VARCHAR(30),
    department_id INT
);



INSERT INTO company_employee (first_name, last_name, employee_id)
VALUES ("Jank", "Seymore", 1),
("Norma", "Cornroy", 2),
("Johnny", "Bubkiss", 3),
("Barack", "Obama", 4),
("Donald", "Trump", 5);





INSERT INTO company_role (role_title, role_id, department_id)
VALUES ("Sales Person", 10, 100),
("Engineer", 11, 110),
("Accountant", 12, 120),
("Media Specialist", 13, 130),
("Property Retail", 14, 140);



INSERT INTO department (department_name)
VALUES ("Sales"),
("Engineering"),
("Finance"),
("Public Relations"),
("Acquisitions");





 SELECT*FROM department;
 SELECT*FROM company_role;
 SELECT*FROM company_employee;

SHOW FULL TABLES
WHERE company_employee = "VIEW";