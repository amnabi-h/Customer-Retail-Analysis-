# Consumer360: End-to-End Retail Intelligence & Automation

## 📌 Project Executive Summary
Consumer360 is a strategic retail intelligence solution designed to transform fragmented transactional data into a self-sustaining engine for business growth.  
By integrating **SQL-based Data Warehousing**, **Python-driven Predictive Analytics**, and **Interactive Business Intelligence**, the project delivers a 360-degree view of customer behavior and product performance.

---

## 🎯 Business Value & Strategic Insights

### 📊 SQL-Driven Business Value & Strategic Insights

- Established a reliable SQL-based reporting foundation by cleaning and structuring raw retail data
- Enabled management-level visibility into sales, revenue, and profitability trends
- Supported identification of underperforming categories, regions, and loss-making transactions
- Improved decision-making by delivering consistent, reusable SQL views for reporting and analytics
- Increased operational efficiency through automated weekly data refresh with minimal manual intervention

### 🎯 Targeted Marketing (RFM Analysis)
- Transitioned from generic marketing to precision targeting
- Segmented customers into **Champions, At Risk, and Hibernating** groups
- Enabled optimized marketing spend and higher campaign effectiveness

### 💰 Revenue Optimization (Market Basket Analysis)
- Identified high-probability cross-selling opportunities using the **Apriori algorithm**
- Discovered hidden product associations
- Implemented **Next Best Offer** logic for upselling and cross-selling strategies

### ⚙️ Operational Efficiency
- Achieved **100% reduction in manual reporting**
- Implemented a fully automated Sunday-night data refresh and analytics pipeline
- Enabled a hands-off, self-sustaining reporting system for stakeholders

---

## 🏗️ Technical Architecture

### 1️⃣ The Foundation — Data Engineering
- Designed a robust and normalized relational SQL schema
- Ensured data integrity, consistency, and high-performance querying
- Engineered optimized SQL Views for complex date handling and metric pre-calculations

### 2️⃣ The Intelligence — Predictive Modeling
- Developed Python scripts using **Pandas** for quintile-based RFM scoring
- Implemented Association Rule Mining using the **Mlxtend** library
- Evaluated rules using **Support, Confidence, and Lift** metrics for real-world Market Basket Analysis

### 3️⃣ The Face — Executive Dashboard
- Built an interactive **Power BI Executive Dashboard**
- Designed geographical heat maps and KPI scorecards
- Integrated dynamic slicers to filter performance by customer loyalty segments

### 4️⃣ Automation & Orchestration
- Configured Windows Task Scheduler to automate weekly ETL execution and SQL data refresh
- Automated execution of Python-based RFM analysis scripts on refreshed datasets
- Enabled seamless refresh of Power BI dashboards using updated SQL outputs
- Ensured an end-to-end, hands-off analytics and reporting pipeline
  
---

## 👥 Professional Contributions

### 👤 Amna Bi Hafeez — Analytics & BI Lead
- Led the development of the Python-based predictive analytics layer
- Authored customer segmentation and market basket algorithms
- Designed and developed the Power BI Executive Dashboard
- Translated complex analytical outputs into decision-ready visual insights

### 👤 Debasish Sahoo — Data Engineering & Automation Lead
- Took ownership of the data foundation by cleaning and preparing raw retail data and loading it into SQL tables
- Designed and managed a fact/dimension-style SQL database architecture to support analytical reporting
- Developed business-oriented SQL queries to analyze sales, revenue, profitability, category performance, regional trends, and loss-making transactions
- Created reusable SQL views to serve as a clean and consistent reporting layer for downstream analytics
- Prepared SQL-level RFM base views to support customer-level analysis (modeling handled separately)
- Implemented initial ETL flow and Task Scheduler automation to enable weekly automated data refresh
- Ensured data integrity, consistency, and hands-off reporting without manual intervention

**Note:** The dataset was renamed at the SQL table level for analysis consistency; the underlying source data remains unchanged

---

## 🚀 Deployment Instructions

### 1️⃣ Initialize Database
- Execute SQL scripts located in the `/Database_Engineering` folder

### 2️⃣ Execute Analytics
Run the following Python scripts:
```bash
python rfm_analysis.py
python basket_analysis.py
