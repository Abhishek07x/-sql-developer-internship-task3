-- =====================================================
-- SQL Developer Internship - Task 3
-- Basic SELECT Queries Script
-- Key Concepts: Filtering, Projection
-- =====================================================

USE internship_task3;

-- =====================================================
-- 1. BASIC SELECT OPERATIONS
-- =====================================================

-- Query 1: SELECT * - Retrieve all columns from employees table
SELECT * FROM employees;

-- Query 2: SELECT specific columns - Projection
SELECT first_name, last_name, salary, position FROM employees;

-- Query 3: SELECT with column aliases
SELECT 
    first_name AS 'First Name',
    last_name AS 'Last Name',
    salary AS 'Annual Salary',
    position AS 'Job Title'
FROM employees;

-- Query 4: DISTINCT - Remove duplicate values
SELECT DISTINCT department_id FROM employees;
SELECT DISTINCT position FROM employees;

-- =====================================================
-- 2. FILTERING WITH WHERE CLAUSE
-- =====================================================

-- Query 5: Basic WHERE condition
SELECT * FROM employees WHERE salary > 70000;

-- Query 6: WHERE with text comparison
SELECT * FROM employees WHERE position = 'Software Engineer';

-- Query 7: WHERE with AND operator
SELECT * FROM employees 
WHERE salary > 70000 AND department_id = 2;

-- Query 8: WHERE with OR operator
SELECT * FROM employees 
WHERE position = 'Software Engineer' OR position = 'Senior Developer';

-- Query 9: WHERE with multiple conditions
SELECT first_name, last_name, salary, hire_date 
FROM employees 
WHERE salary BETWEEN 60000 AND 80000 AND department_id IN (2, 3, 4);

-- =====================================================
-- 3. PATTERN MATCHING WITH LIKE
-- =====================================================

-- Query 10: LIKE with % wildcard - Names starting with 'J'
SELECT * FROM employees WHERE first_name LIKE 'J%';

-- Query 11: LIKE with % wildcard - Names ending with 'son'
SELECT * FROM employees WHERE last_name LIKE '%son';

-- Query 12: LIKE with % wildcard - Names containing 'ar'
SELECT * FROM employees WHERE first_name LIKE '%ar%';

-- Query 13: LIKE with _ wildcard - Four letter first names
SELECT * FROM employees WHERE first_name LIKE '____';

-- =====================================================
-- 4. RANGE FILTERING WITH BETWEEN
-- =====================================================

-- Query 14: BETWEEN for salary range
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary BETWEEN 65000 AND 85000;

-- Query 15: BETWEEN for date range
SELECT * FROM employees 
WHERE hire_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Query 16: NOT BETWEEN
SELECT * FROM products 
WHERE price NOT BETWEEN 50 AND 200;

-- =====================================================
-- 5. IN OPERATOR FOR MULTIPLE VALUES
-- =====================================================

-- Query 17: IN operator with numbers
SELECT * FROM employees WHERE department_id IN (1, 3, 5);

-- Query 18: IN operator with strings
SELECT * FROM employees 
WHERE position IN ('Software Engineer', 'Senior Developer', 'Sales Manager');

-- Query 19: NOT IN operator
SELECT * FROM products WHERE category NOT IN ('Electronics');

-- =====================================================
-- 6. SORTING WITH ORDER BY
-- =====================================================

-- Query 20: ORDER BY ascending (default)
SELECT first_name, last_name, salary FROM employees ORDER BY salary;

-- Query 21: ORDER BY descending
SELECT first_name, last_name, salary FROM employees ORDER BY salary DESC;

-- Query 22: ORDER BY multiple columns
SELECT first_name, last_name, department_id, salary 
FROM employees 
ORDER BY department_id ASC, salary DESC;

-- Query 23: ORDER BY with alias
SELECT 
    first_name AS fname,
    last_name AS lname,
    salary AS annual_salary
FROM employees 
ORDER BY annual_salary DESC;

-- =====================================================
-- 7. LIMITING RESULTS WITH LIMIT
-- =====================================================

-- Query 24: LIMIT to get top 5 highest paid employees
SELECT first_name, last_name, salary 
FROM employees 
ORDER BY salary DESC 
LIMIT 5;

-- Query 25: LIMIT with OFFSET (pagination)
SELECT first_name, last_name, hire_date 
FROM employees 
ORDER BY hire_date 
LIMIT 3 OFFSET 2;

-- Query 26: Top 3 most expensive products
SELECT product_name, price 
FROM products 
ORDER BY price DESC 
LIMIT 3;

-- =====================================================
-- 8. COMBINING MULTIPLE CONCEPTS
-- =====================================================

-- Query 27: Complex query with WHERE, ORDER BY, and LIMIT
SELECT 
    first_name AS 'First Name',
    last_name AS 'Last Name',
    salary AS 'Salary',
    position AS 'Position'
FROM employees 
WHERE salary > 60000 
    AND department_id IN (2, 3, 4) 
    AND hire_date >= '2023-01-01'
ORDER BY salary DESC 
LIMIT 5;

-- Query 28: Products with pattern matching and sorting
SELECT product_name, category, price, stock_quantity
FROM products 
WHERE product_name LIKE '%o%' 
    AND price BETWEEN 100 AND 1000
ORDER BY price ASC, stock_quantity DESC;

-- Query 29: Employees hired in 2023 with specific positions
SELECT 
    CONCAT(first_name, ' ', last_name) AS 'Full Name',
    email,
    position,
    salary,
    hire_date
FROM employees 
WHERE YEAR(hire_date) = 2023 
    AND position LIKE '%Engineer%'
ORDER BY hire_date ASC;

-- =====================================================
-- 9. AGGREGATE FUNCTIONS WITH BASIC QUERIES
-- =====================================================

-- Query 30: Count employees by department
SELECT department_id, COUNT(*) as employee_count
FROM employees 
GROUP BY department_id 
ORDER BY employee_count DESC;

-- Query 31: Average salary by position
SELECT position, AVG(salary) as avg_salary, COUNT(*) as count
FROM employees 
GROUP BY position 
ORDER BY avg_salary DESC;

-- Query 32: Product categories and their statistics
SELECT 
    category,
    COUNT(*) as product_count,
    MIN(price) as min_price,
    MAX(price) as max_price,
    AVG(price) as avg_price
FROM products 
GROUP BY category;

-- =====================================================
-- 10. PRACTICAL BUSINESS QUERIES
-- =====================================================

-- Query 33: Find all employees earning above company average
SELECT 
    first_name,
    last_name,
    salary,
    position
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary DESC;

-- Query 34: Recent orders with high value
SELECT 
    order_id,
    customer_name,
    order_date,
    total_amount,
    status
FROM orders 
WHERE total_amount > 500 
    AND order_date >= '2023-06-01'
ORDER BY total_amount DESC;

-- Query 35: Low stock products that need attention
SELECT 
    product_name,
    category,
    stock_quantity,
    price,
    supplier
FROM products 
WHERE stock_quantity < 50
ORDER BY stock_quantity ASC;

-- =====================================================
-- QUERY RESULTS SUMMARY
-- =====================================================
SELECT 'Total Queries Executed: 35' AS Summary;
SELECT 'Concepts Covered: SELECT, WHERE, ORDER BY, LIMIT, LIKE, BETWEEN, IN, DISTINCT, Aliasing' AS Concepts;