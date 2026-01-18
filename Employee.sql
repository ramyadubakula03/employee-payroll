CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    date_of_joining DATE,
    position VARCHAR(50)
);


INSERT INTO Employee VALUES
(1, 'Ramya', 'Dubakula', 'IT', '2021-06-01', 'Software Engineer'),
(2, 'John', 'Doe', 'HR', '2020-03-15', 'HR Manager'),
(3, 'Alice', 'Smith', 'Finance', '2019-09-10', 'Accountant');


SELECT e.first_name, e.last_name, e.department, p.net_salary
FROM Employee e
JOIN Payroll p ON e.emp_id = p.emp_id;


SELECT e.first_name, e.last_name, p.net_salary
FROM Employee e
JOIN Payroll p ON e.emp_id = p.emp_id
WHERE p.net_salary > 60000;
