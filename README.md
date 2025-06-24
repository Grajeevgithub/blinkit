# 🛒 BlinkIT Grocery Sales Analysis Dashboard

This project analyzes BlinkIT's grocery sales using **Power BI** for visualization and **SQL** for backend data querying. The goal is to extract meaningful insights into item performance, outlet behavior, and customer ratings to support business decisions.

---

## 📊 Dashboard Overview

- 📈 **Sales Trends** over Outlet Establishment Year
- 🛍️ **Sales Distribution** by Item Type, Outlet Size, and Outlet Location
- 🍩 **Sales by Fat Content** (Regular vs Low Fat)
- 🧾 **Detailed Outlet Metrics** (Total Sales, Avg Sales, Ratings, Items)
- ✅ KPIs: Total Sales, Average Rating, Average Sales, Unique Items

> 📍 Created using Power BI  
> 📎 Image Preview:  
![BlinkIT Dashboard](https://github.com/Grajeevgithub/blinkit/blob/main/blink%20it/images/blinkit.png)

---

## 🗃️ Dataset

- 📂 File: `BlinkIT.csv`
- 📌 Columns include:
  - `Item Type`, `Item Fat Content`, `Item Weight`, `Item Visibility`, `Rating`, `Sales`, `Outlet Size`, `Outlet Type`, `Outlet Location Type`, and `Outlet Establishment Year`
- 💰 **Sales converted to thousands (₹ '000)** for standardization.

---

## 🧮 SQL Analysis

All major insights were first explored using SQL.

📁 [`BlinkIT_SQL_Queries.sql`](../main/blink%20it/BlinkIT_SQL_Queries.sql) includes:

- 🔝 Top 5 Selling Items
- 📊 Total & Avg Sales by Outlet Type
- 🕒 Sales Trend over the Years
- 🧈 Sales by Fat Content
- ⭐ Rating by Location Type

Sample query:
```sql
SELECT Outlet_Type, ROUND(AVG(Sales), 2) AS Avg_Sales
FROM BlinkIT_Grocery
GROUP BY Outlet_Type;
