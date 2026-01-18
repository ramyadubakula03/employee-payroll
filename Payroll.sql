CREATE TABLE Payroll (
    payroll_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    month VARCHAR(20),
    year INT,
    net_salary DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);




INSERT INTO Payroll (emp_id, month, year, net_salary)
SELECT 
    s.emp_id,
    'January',
    2026,
    (basic_salary + hra + allowances - deductions) AS net_salary
FROM Salary s;


SELECT e.department, SUM(p.net_salary) AS total_payroll
FROM Employee e
JOIN Payroll p ON e.emp_id = p.emp_id
GROUP BY e.department;
