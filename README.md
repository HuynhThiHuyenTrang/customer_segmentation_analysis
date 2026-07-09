<div align="center">

# 🛒 Grocery Sales Analysis

### End-to-End Customer Behavior Analysis using SQL Server, Python & Power BI

A portfolio project demonstrating an end-to-end Data Analytics workflow, from database preparation and SQL analysis to advanced customer analytics and interactive Power BI dashboards.

This project analyzes supermarket customer purchasing behavior to support Customer Relationship Management (CRM). In addition to SQL-based business analysis, the project extends the original business scenario with RFM Analysis and Machine Learning-based customer segmentation.

> **Project Scope:** This repository is based on the **Customer Behavior Analysis** business scenario from the Grocery Sales Database. It includes the original SQL business analysis together with advanced analytics using Python and Machine Learning.

> **Note:** The original `sales.csv` file (~493 MB) is not included in this repository because it exceeds GitHub's file size limit. Please refer to `dataset/README.md` for instructions.

![SQL Server](https://img.shields.io/badge/SQL%20Server-red?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-yellow?style=for-the-badge&logo=powerbi&logoColor=black)
![Machine Learning](https://img.shields.io/badge/Machine%20Learning-orange?style=for-the-badge)
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
- SQL Business Analysis
- Advanced Analytics
- Dashboard
- Technologies Used
- Project Structure
- Future Improvements
- Author

---

# 📖 Project Overview

Customer behavior analysis plays an important role in helping retail businesses understand purchasing patterns, improve customer retention, and increase customer value.

This project analyzes a supermarket sales database using SQL Server and Power BI to answer key business questions related to customer segmentation, customer loyalty, and purchasing behavior.

To further extend the original business scenario, additional customer analytics techniques including **RFM Analysis** and **Machine Learning-based customer segmentation** are applied using Python.

The project follows a complete end-to-end Data Analytics workflow:

- Business Understanding
- Database Design
- Data Import
- Data Validation
- Data Preparation
- SQL Business Analysis
- Advanced Customer Analytics
- Dashboard Development
- Business Insights
- Business Recommendations

---

# 🎯 Business Understanding

A multinational supermarket wants to better understand customer purchasing behavior in order to improve customer retention and support Customer Relationship Management (CRM) campaigns.

Using historical transaction data, this project focuses on answering key business questions related to customer segmentation, customer retention, and purchasing behavior.

The analysis supports marketing teams in identifying valuable customers, improving customer loyalty, and designing data-driven CRM strategies.

---

# 🎯 Project Objectives

## Core Business Analysis

- Segment customers based on Purchase Frequency and Monetary Value.
- Identify Repeat Customers and One-time Buyers.
- Calculate Average Order Value (AOV).
- Calculate Basket Size.
- Generate actionable business insights for CRM campaigns.

## Advanced Analytics

- Perform RFM (Recency, Frequency, Monetary) Analysis.
- Build Machine Learning-based customer segmentation using K-Means Clustering.
- Compare rule-based segmentation with ML-based clustering.
- Identify high-value customer groups.
- Generate data-driven marketing recommendations.

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

Due to GitHub's file size limitation, the original **sales.csv** file (~493 MB) is **not included** in this repository.

Available dataset files:

- categories.csv
- cities.csv
- countries.csv
- customers.csv
- employees.csv
- products.csv

Please refer to **dataset/README.md** for more information.

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

*The ERD illustrates the relationships between all tables in the Grocery Sales Database.*

---

# 🧹 Data Preparation

The dataset was imported into SQL Server using the **SSMS Flat File Import Wizard**.

The following data quality checks and preprocessing tasks were completed:

- Imported seven CSV files into SQL Server
- Validated record counts
- Checked missing values
- Checked duplicate records
- Configured Primary Keys
- Configured Foreign Keys
- Verified referential integrity
- Calculated `TotalPrice` using product price, quantity, and discount

Formula:

```text
TotalPrice = Price × Quantity × (1 − Discount)
```

---

# 📊 SQL Business Analysis

The SQL analysis focuses on solving the original business requirements.

## Customer Segmentation

Customers are segmented using:

- Purchase Frequency
- Monetary Value

---

## Customer Retention

Customers are classified into:

- Repeat Customers
- One-time Buyers

The percentage distribution is calculated to evaluate customer retention.

---

## Purchasing Behavior

Business metrics include:

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

These metrics help understand customer purchasing behavior and support business decision-making.

---

# 🚀 Advanced Analytics

To extend the original business scenario, this project applies additional customer analytics techniques beyond SQL.

## RFM Analysis

Customers are evaluated using the RFM framework:

- **Recency** – How recently a customer made a purchase.
- **Frequency** – How often a customer purchases.
- **Monetary** – How much a customer spends.

The RFM model helps identify customer segments such as:

- Champions
- Loyal Customers
- Potential Loyalists
- New Customers
- At Risk Customers
- Lost Customers

---

## Machine Learning Customer Segmentation

Customer-level features are prepared and standardized before applying **K-Means Clustering**.

Workflow:

1. Feature Engineering
2. Data Standardization
3. Elbow Method
4. K-Means Clustering
5. Cluster Interpretation
6. Business Recommendations

The resulting customer clusters are compared with the RFM segmentation to provide deeper business insights.

---

## Business Value

Combining SQL analysis, RFM Analysis, and Machine Learning enables the business to:

- Improve customer retention
- Identify high-value customers
- Support personalized marketing campaigns
- Increase customer lifetime value
- Support data-driven decision-making

---

# 📈 Dashboard

The Power BI dashboard transforms SQL outputs into interactive business reports.

Dashboard includes:

### Business KPIs

- Total Revenue
- Total Customers
- Average Order Value
- Basket Size

### Customer Analytics

- Customer Segmentation
- Repeat Customers
- One-time Buyers
- RFM Distribution
- Customer Clusters
- Revenue by Customer Segment
- Top Customers

### Business Performance

- Revenue Trend
- Customer Purchase Distribution

---

# 🛠 Technologies Used

| Tool | Purpose |
|------|---------|
| Microsoft SQL Server | Database Management |
| SQL Server Management Studio (SSMS) | SQL Development |
| Python | Data Analysis |
| Pandas | Data Processing |
| Scikit-learn | Machine Learning |
| Power BI | Dashboard Development |
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
│   ├── ERD.png
│   ├── Dashboard.png
│   └── Customer_Clusters.png
│
├── notebooks/
│   ├── 01_RFM_Analysis.ipynb
│   └── 02_KMeans_Customer_Segmentation.ipynb
│
├── sql/
│   ├── 01_Data_Preparation.sql
│   ├── 02_Customer_Behavior_Analysis.sql
│   └── 03_RFM_Analysis.sql
│
├── requirements.txt
├── LICENSE
└── README.md
```

---

# 📌 Future Improvements

Future enhancements may include:

- Customer Lifetime Value (CLV)
- Customer Churn Prediction
- Sales Forecasting
- Product Recommendation System
- Interactive Web Dashboard

---

# 👤 Author

**Huynh Thi Huyen Trang**

Recent Graduate | Aspiring Data Analyst

This project was developed as part of my Data Analytics portfolio to demonstrate practical skills in SQL Server, Python, Machine Learning, Power BI, and business analysis.

---

⭐ Thank you for visiting this repository. Feedback and suggestions are always welcome.
