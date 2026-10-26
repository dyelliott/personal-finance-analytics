-- =======================================================
-- PERSONAL FINANCE SQL PROJECT
-- DATABASE SETUP
-- =======================================================
-- CREATE DATABASE personal_finance;

-- Database we are working with
USE personal_finance;


-- =====================================================
-- TABLE 1: MONTHLY FINANCES
-- =====================================================

/*
CREATE TABLE monthly_finances (
    month_id INT PRIMARY KEY,
    month_name VARCHAR(20),
    monthly_income DECIMAL(10,2),
    total_expenses DECIMAL(10,2),
    net_savings DECIMAL(10,2),
    savings_rate DECIMAL(5,2)
);
*/


-- =====================================================
-- TABLE 2: EXPENSE CATEGORIES
-- =====================================================

/*
CREATE TABLE expense_categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);
*/


-- =====================================================
-- EXPENSE CATEGORIES DATA
-- =====================================================

/*
INSERT INTO expense_categories
(category_id, category_name)
VALUES
(1, 'Rent'),
(2, 'Grocery Bill'),
(3, 'Dining Out'),
(4, 'Electricity Bill'),
(5, 'Gas'),
(6, 'Car Insurance'),
(7, 'Water Bill'),
(8, 'Phone Bill');
*/


-- =====================================================
-- TABLE 3: MONTHLY EXPENSES
-- =====================================================

/*
CREATE TABLE monthly_expenses (
    expense_id INT PRIMARY KEY,
    month_id INT,
    category_id INT,
    expense_amount DECIMAL(10,2),

    FOREIGN KEY (month_id)
        REFERENCES monthly_finances(month_id),

    FOREIGN KEY (category_id)
        REFERENCES expense_categories(category_id)
);
*/


-- =====================================================
-- MONTHLY FINANCIAL DATA
-- =====================================================

/*
INSERT INTO monthly_finances
(month_id, month_name, monthly_income, total_expenses, net_savings, savings_rate)
VALUES
(1, 'January', 3933.44, 2541.00, 1392.44, 35.38),
(2, 'February', 3933.44, 2521.00, 1412.44, 35.89),
(3, 'March', 3933.44, 2466.00, 1467.44, 37.32),
(4, 'April', 3933.44, 2501.00, 1432.44, 36.42),
(5, 'May', NULL, NULL, NULL, NULL),
(6, 'June', 3933.44, 2366.00, 1567.44, 39.75),
(7, 'July', 3933.44, 2501.00, 1432.44, 36.42),
(8, 'August', 3933.44, 3941.00, -7.56, -0.19),
(9, 'September', 3933.44, 2596.00, 1337.44, 33.99),
(10, 'October', 3933.44, 2466.00, 1467.44, 37.32),
(11, 'November', 3933.44, 2441.00, 1492.44, 37.94),
(12, 'December', 3933.44, 2581.00, 1352.44, 34.39);
*/

-- =====================================================
-- VIEW EXPENSES WITH CATEGORY NAMES
-- =====================================================

/*
SELECT
    me.expense_id,
    ec.category_name,
    me.expense_amount
FROM monthly_expenses AS me
JOIN expense_categories AS ec
    ON me.category_id = ec.category_id;
*/

-- =====================================================
-- JANUARY EXPENSES
-- =====================================================

/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(1, 1, 4, 160.00),
(2, 1, 1, 1676.00),
(3, 1, 8, 45.00),
(4, 1, 6, 105.00),
(5, 1, 7, 90.00),
(6, 1, 2, 170.00),
(7, 1, 5, 95.00),
(8, 1, 3, 200.00);
*/


-- =====================================================
-- FEBRUARY EXPENSES
-- =====================================================

/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(9, 2, 4, 160.00),
(10, 2, 1, 1676.00),
(11, 2, 8, 45.00),
(12, 2, 6, 105.00),
(13, 2, 7, 90.00),
(14, 2, 2, 230.00),
(15, 2, 5, 95.00),
(16, 2, 3, 120.00);
*/

/*
-- =====================================================
-- DATABASE CHECKS
-- =====================================================

-- Check the tables
SHOW TABLES;

-- Check the structure of each table
DESCRIBE monthly_finances;
DESCRIBE expense_categories;
DESCRIBE monthly_expenses;

-- View the data
SELECT *
FROM monthly_finances;

SELECT *
FROM expense_categories;

SELECT *
FROM monthly_expenses;
*/

