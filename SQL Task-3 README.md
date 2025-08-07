SQL Developer Internship - Task 3: Writing Basic SELECT Queries

Task Overview:- 
Objective: Extract data from one or more tables using basic SELECT queries
Tools: MySQL Workbench
Key Concepts: Filtering, Projection

Learning Outcomes:-

Clear understanding of how to retrieve data from databases
Mastery of SELECT statements with various clauses
Proficiency in filtering, sorting, and limiting results

Repository Structure:-

sql-task3-basic-select-queries/
├── README.md
├── scripts/
    ├── 01_database_setup.sql
    ├── 02_sample_data.sql
    └── 03_basic_select_queries.sql


Setup Instructions:-
Prerequisites

MySQL Server installed
MySQL Workbench or any MySQL client
Basic understanding of SQL concepts

Database Setup

Run 01_database_setup.sql to create the sample database
Execute 02_sample_data.sql to populate tables with sample data
Use 03_basic_select_queries.sql for the main task queries

Sample Database Schema:-
Tables Created:

employees - Employee information
departments - Department details
products - Product catalog
orders - Order transactions

Key SQL Concepts Covered:- 

1. Basic SELECT Operations

SELECT * - Retrieve all columns
SELECT specific_columns - Retrieve specific columns
DISTINCT - Remove duplicate values

2. Filtering Data

WHERE clause - Basic filtering
AND, OR - Logical operators
LIKE - Pattern matching
BETWEEN - Range filtering
IN - Multiple value matching

3. Sorting and Limiting

ORDER BY - Sort results (ASC/DESC)
LIMIT - Restrict number of rows returned

4. Advanced Features

Column aliasing with AS
Multiple table queries
Combining multiple conditions

Query Examples:- 

Basic Selection
sql-- Select all employees
SELECT * FROM employees;

-- Select specific columns
SELECT first_name, last_name, salary FROM employees;
Filtering Examples
sql-- Filter by department
SELECT * FROM employees WHERE department_id = 1;

-- Using LIKE for pattern matching
SELECT * FROM employees WHERE first_name LIKE 'J%';

-- Using BETWEEN for ranges
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 80000;
Sorting and Limiting
sql-- Sort by salary in descending order
SELECT * FROM employees ORDER BY salary DESC;

-- Limit results to top 5
SELECT * FROM employees ORDER BY salary DESC LIMIT 5;


Task Deliverables Completed:-
(1) SQL script with SELECT statements
(2) WHERE clause implementations
(3) ORDER BY sorting examples
(4) LIMIT clause usage
(5) Multiple filtering conditions
(6) Pattern matching with LIKE
(7) Range filtering with BETWEEN
(8) Column aliasing examples
(9) DISTINCT usage demonstrations


Learning Resources:-

(1) MySQL Official Documentation
(2) W3Schools SQL Tutorial
(3) SQLBolt Interactive Tutorial



License:-

This project is for educational purposes as part of the SQL Developer Internship program.

Created by: Abhishek Tiwari
Date: 07-08-2025
Task: SQL Developer Internship - Task 3
Status: ✅ Completed