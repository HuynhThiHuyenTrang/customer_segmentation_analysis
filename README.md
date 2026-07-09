<div align="center">

# 🛒 Grocery Sales Analysis

### Customer Behavior Analysis using SQL Server & Power BI

A Data Analytics portfolio project focused on analyzing customer purchasing behavior using SQL Server and Power BI.

This project demonstrates practical skills in relational database management, SQL querying, data preparation, business analysis, and data visualization.

> **Project Scope:** This repository focuses on **Customer Behavior Analysis**, one of the business analysis scenarios based on the Grocery Sales Database.

> **Note:** The original `sales.csv` file (~493 MB) is not included in this repository because it exceeds GitHub's file size limit. Please see `dataset/README.md` for more information.

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

Customer behavior analysis plays an important role in helping retail businesses understand purchasing patterns and improve customer retention.

This project analyzes a supermarket sales database using SQL Server and Power BI to answer business questions related to customer segmentation, customer loyalty, and purchasing behavior.

The project follows a typical Data Analytics workflow:

- Database Setup
- Data Import
- Data Preparation
- SQL Analysis
- Dashboard Development
- Business Insights

---

# 🎯 Business Understanding

A multinational supermarket wants to better understand customer purchasing behavior in order to improve customer retention and support Customer Relationship Management (CRM) campaigns.

Using historical transaction data, this project focuses on answering key business questions related to customer segmentation, customer retention, and purchasing behavior.

---

# 🎯 Project Objectives

This project aims to:

- Segment customers based on Purchase Frequency and Monetary Value.
- Identify Repeat Customers and One-time Buyers.
- Calculate Average Order Value (AOV).
- Calculate Basket Size.
- Generate business insights to support CRM strategies and customer retention.

---

# 📂 Dataset

This project uses the **Grocery Sales Database**, which contains seven relational tables.

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

Due to GitHub's file size limitation, the original **sales.csv** file (~493 MB) is **not included** in this repository.

The following dataset files are available:

- categories.csv
- cities.csv
- countries.csv
- customers.csv
- employees.csv
- products.csv

Please refer to **dataset/README.md** for additional information.

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

Before performing the analysis, the dataset was imported into SQL Server using the **SSMS Flat File Import Wizard**.

The following preprocessing tasks were completed:

- Imported CSV files into SQL Server
- Checked missing values
- Checked duplicate records
- Configured Primary Keys
- Configured Foreign Keys
- Validated relational integrity
- Calculated `TotalPrice` using product price, quantity, and discount

Formula:

```text
TotalPrice = Price × Quantity × (1 − Discount)
```

---

# 📊 Business Analysis

This project focuses on three business analysis tasks.

## Task 1 — Customer Segmentation

Customers are segmented using:

- Purchase Frequency
- Monetary Value

The segmentation helps identify different customer groups for CRM campaigns.

---

## Task 2 — Repeat Customers vs One-time Buyers

Customers are classified into:

- Repeat Customers
- One-time Buyers

The percentage distribution is calculated to evaluate customer retention.

---

## Task 3 — Purchasing Behavior

The following metrics are calculated:

### Average Order Value (AOV)

```text
AOV =
Total Revenue
-------------
Total Orders
```

### Basket Size

```text
Basket Size =
Total Quantity Sold
-------------------
Total Orders
```

These metrics help understand customer purchasing behavior.

---

# 📈 Dashboard

The Power BI dashboard will include:

- Total Customers
- Repeat Customers
- One-time Buyers
- Customer Segmentation
- Average Order Value (AOV)
- Basket Size
- Top Customers
- Revenue by Customer Segment
- Customer Purchase Distribution

Dashboard screenshots will be added after the visualization phase is completed.

---

# 🛠 Technologies Used

| Tool | Purpose |
|------|---------|
| SQL Server | Database Management |
| SQL Server Management Studio (SSMS) | Data Import & SQL Development |
| Power BI | Data Visualization |
| Git | Version Control |
| GitHub | Project Portfolio |

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

Future enhancements may include:

- RFM Customer Segmentation
- Customer Lifetime Value (CLV)
- Customer Churn Prediction
- Sales Forecasting
- Product Recommendation System

---

# 👤 Author

**Huynh Thi Huyen Trang**

Recent Graduate | Aspiring Data Analyst

This project was developed as part of my Data Analytics portfolio to demonstrate practical skills in SQL Server, Power BI, data preparation, and customer behavior analysis.

---

⭐ Thank you for visiting this repository. Feedback and suggestions are always welcome.
