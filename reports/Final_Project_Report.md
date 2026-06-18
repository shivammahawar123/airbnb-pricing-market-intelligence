# Airbnb Pricing & Market Intelligence

## Final Project Report

---

# Executive Summary

The Airbnb Pricing & Market Intelligence project is an end-to-end data analytics solution designed to analyze Airbnb marketplace performance across ten major global cities. The project integrates data auditing, cleaning, validation, data modeling, exploratory analysis, KPI development, SQL-based business intelligence, and Power BI dashboarding to generate actionable insights for hosts, travelers, and business stakeholders.

The objective was to understand market structure, identify pricing drivers, evaluate customer demand patterns, assess host performance, and compare value-for-travel opportunities across global Airbnb markets.

---

# Project Background

The short-term rental industry generates large volumes of operational and customer data. Understanding how pricing, demand, host quality, and customer satisfaction vary across cities is critical for improving business performance and supporting data-driven decision-making.

This project was developed to transform raw Airbnb listings and reviews into a structured analytical solution capable of answering key business questions through SQL analysis and interactive dashboard reporting.

---

# Business Objectives

The project was designed to address the following objectives:

* Compare Airbnb market characteristics across major global cities.
* Identify the key factors influencing listing prices.
* Analyze pricing differences across room types, property types, and locations.
* Study customer review activity and long-term demand trends.
* Detect seasonality patterns in customer engagement.
* Evaluate host performance and customer satisfaction.
* Assess value-for-travel opportunities across markets.
* Develop actionable market intelligence for decision-makers.

---

# Dataset Overview

The project uses Airbnb listings and review data covering ten major global cities.

### Raw Dataset Summary

| Dataset  |   Records |
| -------- | --------: |
| Listings |   279,712 |
| Reviews  | 5,373,143 |

### Final Analytical Datasets

| Dataset        |   Records |
| -------------- | --------: |
| Clean Listings |   279,434 |
| Clean Reviews  | 5,372,983 |
| Host Dimension |   181,805 |
| Cities Covered |        10 |

---

# Project Methodology

## 1. Data Audit

The project began with a comprehensive data quality assessment.

Key activities included:

* Dataset profiling
* Missing value assessment
* Duplicate detection
* Data type review
* Integrity verification

Major findings included significant missing values within host response metrics and review score fields, requiring additional preparation before analysis.

---

## 2. Data Cleaning

Data preparation focused on improving analytical reliability.

Key actions included:

* Removing invalid price records
* Eliminating duplicate review records
* Standardizing date formats
* Cleaning host profile information
* Handling high-missing-value attributes

After cleaning, the datasets were transformed into analysis-ready assets suitable for SQL and Power BI reporting.

---

## 3. Data Validation

Validation procedures were implemented to ensure analytical accuracy.

Validation checks included:

* Primary key uniqueness
* Null key verification
* Referential integrity testing
* Relationship consistency checks

All analytical tables successfully passed validation requirements and were confirmed as suitable for reporting and business analysis.

---

## 4. Data Modeling

A simplified star-schema analytical model was developed.

### Dimension Tables

* dim_listing
* dim_host

### Fact Table

* fact_reviews

The model supports efficient querying, KPI calculation, trend analysis, and dashboard reporting.

---

## 5. Business Understanding

Business objectives and analytical questions were defined before conducting analysis.

The project was structured around four analytical domains:

* Market Intelligence
* Pricing Intelligence
* Demand Intelligence
* Host Intelligence

This framework guided the entire analytical workflow.

---

## 6. Exploratory Data Analysis

EDA was conducted to understand market behavior and identify important analytical patterns.

Key observations included:

* Paris represented the largest Airbnb marketplace.
* Entire homes accounted for the majority of listings.
* Bedrooms and accommodation capacity strongly influenced pricing.
* Significant pricing outliers existed across markets.
* Superhosts demonstrated stronger performance metrics.
* Review activity displayed clear seasonality patterns.

These findings directly informed KPI development and dashboard design.

---

## 7. KPI Framework Development

A structured KPI framework consisting of sixteen business metrics was created.

### Market Intelligence

* Total Listings
* Total Hosts
* Total Cities
* Total Neighbourhoods

