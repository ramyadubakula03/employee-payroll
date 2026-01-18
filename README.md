# Employee Payroll Management System (SQL Project)

## Project Overview
This project is an **Employee Payroll Management System** built using SQL.  
It allows you to manage employee details, salary information, calculate net payroll, and generate payroll reports by department or employee.

---

## Database Design

### Tables

1. **Employee**
- emp_id (INT, Primary Key)
- first_name (VARCHAR)
- last_name (VARCHAR)
- department (VARCHAR)
- date_of_joining (DATE)
- position (VARCHAR)

2. **Salary**
- emp_id (INT, Primary Key, Foreign Key from Employee)
- basic_salary (DECIMAL)
- hra (DECIMAL)
- allowances (DECIMAL)
- deductions (DECIMAL)

3. **Payroll**
- payroll_id (INT, Primary Key, Auto Increment)
- emp_id (INT, Foreign Key)
- month (VARCHAR)
- year (INT)
- net_salary (DECIMAL)

---

## How to Run

1. Open MySQL / SQL Server / Oracle.
2. Create a new database (e.g., `employee_payroll`).
3. Run the script `sql/employee_payroll.sql`.
4. Queries included:
   - View all employees with net salary
   - Total payroll by department
   - Employees earning above a threshold
   - Department-specific payroll
5. Optional: Use stored procedure `CalculatePayroll(month, year)` to calculate payroll automatically.

---

## Sample Data

- Employees: Ramya Dubakula, John Doe, Alice Smith, Bob Brown  
- Salaries: Basic + HRA + Allowances - Deductions  

---

## Skills Used

- SQL: DDL, DML, DQL  
- Joins, Group By, Aggregate Functions  
- Stored Procedures  
- Payroll calculations

---

## Author
**Dubakula Ramya**  
Email: dubakularamya@.com  
