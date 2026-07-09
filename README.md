<div align="center">

# 🛒 Grocery Sales Analysis

### Customer Behavior Analysis using SQL Server & Power BI

A portfolio project that analyzes supermarket sales data using SQL Server and Power BI to understand customer purchasing behavior and support data-driven business decisions.

This project demonstrates practical skills in SQL, data preparation, relational database design, and business analysis.

> **Note:** The original `sales.csv` file (~493 MB) is not included in this repository because it exceeds GitHub's file size limit. Please refer to `dataset/README.md` for more information.

![SQL Server](https://img.shields.io/badge/SQL%20Server-red?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-yellow?style=for-the-badge&logo=powerbi&logoColor=black)
![SSMS](https://img.shields.io/badge/SSMS-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github)

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
- Technologies Used
- Project Structure
- Future Improvements
- Author

---

# 📖 Project Overview

Customer behavior analysis is one of the most common business problems in retail. Understanding purchasing patterns helps businesses improve customer retention, optimize marketing strategies, and increase revenue.

In this project, supermarket sales data is analyzed using SQL Server and Power BI to answer business questions related to customer purchasing behavior.

The project follows a typical Data Analytics workflow:

- Database Setup
- Data Import
- Data Preparation
- SQL Analysis
- Dashboard Development
- Business Insights

---

# 🎯 Business Understanding

The objective of this project is to analyze customer purchasing behavior and provide insights that support marketing and customer relationship management (CRM).

Key business questions include:

- How can customers be segmented based on purchasing behavior?
- What percentage of customers are Repeat Customers versus One-time Buyers?
- What is the Average Order Value (AOV)?
- What is the average Basket Size?
- How can these insights support CRM campaigns?

---

# 🎯 Project Objectives

This project aims to:

- Segment customers based on purchasing behavior.
- Identify Repeat Customers and One-time Buyers.
- Calculate Average Order Value (AOV).
- Calculate Basket Size.
- Support customer retention strategies with data-driven insights.

---

# 📂 Dataset

This project uses the **Grocery Sales Database**, which consists of seven relational tables.

| Table | Description |
|--------|-------------|
| Sales | Sales transaction records |
| Customers | Customer information |
| Products | Product master data |
| Categories | Product categories |
| Employees | Employee information |
| Cities | Customer city information |
| Countries | Country information |

## Dataset Availability

Due to GitHub's file size limitation, the original **sales.csv** file (~493 MB) is not included in this repository.

The repository includes the following dataset files:

- categories.csv
- cities.csv
- countries.csv
- customers.csv
- employees.csv
- products.csv

Please see `dataset/README.md` for additional information.

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

## Entity Relationship Diagram (ERD)

The ERD will be added after the database documentation is completed.

---

# 🧹 Data Preparation

The dataset was imported into SQL Server using the **SSMS Flat File Import Wizard**.

The following preprocessing steps were completed:

- Imported CSV files into SQL Server
- Checked missing values
- Checked duplicate records
- Configured Primary Keys
- Configured Foreign Keys
- Validated table relationships
- Calculated TotalPrice using product price, quantity, and discount

Formula:

```
TotalPrice = Price × Quantity × (1 − Discount)
```

---

# 📊 Business Analysis

The analysis focuses on customer purchasing behavior.

## Customer Segmentation

Customers are segmented based on:

- Purchase Frequency
- Monetary Value

## Repeat Customers vs One-time Buyers

Customers are classified as:

- Repeat Customers
- One-time Buyers

The percentage distribution is calculated to evaluate customer retention.

## Average Order Value (AOV)

```
AOV =
Total Revenue
-------------
Total Orders
```

## Basket Size

```
Basket Size =
Total Quantity Sold
-------------------
Total Orders
```

---

# 📈 Dashboard

The Power BI dashboard will include:

- Total Revenue
- Total Customers
- Customer Segmentation
- Repeat Customers
- One-time Buyers
- Average Order Value (AOV)
- Basket Size
- Revenue Trend
- Top Customers
- Top Categories

Dashboard screenshots will be added after the visualization phase is completed.

---

# 🛠 Technologies Used

| Tool | Purpose |
|------|---------|
| SQL Server | Database Management |
| SQL Server Management Studio (SSMS) | Data Import & SQL Development |
| Power BI | Data Visualization |
| Git | Version Control |
| GitHub | Portfolio Management |

---

# 📁 Project Structure

```text
Grocery-Sales-Analysis/
│
├── dashboard/
│   └── Grocery_Sales.pbix
│
├── dataset/
│   ├── categories.csv
│   ├── cities.csv
│   ├── countries.csv
│   ├── customers.csv
│   ├── employees.csv
│   ├── products.csv
│   └── README.md
│
├── images/
│
├── reports/
│
├── sql/
│   ├── 01_Data_Preparation.sql
│   └── 02_Customer_Behavior_Analysis.sql
│
├── LICENSE
└── README.md
```

---

# 📌 Future Improvements

Possible future enhancements include:

- RFM Customer Segmentation
- Customer Lifetime Value (CLV)
- Customer Churn Prediction
- Sales Forecasting
- Product Recommendation System

---

# 👤 Author

**Huynh Thi Huyen Trang**

Recent Graduate | Aspiring Data Analyst

This project was developed as part of my Data Analytics portfolio to demonstrate SQL Server, Power BI, and business analysis skills.

---

⭐ Thank you for visiting this repository.
