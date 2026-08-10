# 📊 Sales Data Pipeline Dashboard

![Python](https://img.shields.io/badge/Python-3.8+-blue) ![MySQL](https://img.shields.io/badge/MySQL-8.0-orange) ![PowerBI](https://img.shields.io/badge/PowerBI-Desktop-yellow) ![Status](https://img.shields.io/badge/Status-Completed-green)

## 🎯 Project Overview

An end-to-end data analytics pipeline built on the Superstore Sales dataset.
Raw data was cleaned using Python, analysed using SQL, and visualised
in an interactive Power BI dashboard tracking $2.26M in revenue across
4 years, 4 regions, and 3 product categories.

---

## 🗂️ Project Structure
sales-pipeline/
│
├── data/
│ ├── raw/ ← Original dataset
│ │ └── train.csv
│ └── cleaned/ ← Cleaned dataset
│ └── sales.csv
│
├── notebooks/
│ ├── sales_data_pipeline.ipynb ← Data exploration
│ ├── cleaned_sales.ipynb ← Data cleaning pipeline
│ └── sales_kpi.ipynb ← KPI calculations
│
├── sql/
│ └── analysis.sql ← All SQL queries
│
├── dashboard/
│ └── sales_dashboard.pbix ← Power BI dashboard
│
└── README.md
---

## 🧹 Data Cleaning Steps

- Removed duplicate rows
- Imputed missing Postal Code values
- Converted Order Date and Ship Date to datetime format
- Engineered new columns — Year, Month, Quarter, Ship Days

---

## 🗄️ SQL Analysis

Wrote 5 KPI queries covering:

- Revenue by Year
- Revenue by Region
- Revenue by Category and Sub-Category
- Top 10 Products by Revenue
- Revenue by Customer Segment

---

## 📊 Dashboard KPIs

| Metric           | Value      |
| ----------------- | ---------- |
| Total Revenue      | $2.26M     |
| Total Orders       | 4,922      |
| Total Line Items   | 9,800      |
| Avg Order Value    | $459.48    |
| Best Region        | West       |
| Best Category      | Technology |

---

## 🔍 Key Insights

- **West region** drives the highest revenue at $0.8M
- **Technology** is the top category contributing ~36% of total sales
- Revenue shows consistent **upward trend** from 2015 to 2018
- **Consumer segment** accounts for the majority of orders
- Each order averages **~2 line items** — Avg Order Value ($459.48) is nearly double what a naive per-row calculation would suggest, since a single order can include multiple products. An earlier version of this analysis miscounted line items as orders; the KPI notebook and dashboard were corrected to use distinct Order IDs.

---

## 🛠️ Tools Used

| Tool               | Purpose                           |
| ------------------- | ---------------------------------- |
| Python (pandas)     | Data cleaning and KPI analysis     |
| MySQL / phpMyAdmin  | Database creation and SQL queries  |
| Power BI Desktop    | Interactive dashboard              |
| Git / GitHub        | Version control                    |

---

## 📁 Dataset

Source: [Kaggle Superstore Sales](https://www.kaggle.com/datasets/rohitsahoo/sales-forecasting)
Records: 9,800 rows | 18 columns

---

## 👩‍💻 Author

**Raghavi KD**
[GitHub](https://github.com/Raghavi-gowda)

---

## 🚀 How to Run

1. Clone this repo:
2. Install dependencies:
3. Run the cleaning notebook:
4. Open `sql/analysis.sql` in phpMyAdmin
5. Open `dashboard/sales_dashboard.pbix` in Power BI Desktop
