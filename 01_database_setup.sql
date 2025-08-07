-- =====================================================
-- SQL Developer Internship - Task 3
-- Database Setup Script
-- =====================================================

-- Create database for the task
CREATE DATABASE IF NOT EXISTS internship_task3;
USE internship_task3;

-- Drop tables if they exist (for clean setup)
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- =====================================================
-- Create Departments Table
-- =====================================================
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(100),
    budget DECIMAL(12,2)
);

-- =====================================================
-- Create Employees Table
-- =====================================================
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    hire_date DATE,
    salary DECIMAL(10,2),
    department_id INT,
    position VARCHAR(50),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- =====================================================
-- Create Products Table
-- =====================================================
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    supplier VARCHAR(100),
    created_date DATE
);

-- =====================================================
-- Create Orders Table
-- =====================================================
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    order_date DATE,
    total_amount DECIMAL(12,2),
    status VARCHAR(20),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- =====================================================
-- Create Order Items Table (for more complex queries)
-- =====================================================
CREATE TABLE order_items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Show created tables
SHOW TABLES;

-- Display table structures
DESCRIBE departments;
DESCRIBE employees;
DESCRIBE products;
DESCRIBE orders;