-- =====================================================
-- MARCH EXPENSES
-- =====================================================
/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(17, 3, 4, 160.00),
(18, 3, 1, 1676.00),
(19, 3, 8, 45.00),
(20, 3, 6, 105.00),
(21, 3, 7, 90.00),
(22, 3, 2, 175.00),
(23, 3, 5, 95.00),
(24, 3, 3, 120.00);
*/

-- =====================================================
-- CORRECT MARCH EXPENSES
-- =====================================================

/*
UPDATE monthly_expenses
SET expense_amount = 85.00
WHERE expense_id = 21;

UPDATE monthly_expenses
SET expense_amount = 200.00
WHERE expense_id = 22;

UPDATE monthly_expenses
SET expense_amount = 100.00
WHERE expense_id = 24;
*/

-- =====================================================
-- APRIL EXPENSES
-- =====================================================
/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(25, 4, 4, 150.00),
(26, 4, 1, 1676.00),
(27, 4, 8, 45.00),
(28, 4, 6, 120.00),
(29, 4, 7, 85.00),
(30, 4, 2, 170.00),
(31, 4, 5, 95.00),
(32, 4, 3, 160.00);
*/

-- =====================================================
-- JUNE EXPENSES
-- =====================================================
/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(33, 6, 4, 165.00),
(34, 6, 1, 1676.00),
(35, 6, 8, 55.00),
(36, 6, 6, 120.00),
(37, 6, 7, 85.00),
(38, 6, 2, 170.00),
(39, 6, 5, 95.00);
*/

-- =====================================================
-- JUNE DINING OUT EXPENSE
-- =====================================================

/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(88, 6, 3, 0.00);
*/

-- =====================================================
-- JULY EXPENSES
-- =====================================================

/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(40, 7, 4, 140.00),
(41, 7, 1, 1676.00),
(42, 7, 8, 45.00),
(43, 7, 6, 105.00),
(44, 7, 7, 90.00),
(45, 7, 2, 150.00),
(46, 7, 5, 95.00),
(47, 7, 3, 200.00);
*/

-- =====================================================
-- AUGUST EXPENSES
-- =====================================================

/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(48, 8, 4, 350.00),
(49, 8, 1, 1676.00),
(50, 8, 8, 100.00),
(51, 8, 6, 150.00),
(52, 8, 7, 240.00),
(53, 8, 2, 560.00),
(54, 8, 5, 365.00),
(55, 8, 3, 500.00);
*/

-- =====================================================
-- SEPTEMBER EXPENSES
-- =====================================================

/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(56, 9, 4, 160.00),
(57, 9, 1, 1676.00),
(58, 9, 8, 45.00),
(59, 9, 6, 105.00),
(60, 9, 7, 95.00),
(61, 9, 2, 170.00),
(62, 9, 5, 95.00),
(63, 9, 3, 250.00);
*/

-- =====================================================
-- OCTOBER EXPENSES
-- =====================================================

/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(64, 10, 4, 160.00),
(65, 10, 1, 1676.00),
(66, 10, 8, 45.00),
(67, 10, 6, 105.00),
(68, 10, 7, 90.00),
(69, 10, 2, 175.00),
(70, 10, 5, 95.00),
(71, 10, 3, 120.00);
*/

-- =====================================================
-- CORRECT OCTOBER EXPENSES
-- =====================================================

/*
UPDATE monthly_expenses
SET expense_amount = 140.00
WHERE expense_id = 69;

UPDATE monthly_expenses
SET expense_amount = 155.00
WHERE expense_id = 71;
*/

-- =====================================================
-- NOVEMBER EXPENSES
-- =====================================================

/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(72, 11, 4, 150.00),
(73, 11, 1, 1676.00),
(74, 11, 8, 45.00),
(75, 11, 6, 105.00),
(76, 11, 7, 90.00),
(77, 11, 2, 205.00),
(78, 11, 5, 95.00),
(79, 11, 3, 75.00);
*/

-- =====================================================
-- DECEMBER EXPENSES
-- =====================================================

/*
INSERT INTO monthly_expenses
(expense_id, month_id, category_id, expense_amount)
VALUES
(80, 12, 4, 200.00),
(81, 12, 1, 1676.00),
(82, 12, 8, 45.00),
(83, 12, 6, 105.00),
(84, 12, 7, 90.00),
(85, 12, 2, 170.00),
(86, 12, 5, 95.00),
(87, 12, 3, 200.00);
*/

-- =====================================================
-- DATA VALIDATION: EXPENSE TOTALS BY MONTH
-- =====================================================

