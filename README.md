# ⚡ EV Charging Station Analysis
### Python | SQL Server | Power BI | End-to-End Analytics Pipeline

---

## 📌 Project Overview

A corporate-level analysis of EV charging station operations across **5 Indian cities and 200 stations**, analyzing **156,455 charging sessions generating ₹8.14Cr total revenue** — focused on revenue optimization, energy consumption trends, demand forecasting, and infrastructure planning.

**Tech Stack:**
- **Python** — Data Cleaning, Feature Engineering, Correlation Analysis
- **SQL Server (SSMS)** — Advanced Business Intelligence Queries
- **Power BI** — Executive Dashboard Reporting

---

## 🏗️ Project Architecture

```
Raw Dataset (156,455 records | 17 features)
        ↓
Python (EDA + Feature Engineering + Correlation)
        ↓
SQL Server (CTEs, LAG, RANK, Aggregations)
        ↓
Power BI (Interactive Executive Dashboard)
```

---

## 📊 Dataset Overview

| Metric | Value |
|--------|-------|
| Total Sessions | 156,455 |
| Total Revenue | ₹8.14 Crore |
| Avg Session Cost | ₹520.35 |
| Avg Energy Consumed | 32.50 kWh |
| Avg Session Duration | ~70 minutes |
| Total Energy Delivered | 5,084,268 kWh |
| Cities Covered | 5 (Mumbai, Pune, Delhi, Bangalore, Hyderabad) |
| Charging Stations | 200 |
| Vehicle Types | 4 (2-Wheeler, 3-Wheeler, 4-Wheeler, Commercial EV) |
| Weather Conditions | 3 (Sunny, Cloudy, Rainy) |
| Time Period | 12 Months |

---

## 🧠 Advanced Analytics Performed

### 🔹 Feature Engineering
- Extracted **Charging Hour** from timestamps → identified peak demand at **12PM (6,666 sessions)**
- Created **Month & Season features** → revealed **8.8% revenue gap** between best (January ₹69.8L) and worst month (February ₹64.1L)
- Built **Revenue Per kWh aggregations** → confirmed energy consumption as primary revenue driver
- Developed **Duration Categories** → Short (40,143) | Medium (70,153) | Long (46,159)

### 🔹 Correlation Analysis
- **Strong Positive:** Energy Consumed ↔ Charging Cost — primary revenue driver confirmed
- **Positive:** Charging Duration ↔ Energy Consumption
- **Fast vs Slow Charger:** ₹522.65 vs ₹518.05 avg cost — only ₹4.60 gap despite same ~70 min duration

---

## 🔍 SQL Business Intelligence Queries

| Query | Technique | Key Finding |
|-------|-----------|-------------|
| Month-over-Month Revenue Growth | LAG Window Function | 8.8% seasonal revenue gap |
| Top Vehicle Types per Month | RANK + PARTITION BY | 2-Wheeler leads at ₹2.04Cr (25.1%) |
| Station Performance Benchmarking | Subquery + HAVING | ST0091 tops at ₹4.49L vs ₹4.07L avg |
| Peak Hour Demand Analysis | GROUP BY + ORDER BY | 12PM peak — 6,666 sessions |
| Energy Consumption by Vehicle | HAVING + Subquery | Commercial EV highest energy consumer |

---

## 📊 Power BI Dashboard

**KPIs Tracked:**
- ✅ Total Sessions — **156K**
- ✅ Total Revenue — **₹8.14Cr**
- ✅ Avg Charging Cost — **₹520**
- ✅ Avg Duration — **70 mins**
- ✅ Avg Energy — **32.50 kWh**

**Visuals Included:**
- Revenue by Month (MoM trend)
- Revenue by Vehicle Type
- Peak Charging Hours distribution
- Station Performance Benchmarking
- City-wise Revenue Breakdown
- Revenue Breakdown by Weather Condition and Duration Category
- Interactive Slicers — City, Vehicle Type, Charger Type, Weather

---

## 📈 Business Impact

| Finding | Insight | Business Action |
|---------|---------|-----------------|
| Peak at 12PM (6,666 sessions) | Highest demand window | Prioritize station availability at noon |
| ST0091 — 10.5% above avg revenue | Top performing station | Replicate station model across network |
| February lowest revenue (₹64.1L) | Seasonal demand dip | Launch promotional pricing in Feb |
| Fast vs Slow — ₹4.60 cost gap | Pricing strategy gap | Re-evaluate fast charger premium pricing |
| 2-Wheeler leads revenue at 25.1% | Dominant vehicle segment | Prioritize 2-Wheeler infrastructure expansion |

---

## 📂 File Structure

```
📁 EV-Charging-Station-Analysis
├── ev_charging.ipynb                      # Python EDA + Feature Engineering
├── ev_charg.sql                           # SQL Business Intelligence queries
├── ev_charging_analysis_dashboard.pbix    # Power BI dashboard file
├── EV_Charging_Cleaned.csv                # Cleaned dataset
└── ev_charging_dashboard.PNG              # Dashboard preview
```

---

## 🚀 How to Use

1. Run **ev_charging.ipynb** to view the data cleaning, feature engineering, and correlation analysis
2. Import **ev_charg.sql** into SQL Server Management Studio (SSMS) to test all business intelligence queries
3. Open **ev_charging_analysis_dashboard.pbix** in Power BI Desktop to explore the interactive dashboard

---

## 🎯 Conclusion

This project demonstrates a complete end-to-end analytics workflow converting **156,455 raw EV charging records into strategic business intelligence.**

Key findings confirm:
- ⚡ **Energy consumption** is the primary revenue driver
- 🕛 **12PM peak hour** requires operational prioritization across 200 stations
- 📊 **Station ST0091** outperforms network average by **10.5%** — replicable model
- 📅 **8.8% seasonal revenue gap** between January and February signals dynamic pricing opportunity
- 🚗 **2-Wheeler segment** dominates at **25.1% of ₹8.14Cr total revenue**

---

## 📸 Dashboard Preview

![Dashboard](EV_Charging_Station_Analytics_Dashboard.PNG)


