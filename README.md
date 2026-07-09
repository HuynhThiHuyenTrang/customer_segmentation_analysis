<div align="center">

# 🛒 Grocery Sales Analysis

### Customer Behavior Analysis using SQL Server & Power BI

End-to-end Data Analytics project using SQL Server and Power BI to analyze supermarket sales and customer purchasing behavior.

> **Note:** The original `sales.csv` file (~493 MB) is not included in this repository due to GitHub's file size limit. Please refer to `dataset/README.md` for more information.

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
- Business Insights
- Business Recommendations
- Technologies Used
- Project Structure
- Future Improvements
- Author

---

# 📖 Project Overview

This project analyzes a supermarket sales database using **SQL Server** and **Power BI** to better understand customer purchasing behavior and support data-driven business decisions.

The project follows a complete end-to-end Data Analytics workflow:

- Database Design
- Data Import
- Data Preparation
- Exploratory Data Analysis (EDA)
- Business Analysis
- Data Visualization
- Business Insights
- Business Recommendations

---

# 🎯 Business Understanding

The supermarket management team aims to improve customer retention and marketing performance by understanding customer purchasing behavior.

This project focuses on answering the following business questions:

- Who are the most valuable customers?
- How many customers make repeat purchases?
- What is the Average Order Value (AOV)?
- What is the average Basket Size?
- How can customers be segmented to support CRM strategies?

---

# 🎯 Project Objectives

The project addresses four key objectives.

### Customer Segmentation

Segment customers based on purchasing behavior.

### Customer Retention

Identify Repeat Customers and One-time Buyers.

### Sales Performance

Measure customer spending through Average Order Value (AOV).

### Shopping Behavior

Analyze Basket Size to understand purchasing patterns.

---

# 📂 Dataset

This project uses the **Grocery Sales Database**, which consists of seven relational tables.

| Table | Description |
|--------|-------------|
| Sales | Sales transaction records |
| Customers | Customer information |
| Products | Product master data |
| Categories | Product categories |
| Employees | Sales employee information |
| Cities | Customer city information |
| Countries | Country information |

### Dataset Availability

The original **sales.csv** file (~493 MB) is **not included** in this repository because it exceeds GitHub's file size limit.

The following dataset files are available:

- categories.csv
- cities.csv
- countries.csv
- customers.csv
- employees.csv
- products.csv

For more details, please refer to:

```text
dataset/README.md
```

---

# 🗄️ Database Design

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

## Entity Relationship Diagram (ERD)

The Entity Relationship Diagram (ERD) will be added after the database documentation is completed.

---

# 🧹 Data Preparation

The following preprocessing tasks were completed before analysis.

- Imported CSV files into SQL Server using the **SSMS Flat File Import Wizard**
- Checked missing values
- Checked duplicate records
- Configured Primary Keys
- Configured Foreign Keys
- Validated referential integrity
- Calculated **TotalPrice** using product price, quantity, and discount

Formula:

```
TotalPrice = Price × Quantity × (1 − Discount)
```

---

# 📊 Business Analysis

The project focuses on customer purchasing behavior.

## Customer Segmentation

Customers are segmented using:

- Purchase Frequency
- Monetary Value

---

## Repeat Customers vs One-time Buyers

Customers are classified into:

- Repeat Customers
- One-time Buyers

The percentage distribution is calculated to evaluate customer retention.

---

## Average Order Value (AOV)

Formula

```
AOV =
Total Revenue
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

The Power BI dashboard will include:

- Total Revenue
- Total Customers
- Repeat Customers
- One-time Buyers
- Customer Segmentation
- Average Order Value (AOV)
- Basket Size
- Revenue Trend
- Top Customers
- Top Categories

---

## Dashboard Preview

Dashboard screenshots will be added after the visualization phase is completed.

---

# 💡 Business Insights

Business insights will be updated after completing the customer behavior analysis.

---

# 🚀 Business Recommendations

Business recommendations will be provided after analyzing customer purchasing behavior and sales performance.

---

# 🛠️ Technologies Used

| Tool | Purpose |
|------|---------|
| SQL Server | Database Management |
| SQL Server Management Studio (SSMS) | Data Import & SQL Development |
| Power BI | Dashboard & Visualization |
| Git | Version Control |
| GitHub | Portfolio & Project Management |

---

# 📁 Project Structure

```text
Grocery-Sales-Analysis
│
├── dashboard
│   └── Grocery_Sales.pbix
│
├── dataset
│   ├── categories.csv
│   ├── cities.csv
│   ├── countries.csv
│   ├── customers.csv
│   ├── employees.csv
│   ├── products.csv
│   └── README.md
│
├── images
│
├── reports
│
├── sql
│   ├── 01_Data_Preparation.sql
│   └── 02_Customer_Behavior_Analysis.sql
│
├── LICENSE
└── README.md
```

---

# 📌 Future Improvements

Potential future enhancements include:

- RFM Customer Segmentation
- Customer Lifetime Value (CLV) Analysis
- Customer Churn Prediction
- Sales Forecasting
- Product Recommendation System
- Interactive Executive Dashboard

---

# 👤 Author

**Huynh Thi Huyen Trang**

Aspiring Data Analyst

This project was developed as part of my Data Analytics portfolio to demonstrate SQL Server, data preparation, business analysis, and Power BI visualization skills.

---

⭐ If you find this project useful, please consider giving it a star.