### Pricing Intelligence

* Median Listing Price
* Average Listing Price
* Median Bedrooms
* Median Accommodation Capacity

### Demand Intelligence

* Total Reviews
* Average Reviews per Listing
* Peak Review Year
* Peak Review Month

### Host Intelligence

* Superhost Percentage
* Average Review Rating
* Superhost Rating
* Non-Superhost Rating

The KPI framework transformed exploratory findings into measurable business indicators.

---

## 8. SQL Analysis

SQL was used to answer business questions across all analytical domains.

Techniques demonstrated included:

* Aggregations
* Multi-table joins
* Business segmentation logic
* Date-based trend analysis
* Derived metric calculations

The SQL phase generated the insights used throughout the dashboard and reporting process.

---

## 9. Power BI Dashboard Development

A four-page interactive dashboard was developed to communicate business insights.

### Page 1 – Market Intelligence Overview

Focus:

* Market size
* City benchmarking
* Listing supply

### Page 2 – Pricing Intelligence

Focus:

* Pricing drivers
* Property characteristics
* Room type analysis

### Page 3 – Demand Intelligence

Focus:

* Customer engagement
* Review trends
* Seasonal demand patterns

### Page 4 – Host & Value Intelligence

Focus:

* Host quality
* Customer satisfaction
* Value assessment

The dashboard provides interactive filtering, KPI monitoring, comparative benchmarking, and business storytelling capabilities.

---

# Key Findings Summary

### Market Intelligence

* Paris is the largest Airbnb market in the dataset.
* Market size varies significantly across cities.
* Premium neighbourhoods are concentrated in specific high-demand locations.

### Pricing Intelligence

* Bedrooms, accommodation capacity, and property type are primary pricing drivers.
* Entire villas command the highest average prices.
* Large-capacity properties achieve substantial pricing premiums.

### Demand Intelligence

* Customer demand increased significantly between 2008 and 2019.
* October recorded the highest review activity.
* Strong seasonal demand patterns were identified.

### Host Intelligence

* Superhosts consistently outperform standard hosts.
* Higher response rates are associated with stronger customer satisfaction.
* Host quality positively influences marketplace performance.

### Value Assessment

* Rome, Paris, and New York offer the strongest balance between affordability and customer satisfaction.
* Value comparisons should be interpreted carefully due to multi-currency pricing differences.

---

# Project Deliverables

### Data Assets

* Clean Listings Dataset
* Clean Reviews Dataset
* Dimension Tables
* Fact Table

### SQL Deliverables

* Create Tables Script
* Data Validation Queries
* Business Analysis Queries
* SQL Analysis Summary

### Power BI Deliverables

* Interactive Dashboard
* KPI Framework
* Dashboard Documentation

### Business Deliverables

* Business Report
* Final Project Report
* Project README

---

# Scope & Limitations

### Project Scope

The project focuses on Airbnb listings, hosts, pricing behavior, customer reviews, and market performance across ten global cities.

### Limitations

* Cities operate under different currencies.
* Exchange-rate normalization was not performed.
* Review activity is used as a proxy for demand.
* Historical booking and revenue data were unavailable.
* Some host attributes contained significant missing values.

These limitations should be considered when interpreting cross-city comparisons.

---

# Skills Demonstrated

## Technical Skills

* SQL
* PostgreSQL
* Power BI
* Python
* Pandas
* Data Modeling
* Data Validation
* Data Visualization

## Analytical Skills

* Data Auditing
* Data Cleaning
* Exploratory Data Analysis
* KPI Development
* Business Analysis
* Market Intelligence
* Pricing Analytics
* Demand Analysis
* Dashboard Design
* Data Storytelling

---

# Conclusion

This project demonstrates a complete end-to-end data analytics workflow, beginning with raw Airbnb data and culminating in business intelligence reporting and interactive dashboard development.

By combining data preparation, analytical modeling, SQL-based business intelligence, KPI design, and Power BI visualization, the project provides actionable insights into market structure, pricing dynamics, customer demand, host performance, and traveler value. The resulting solution serves as a practical example of how data analytics can support decision-making within the hospitality and short-term rental industry.
