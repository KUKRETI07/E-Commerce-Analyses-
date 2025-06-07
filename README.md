# 🛍️ E-commerce Sales Insights Pipeline | Python · MySQL · Power BI

This repository presents a complete **end-to-end data analytics solution** for an e-commerce business, leveraging sales, pricing, and inventory data. 
The project walks through the full data journey—from raw, unstructured datasets to valuable business insights visualized in an interactive Power BI dashboard.

---

## 🚩 Problem Statement

E-commerce companies often struggle with:
- Fragmented sales data from different platforms (Amazon, etc.)
- Inconsistent product pricing across platforms
- Poor inventory visibility and overstock issues
- High return/cancellation rates without clear cause
- Difficulty in identifying top-performing products or regions

This project aims to **uncover hidden patterns and solve key operational bottlenecks** using data analytics.

---

## ✅ Solution

We tackled the problem in a structured 3-stage pipeline:

### 1. 📦 Data Cleaning & Exploration (Python)
- Cleaned messy CSVs using **Pandas** (1.2L+ rows)
- Handled nulls, inconsistent formats, and wrong data types
- Conducted EDA (exploratory data analysis) on key metrics

### 2. 🧠 Data Modeling & Analysis (MySQL)
- Exported cleaned data into **MySQL**
- Wrote optimized SQL queries to uncover:
  - Revenue trends
  - Product category performance
  - Platform-wise pricing gaps
  - Inventory bottlenecks

### 3. 📊 Insight Visualization (Power BI)
- Built a professional dashboard to showcase KPIs, trends, and actionable insights for stakeholders

---

## 🛠️ Tools & Technologies Used

| Tool | Purpose |
|------|---------|
| **Python (Pandas, NumPy)** | Data cleaning and EDA |
| **MySQL** | Data modeling, querying, insight extraction |
| **Power BI** | Dashboard creation & storytelling |
| **SQLAlchemy** | Python-to-SQL data export |

---

## 🔍 Key Insights

- 📈 **May had the highest monthly revenue**
- 👗 **"Sets" contributed most to revenue**, followed by **Western Dresses** and **Kurtas**
- 🌍 **Maharashtra** and **Bengaluru** led regional sales
- 🚫 **Returns were highest in Sets and Kurtas**, largely due to cancellations
- 💰 **Ajio** had the lowest pricing on Kurtas (₹47 cheaper on average)
- 🏷️ **Kurta & Gown had avg discounts of 77%**, with Kurta having over 800 discounted products
- 📦 **Kurta** has over **10 lakh units in inventory**, most in **Medium size**, suggesting excess stock

---



