Consumer360: End-to-End Retail Intelligence & Automation
Project Executive Summary
Consumer360 is a strategic retail solution designed to convert fragmented transactional data into a self-sustaining engine for business growth. By integrating SQL-based Data Warehousing, Python-driven Predictive Analytics, and Interactive Business Intelligence, this project provides a 360-degree view of customer behavior and product performance.

Business Value & Strategic Insights
Targeted Marketing (RFM): Transitioned from generic marketing to precision-targeting by segmenting customers into tiers (Champions, At Risk, Hibernating), allowing for optimized ad-spend.

Revenue Optimization (Market Basket): Identified high-probability cross-selling opportunities using the Apriori algorithm to uncover hidden product associations and "Next Best Offer" logic.

Operational Efficiency: Reduced manual reporting cycles by 100% through a fully automated Sunday-night data refresh and pipeline execution.

Technical Architecture
1. The Foundation: Data Engineering
SQL Architecting: Developed a robust relational schema to ensure data integrity and normalization.

Pre-Processing: Engineered custom SQL Views to handle complex date transformations and metric pre-calculations, optimizing the performance of downstream analytics.

2. The Intelligence: Predictive Modeling
Behavioral Segmentation: Developed Python scripts utilizing Pandas for quintile-based RFM scoring.

Association Rule Mining: Deployed the Mlxtend library to calculate Support, Confidence, and Lift metrics for real-world Market Basket Analysis.

3. The Face: Executive Dashboard
High-Fidelity BI: Created an interactive Power BI interface featuring geographical heat maps and dynamic KPI scorecards.

Interactivity: Integrated "Logic Slicers" that allow stakeholders to instantly filter sales performance by customer loyalty segments.

Professional Contributions
Amna Bi Hafeez — Analytics & BI Lead
As the lead for the intelligence layer, I was responsible for the development of the Python Predictive Suite. This included authoring the algorithmic logic for customer segmentation and market basket associations. Additionally, I designed and built the Power BI Executive Dashboard, translating complex data sets into a user-centric visual interface for decision-makers.

Debasish Sahoo — Data Engineering & Automation Lead
As the engineering lead, my partner architected the SQL Foundation, ensuring all raw data was cleaned, normalized, and optimized for high-speed queries. He also managed the Pipeline Automation & Handoff, configuring the system triggers and Task Scheduler to ensure the entire end-to-end process remains self-sustaining and "hands-off" for the client.

Deployment Instructions
Initialize Database: Execute the scripts within the /Database_Engineering folder.

Execute Analytics: Run python rfm_analysis.py and python basket_analysis.py.

Monitor Insights: Open the .pbix file and select Refresh to visualize the latest production data.
