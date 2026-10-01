# Procurement Analytics Portfolio
**Tools:** MySQL | Microsoft Excel | Power BI  
**Dataset:** 200 Purchase Orders | 15 Vendors | 6 Departments | FY2024

## Business Problem
How can a procurement team monitor spending patterns, evaluate 
vendor performance, and identify cost-saving opportunities 
without manually analysing spreadsheets?

## Solution
An end-to-end procurement analytics pipeline — from raw data 
in MySQL to interactive Power BI dashboards — enabling 
data-driven procurement decisions.

## Key Insights
- Total procurement spend: ₹403M across 200 purchase orders
- Total savings through vendor discounts: ₹14.88M (3.7% rate)
- Bangalore Office Supplies offers highest discount rate at 6.31%
- Apex Components Pvt Ltd is highest spend vendor at ₹41M
- R&D is highest spend Department at ₹71M
- Production and Logistics departments drive highest spend volumes
- 132 of 200 orders delivered, 25 cancelled, 19 in transit, 24 pending

## Dashboard Features
**Page 1 — Spending Overview**
Department and category spend breakdown with vendor slicer 
and department share pie chart

**Page 2 — Vendor Performance**
Vendor spend ranking, discount analysis, and scatter plot 
showing spend vs discount percentage relationship

**Page 3 — Vendor Drill Through**
Individual vendor deep dive with KPIs, order status breakdown, 
gauge charts, and department spend distribution

## Project Structure
- `/SQL` — MySQL queries for data extraction and analysis
- `/Excel` — Pivot tables, charts, and delivery tracker
- `/PowerBI` — Interactive dashboard with drill through navigation
- `/Dataset` — Source CSV dataset

## Tools & Technologies
- **MySQL Workbench** — Database creation, querying, CASE statements, 
  date functions
- **Microsoft Excel** — Pivot tables, pivot charts, slicers, 
  VLOOKUP, dashboard design
- **Power BI Desktop** — Interactive visuals, drill through, 
  scatter plots, gauge charts, bookmarks
