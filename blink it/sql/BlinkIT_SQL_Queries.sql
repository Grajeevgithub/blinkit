-- 📁 STEP 1: Create the BlinkIT_Grocery table
CREATE TABLE BlinkIT_Grocery (
    Item_Fat_Content VARCHAR(20),
    Item_Identifier VARCHAR(20),
    Item_Type VARCHAR(50),
    Outlet_Establishment_Year INT,
    Outlet_Identifier VARCHAR(20),
    Outlet_Location_Type VARCHAR(20),
    Outlet_Size VARCHAR(20),
    Outlet_Type VARCHAR(50),
    Item_Visibility FLOAT,
    Item_Weight FLOAT,
    Sales FLOAT,
    Rating FLOAT
);

-- 📥 STEP 2: Load data from CSV (Adjust for your DB)
-- For MySQL:
-- Make sure 'secure_file_priv' allows this path
LOAD DATA LOCAL INFILE 'C:/Users/DELL/Desktop/blink it/data/BlinkIT.csv'
INTO TABLE BlinkIT_Grocery
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 🔍 STEP 3: SQL QUERIES --

-- 1. Total Sales by Item Type
SELECT Item_Type, SUM(Sales) AS Total_Sales
FROM BlinkIT_Grocery
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

-- 2. Average Sales by Outlet Type
SELECT Outlet_Type, ROUND(AVG(Sales), 2) AS Avg_Sales
FROM BlinkIT_Grocery
GROUP BY Outlet_Type;

-- 3. Year-wise Sales Trend
SELECT Outlet_Establishment_Year, SUM(Sales) AS Total_Sales
FROM BlinkIT_Grocery
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

-- 4. Sales by Fat Content
SELECT Item_Fat_Content, SUM(Sales) AS Total_Sales
FROM BlinkIT_Grocery
GROUP BY Item_Fat_Content;

-- 5. Rating by Location Type
SELECT Outlet_Location_Type, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM BlinkIT_Grocery
GROUP BY Outlet_Location_Type;

-- 6. Top 5 Items by Sales
SELECT Item_Identifier, SUM(Sales) AS Total_Sales
FROM BlinkIT_Grocery
GROUP BY Item_Identifier
ORDER BY Total_Sales DESC
LIMIT 5;