/*
SELECT
    mf.month_name,
    mf.total_expenses AS recorded_total,
    COALESCE(SUM(me.expense_amount), 0) AS calculated_total
FROM monthly_finances AS mf
LEFT JOIN monthly_expenses AS me
    ON mf.month_id = me.month_id
GROUP BY
    mf.month_id,
    mf.month_name,
    mf.total_expenses
ORDER BY mf.month_id;
*/

-- =====================================================
-- ANALYSIS
-- =====================================================

-- Which month had the highest total expenses?

SELECT
    month_name,
    total_expenses
FROM monthly_finances
ORDER BY total_expenses DESC
LIMIT 1;

-- Which month had the highest savings rate?

SELECT
    month_name,
    savings_rate
FROM monthly_finances
ORDER BY savings_rate DESC
LIMIT 1;

-- Which expense category cost you the most overall during the year?

SELECT
    ec.category_name,
    SUM(me.expense_amount) AS total_expenses
FROM monthly_expenses AS me
JOIN expense_categories AS ec
    ON me.category_id = ec.category_id
GROUP BY ec.category_name
ORDER BY total_expenses DESC
LIMIT 1;

-- Which expense category did you spend the most money on in a single month?

SELECT
    mf.month_name,
    ec.category_name,
    me.expense_amount
FROM monthly_expenses AS me
JOIN monthly_finances AS mf
    ON me.month_id = mf.month_id
JOIN expense_categories AS ec
    ON me.category_id = ec.category_id
ORDER BY me.expense_amount DESC
LIMIT 1;

-- Which months had positive savings versus zero or negative savings?

SELECT
    month_name,
    net_savings,
    CASE
    WHEN net_savings IS NULL THEN 'Missing Data'
    WHEN net_savings > 0 THEN 'Positive Savings'
    WHEN net_savings = 0 THEN 'Break-Even'
    ELSE 'Negative Savings'
END AS savings_status
FROM monthly_finances;

-- Which expense categories had total yearly spending greater than $1,000?

SELECT
    ec.category_name,
    SUM(me.expense_amount) AS total_spending
FROM monthly_expenses AS me
JOIN expense_categories AS ec
    ON me.category_id = ec.category_id
GROUP BY ec.category_name
HAVING SUM(me.expense_amount) > 1000
ORDER BY total_spending DESC;

-- What was the average monthly spending across the year?

SELECT
    AVG(total_expenses) AS average_monthly_spending
FROM monthly_finances;

-- Which expense categories contributed to the unusually high spending in August, 
-- and how much did I spend on each category from highest to lowest?

SELECT
    ec.category_name,
    me.expense_amount
FROM monthly_expenses AS me
JOIN expense_categories AS ec
    ON me.category_id = ec.category_id
JOIN monthly_finances AS mf
    ON me.month_id = mf.month_id
WHERE mf.month_name = 'August'
ORDER BY me.expense_amount DESC;

-- Which month had the highest net savings?

SELECT
    mf.month_name,
    mf.net_savings
FROM monthly_finances AS mf
WHERE net_savings IS NOT NULL
ORDER BY net_savings DESC
LIMIT 1;

-- Which expense category had the lowest total spending for the year?

SELECT
    ec.category_name,
    SUM(me.expense_amount) AS total_spending
FROM expense_categories AS ec
JOIN monthly_expenses AS me
    ON ec.category_id = me.category_id
GROUP BY ec.category_name
ORDER BY total_spending ASC
LIMIT 1;

-- Which months had total expenses above the average monthly spending?

SELECT
    month_name,
    total_expenses
FROM monthly_finances
WHERE total_expenses > (
    SELECT AVG(total_expenses)
    FROM monthly_finances
)
ORDER BY total_expenses DESC;

-- =====================================================
-- 11-MONTH FINANCIAL SUMMARY
-- MAY EXCLUDED DUE TO MISSING DATA
-- =====================================================

SELECT
    COUNT(monthly_income) AS months_with_data,
    SUM(monthly_income) AS income_11_months,
    SUM(total_expenses) AS expenses_11_months,
    SUM(net_savings) AS net_savings_11_months,

    SUM(net_savings) / SUM(monthly_income) * 100
        AS savings_rate_percentage

FROM monthly_finances
WHERE monthly_income IS NOT NULL;
   
-- =====================================================
-- SCHEMA QUICK REFERENCE
-- =====================================================

-- monthly_finances (mf)
-- month_id, month_name, monthly_income,
-- total_expenses, net_savings, savings_rate

-- expense_categories (ec)
-- category_id, category_name

-- monthly_expenses (me)
-- expense_id, month_id, category_id, expense_amount

-- JOINS:
-- me.month_id = mf.month_id
-- me.category_id = ec.category_id