<div align="center">

# 🛒 Grocery Sales Analysis

### Customer Behavior Analysis using SQL Server & Power BI

A complete end-to-end Data Analytics project covering database design, data preparation, business analysis, and interactive dashboard development.

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github)
![Data Analytics](https://img.shields.io/badge/Data%20Analytics-Professional-blue?style=for-the-badge)

</div>

---

# 📑 Table of Contents

- Project Overview
- Business Understanding
- Project Objectives
- Dataset
- Database Design
- Data Preparation
- Business Analysis
- Dashboard
- Business Insights
- Business Recommendations
- Technologies Used
- Project Structure
- Future Improvements

---

# 📖 Project Overview

This project analyzes a supermarket sales database using **SQL Server** and **Power BI** to better understand customer purchasing behavior and support data-driven business decisions.

The project follows the complete data analytics workflow:

- Database Design
- Data Preparation
- Exploratory Data Analysis (EDA)
- Business Analysis
- Data Visualization
- Business Insights
- Recommendations

---

# 🎯 Business Understanding

The supermarket management team wants to improve customer retention and marketing performance by understanding purchasing behavior.

The Marketing department requires data-driven insights to answer the following questions:

- Who are the most valuable customers?
- How many customers return to purchase again?
- What is the average order value?
- How many products are purchased in each order?
- How can customers be segmented for CRM campaigns?

---

# 🎯 Project Objectives

The project focuses on four major objectives:

### Customer Segmentation

Segment customers according to purchasing behavior.

### Customer Retention

Identify Repeat Customers and One-time Buyers.

### Sales Performance

Measure customer spending through Average Order Value (AOV).

### Shopping Behavior

Analyze Basket Size to understand purchasing patterns.

---

# 📂 Dataset

The Grocery Sales Database consists of seven relational tables.

| Table | Description |
|--------|-------------|
| Sales | Sales transaction records |
| Customers | Customer information |
| Products | Product information |
| Categories | Product categories |
| Employees | Sales employees |
| Cities | Customer location |
| Countries | Country information |

---

# 🗄 Database Design

## Primary Keys

| Table | Primary Key |
|--------|-------------|
| Categories | CategoryID |
| Countries | CountryID |
| Cities | CityID |
| Customers | CustomerID |
| Employees | EmployeeID |
| Products | ProductID |
| Sales | SalesID |

---

## Foreign Keys

| Child Table | Parent Table |
|-------------|--------------|
| Cities → Countries |
| Customers → Cities |
| Employees → Cities |
| Products → Categories |
| Sales → Customers |
| Sales → Products |
| Sales → Employees |

---

### Entity Relationship Diagram

> *(Insert ERD image here)*

```
Images/
    ERD.png
```

---

# 🧹 Data Preparation

The following preprocessing tasks were completed before analysis.

✅ Imported CSV files into SQL Server using the SSMS Flat File Import Wizard

✅ Checked missing values

✅ Checked duplicate records

✅ Created Primary Keys

✅ Created Foreign Keys

✅ Validated relational integrity

✅ Calculated TotalPrice using product price, quantity, and discount

```
TotalPrice = Price × Quantity × (1 − Discount)
```

---

# 📊 Business Analysis

## Customer Segmentation

Customers are segmented based on:

- Purchase Frequency
- Monetary Value

---

## Repeat Customers vs One-time Buyers

Customers are classified into

- Repeat Customers
- One-time Buyers

The percentage distribution is calculated to evaluate customer retention.

---

## Average Order Value (AOV)

Formula

```
AOV = Total Revenue
      -------------
      Total Orders
```

---

## Basket Size

Formula

```
Basket Size =
Total Quantity Sold
-------------------
Total Orders
```

---

# 📈 Dashboard

The Power BI dashboard includes

- Total Revenue
- Total Customers
- Repeat Customers
- One-time Buyers
- Customer Segmentation
- Average Order Value
- Basket Size
- Revenue Trend
- Top Customers
- Top Categories

---

### Dashboard Preview

> *(Insert dashboard screenshot here)*

```
Images/
    Dashboard.png
```

---

# 💡 Business Insights

Example findings:

- Repeat customers contribute a significant portion of total revenue.
- A large percentage of customers purchase only once.
- Customers with higher basket sizes tend to generate higher order values.
- Loyal customers present strong opportunities for CRM campaigns.

---

# 🚀 Business Recommendations

Based on the analysis:

- Develop customer loyalty programs.
- Offer personalized promotions.
- Increase cross-selling opportunities.
- Reward repeat customers with exclusive discounts.
- Launch retention campaigns targeting one-time buyers.

---

# 🛠 Technologies Used

| Tool | Purpose |
|------|---------|
| SQL Server | Database Management |
| SSMS | SQL Development |
| Power BI | Dashboard & Visualization |
| Git | Version Control |
| GitHub | Portfolio |

---

# 📁 Project Structure

```
Grocery-Sales-Analysis
│
├── Dataset
│   ├── sales.csv
│   ├── customers.csv
│   ├── products.csv
│   ├── categories.csv
│   ├── cities.csv
│   ├── countries.csv
│   └── employees.csv
│
├── SQL
│   ├── 01_Data_Preparation.sql
│   └── 02_Customer_Behavior_Analysis.sql
│
├── PowerBI
│   └── Grocery_Sales.pbix
│
├── Images
│   ├── ERD.png
│   └── Dashboard.png
│
└── README.md
```

---

# 📌 Future Improvements

Future work may include:

- RFM Analysis
- Customer Lifetime Value (CLV)
- Customer Churn Prediction
- Sales Forecasting
- Product Recommendation System

---

# 👤 Author

**Huynh Thi Huyen Trang**

Aspiring Data Analyst

GitHub Portfolio Project

---

⭐ If you found this project useful, feel free to star the repository.
