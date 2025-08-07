-- =====================================================
-- SQL Developer Internship - Task 3
-- Sample Data Insertion Script
-- =====================================================

USE internship_task3;

-- =====================================================
-- Insert Department Data
-- =====================================================
INSERT INTO departments (department_name, location, budget) VALUES
('Human Resources', 'New York', 500000.00),
('Engineering', 'San Francisco', 2000000.00),
('Sales', 'Chicago', 800000.00),
('Marketing', 'Los Angeles', 600000.00),
('Finance', 'New York', 700000.00),
('Customer Service', 'Austin', 400000.00),
('IT Support', 'Seattle', 450000.00);

-- =====================================================
-- Insert Employee Data
-- =====================================================
INSERT INTO employees (first_name, last_name, email, phone, hire_date, salary, department_id, position) VALUES
('John', 'Smith', 'john.smith@company.com', '555-0101', '2023-01-15', 75000.00, 2, 'Software Engineer'),
('Jane', 'Doe', 'jane.doe@company.com', '555-0102', '2022-03-20', 65000.00, 1, 'HR Specialist'),
('Mike', 'Johnson', 'mike.johnson@company.com', '555-0103', '2023-05-10', 85000.00, 3, 'Sales Manager'),
('Sarah', 'Williams', 'sarah.williams@company.com', '555-0104', '2022-11-08', 70000.00, 4, 'Marketing Analyst'),
('David', 'Brown', 'david.brown@company.com', '555-0105', '2023-02-28', 90000.00, 2, 'Senior Developer'),
('Lisa', 'Davis', 'lisa.davis@company.com', '555-0106', '2022-07-12', 55000.00, 6, 'Customer Support'),
('James', 'Wilson', 'james.wilson@company.com', '555-0107', '2023-04-03', 95000.00, 5, 'Financial Analyst'),
('Emily', 'Taylor', 'emily.taylor@company.com', '555-0108', '2022-09-15', 60000.00, 7, 'IT Support Specialist'),
('Robert', 'Anderson', 'robert.anderson@company.com', '555-0109', '2023-06-01', 80000.00, 3, 'Sales Representative'),
('Jennifer', 'Thomas', 'jennifer.thomas@company.com', '555-0110', '2022-12-20', 72000.00, 4, 'Marketing Manager');

-- =====================================================
-- Insert Product Data
-- =====================================================
INSERT INTO products (product_name, category, price, stock_quantity, supplier, created_date) VALUES
('Laptop Pro 15"', 'Electronics', 1299.99, 50, 'Tech Supplier Inc', '2023-01-01'),
('Wireless Mouse', 'Electronics', 29.99, 200, 'Peripheral Co', '2023-01-15'),
('Office Chair', 'Furniture', 249.99, 75, 'Office Furniture Ltd', '2023-02-01'),
('Standing Desk', 'Furniture', 599.99, 30, 'Office Furniture Ltd', '2023-02-10'),
('Monitor 27"', 'Electronics', 349.99, 80, 'Display Tech', '2023-01-20'),
('Keyboard Mechanical', 'Electronics', 89.99, 120, 'Peripheral Co', '2023-01-25'),
('Desk Lamp', 'Accessories', 49.99, 150, 'Lighting Solutions', '2023-03-01'),
('Notebook Set', 'Stationery', 15.99, 300, 'Paper Works', '2023-02-15'),
('Printer Multifunction', 'Electronics', 199.99, 25, 'Print Tech', '2023-01-30'),
('Coffee Machine', 'Appliances', 129.99, 40, 'Kitchen Pro', '2023-03-10');

-- =====================================================
-- Insert Order Data
-- =====================================================
INSERT INTO orders (customer_name, order_date, total_amount, status, employee_id) VALUES
('ABC Corporation', '2023-06-01', 2599.98, 'Completed', 3),
('XYZ Industries', '2023-06-02', 879.97, 'Shipped', 9),
('Tech Startup Co', '2023-06-03', 1549.96, 'Processing', 3),
('Global Solutions', '2023-06-04', 699.98, 'Completed', 9),
('Innovation Labs', '2023-06-05', 459.95, 'Cancelled', 3),
('Digital Agency', '2023-06-06', 1299.99, 'Shipped', 9),
('Smart Systems', '2023-06-07', 349.99, 'Completed', 3),
('Future Tech', '2023-06-08', 849.97, 'Processing', 9),
('Cloud Services', '2023-06-09', 199.99, 'Completed', 3),
('Data Analytics Inc', '2023-06-10', 779.96, 'Shipped', 9);

-- =====================================================
-- Insert Order Items Data
-- =====================================================
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 2, 1299.99),
(2, 3, 1, 249.99),
(2, 6, 3, 89.99),
(2, 7, 6, 49.99),
(3, 5, 2, 349.99),
(3, 2, 5, 29.99),
(3, 6, 5, 89.99),
(4, 4, 1, 599.99),
(4, 8, 6, 15.99),
(5, 7, 3, 49.99),
(5, 8, 20, 15.99),
(6, 1, 1, 1299.99),
(7, 5, 1, 349.99),
(8, 9, 1, 199.99),
(8, 2, 10, 29.99),
(8, 6, 3, 89.99),
(9, 9, 1, 199.99),
(10, 10, 2, 129.99),
(10, 1, 1, 1299.99);

-- =====================================================
-- Verify Data Insertion
-- =====================================================
SELECT 'Departments Count:' as Info, COUNT(*) as Total FROM departments
UNION ALL
SELECT 'Employees Count:', COUNT(*) FROM employees
UNION ALL
SELECT 'Products Count:', COUNT(*) FROM products
UNION ALL
SELECT 'Orders Count:', COUNT(*) FROM orders
UNION ALL
SELECT 'Order Items Count:', COUNT(*) FROM order_items;