
CREATE TABLE company_employee (
    employee_id INT auto_increment PRIMARY KEY NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    is_currently_employeed BOOLEAN NOT NULL default true
);

CREATE TABLE department (
department_id INT auto_increment PRIMARY KEY NOT NULL,
department_name varchar(30)
);

CREATE TABLE role





INSERT INTO company_employee (first_name, last_name, employee_id, role_id, manager_id, is_currently_employeed, department_name); 
VALUES ("Jacob", "Seymore", 1, 1, 1, true, "sales");

UPDATE company_employee


SELECT
FROM
INNER JOIN
ON



