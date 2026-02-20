# 🚀 Consumer360: End-to-End Retail Intelligence & Automation

---

## 📌 Project Executive Summary

**Consumer360** is a strategic retail intelligence solution designed to transform fragmented transactional data into a scalable, automated engine for business growth.  

By integrating **SQL-based Data Engineering**, **Python-driven Predictive Analytics**, and **Interactive Business Intelligence (Power BI)**, the project delivers a comprehensive **360-degree view of customer behavior, revenue performance, and product dynamics**.

The system enables data-driven marketing, revenue optimization, and automated executive reporting.

---

## 🎯 Business Value & Strategic Insights

### 📊 SQL-Driven Business Value & Strategic Insights

- Established a reliable **SQL-based reporting foundation** by cleaning and structuring raw retail data  
- Enabled management-level visibility into **sales, revenue, and profitability trends**  
- Identified underperforming categories, regions, and loss-making transactions  
- Delivered consistent, reusable **SQL views** for reporting and analytics  
- Increased operational efficiency through **automated weekly data refresh**  

---

### 🎯 Targeted Marketing (RFM Analysis)

- Transitioned from generic marketing to **precision customer targeting**  
- Segmented customers into **Champions, At Risk, and Hibernating** groups  
- Enabled optimized marketing spend and higher campaign effectiveness  

---

### 💰 Revenue Optimization (Market Basket Analysis)

- Identified high-probability cross-selling opportunities using the **Apriori Algorithm**  
- Discovered hidden product associations  
- Implemented **Next Best Offer** logic for upselling and cross-selling strategies  

---

### ⚙️ Operational Efficiency

- Achieved **100% reduction in manual reporting**  
- Implemented a fully automated weekly data refresh and analytics pipeline  
- Enabled a hands-off, self-sustaining reporting system for stakeholders  

---

## 🏗️ Technical Architecture

### 1️⃣ The Foundation — Data Engineering

- Designed a robust and normalized relational SQL schema  
- Ensured data integrity, consistency, and high-performance querying  
- Engineered optimized **SQL Views** for KPI pre-calculations and reporting  

---

### 2️⃣ The Intelligence — Predictive Modeling

- Developed Python scripts using **Pandas** for quintile-based RFM scoring  
- Implemented Association Rule Mining using the **Mlxtend** library  
- Evaluated rules using **Support, Confidence, and Lift** metrics for real-world Market Basket Analysis  

---

### 3️⃣ The Face — Executive Dashboard

- Built an interactive **Power BI Executive Dashboard**  
- Designed geographical heat maps and KPI scorecards  
- Integrated dynamic slicers to filter performance by customer loyalty segments  

---

### 4️⃣ Automation & Orchestration

- Configured **Windows Task Scheduler** to automate weekly ETL execution and SQL refresh  
- Automated execution of Python-based RFM analysis scripts  
- Enabled seamless refresh of Power BI dashboards  
- Delivered a fully integrated, end-to-end analytics pipeline  

---

## 👥 Professional Contributions

### 👤 Amna Bi Hafeez — Analytics & BI Lead

- Developed the Python Predictive Suite for automated customer and product analytics.  
- Engineered RFM models to segment the customer base into actionable loyalty tiers.  
- Implemented Market Basket Analysis using the Apriori algorithm to identify cross-sell trends.  
- Architected the Power BI dashboard with high-fidelity, interactive visualizations.  
- Authored advanced DAX measures to drive complex business KPIs and performance scorecards.  
- Integrated Python-to-BI data workflows to ensure seamless analytical reporting.  
- Optimized dashboard UX/UI for intuitive, "one-click" executive data exploration.

---

### 👤 Debasish Sahoo — Data Engineering & Automation Lead

- Cleaned and prepared raw retail data for SQL ingestion  
- Designed and managed a reporting-ready relational SQL architecture  
- Developed business-oriented SQL queries across sales, revenue, profitability, and regional trends  
- Created reusable SQL views for downstream analytics  
- Prepared SQL-level RFM base views to support customer-level analysis  
- Implemented ETL automation and weekly data refresh workflows  
- Ensured data integrity and hands-off reporting  

---

**Note:** The dataset was renamed at the SQL table level for analysis consistency; the underlying source data remains unchanged.

---

## 🚀 Deployment Instructions

### 1️⃣ Initialize Database

- Execute the SQL script `1_Week 1 SQL queries.sql` located in the repository root  

---

### 2️⃣ Execute Analytics

Run the following Python scripts:

```bash
2_rfm_analysis.py
3_basket_analysis.py
