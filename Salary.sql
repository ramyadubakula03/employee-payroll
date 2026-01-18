CREATE TABLE Salary (
    emp_id INT PRIMARY KEY,
    basic_salary DECIMAL(10,2),
    hra DECIMAL(10,2),
    allowances DECIMAL(10,2),
    deductions DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);


INSERT INTO Salary VALUES
(1, 50000, 10000, 5000, 3000),
(2, 60000, 12000, 7000, 5000),
(3, 45000, 9000, 4000, 2500);