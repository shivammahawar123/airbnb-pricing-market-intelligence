# SQL Analysis Summary

## Project Overview

This analysis was conducted on a consolidated Airbnb dataset containing listings, hosts, and customer reviews across ten major global cities. The objective was to generate market intelligence, identify pricing drivers, evaluate host performance, analyze customer demand patterns, and assess value-for-travel opportunities.

---

# Market Intelligence

## Key Findings

### Largest Airbnb Markets

Paris emerged as the largest Airbnb market with 64,595 listings, followed by New York and Sydney.

| City     | Listings |
| -------- | -------: |
| Paris    |   64,595 |
| New York |   36,966 |
| Sydney   |   33,596 |

### Host Distribution

Paris also recorded the highest number of hosts, indicating a mature and highly competitive short-term rental ecosystem.

### Premium Neighbourhoods

The highest-priced neighbourhoods were concentrated in:

* Cape Town
* Bangkok
* Rio de Janeiro
* Mexico City

These areas consistently commanded premium pricing compared to city averages.

---

# Pricing Intelligence

## Average Listing Price by City

The highest average prices were observed in:

| City        | Average Price |
| ----------- | ------------: |
| Cape Town   |      2,405.83 |
| Bangkok     |      2,078.35 |
| Mexico City |      1,149.72 |

The lowest average prices were observed in:

| City     | Average Price |
| -------- | ------------: |
| Rome     |        105.14 |
| Paris    |        113.21 |
| New York |        142.97 |

---

## Room Type Impact

Hotel rooms and entire properties commanded higher prices than private or shared accommodations.

| Room Type    | Average Price |
| ------------ | ------------: |
| Hotel Room   |        815.96 |
| Entire Place |        673.47 |
| Shared Room  |        580.25 |
| Private Room |        462.48 |

---

## Property Type Impact

Entire villas represented the highest-priced property category, while apartments dominated overall inventory volume.

| Property Type   | Average Price |
| --------------- | ------------: |
| Entire Villa    |      9,180.30 |
| Entire House    |      1,880.24 |
| Entire Bungalow |      1,649.83 |

---

## Accommodation Capacity and Pricing

Listing prices increased consistently as accommodation capacity increased.

Examples:

| Guests Accommodated | Average Price |
| ------------------- | ------------: |
| 2                   |        399.32 |
| 4                   |        564.29 |
| 6                   |      1,054.53 |
| 10                  |      3,878.26 |

Large-group properties command substantial pricing premiums.

---

## Bedrooms and Pricing

Bedrooms were identified as a major pricing driver.

| Bedrooms | Average Price |
| -------- | ------------: |
| 1        |        393.29 |
| 2        |        673.67 |
| 4        |      2,573.16 |
| 8        |      7,939.33 |

Properties with more bedrooms consistently achieved significantly higher prices.

---

# Demand Intelligence

## Review Growth Over Time

Customer review activity increased rapidly from 2008 through 2019.

### Peak Review Year

**2019**

Total Reviews:

**1,633,427**

Review activity declined significantly after 2019.

---

## Seasonal Demand Patterns

Review activity displayed clear seasonality.

### Peak Review Month

**October**

Total Reviews:

**552,854**

The strongest review activity occurred between September and January.

---

## Customer Engagement

Average reviews per listing varied significantly by city.

| City        | Reviews per Listing |
| ----------- | ------------------: |
| Rome        |               40.27 |
| Mexico City |               23.81 |
| New York    |               22.93 |

Rome demonstrated the highest guest engagement and listing utilization.

---

# Host Intelligence

## Superhost Performance

Superhosts consistently outperformed non-superhosts.

| Host Type     | Avg Price | Avg Rating |
| ------------- | --------: | ---------: |
| Superhost     |    664.39 |      97.00 |
| Non-Superhost |    597.01 |      92.26 |

Superhosts achieved both higher ratings and higher prices.

---

## Response Rate vs Customer Satisfaction

Higher response rates were associated with better guest ratings.

| Response Rate | Avg Rating |
| ------------- | ---------: |
| <50%          |      90.37 |
| 50–79%        |      91.66 |
| 80–94%        |      92.13 |
| 95–100%       |      94.20 |

This indicates responsiveness is an important contributor to customer satisfaction.

---

## Acceptance Rate vs Customer Satisfaction

Acceptance rate showed limited influence on guest ratings.

Guest ratings remained relatively stable across all acceptance-rate categories.

This suggests responsiveness is more important than acceptance volume.

---

# Value-for-Travel Analysis

A Value Index was developed using average review ratings relative to average listing prices.

## Top Value Destinations

| Rank | City     | Value Index |
| ---- | -------- | ----------: |
| 1    | Rome     |      0.8894 |
| 2    | Paris    |      0.8220 |
| 3    | New York |      0.6559 |
| 4    | Sydney   |      0.4198 |

## Lowest Value Destinations

| City        | Value Index |
| ----------- | ----------: |
| Cape Town   |      0.0392 |
| Bangkok     |      0.0447 |
| Mexico City |      0.0825 |

While these cities achieved strong ratings, their significantly higher prices reduced overall value scores.

---

# Key Business Insights

1. Paris represents the largest Airbnb marketplace in the dataset.
2. Bedrooms, accommodation capacity, and property type are primary drivers of listing price.
3. Review activity demonstrates strong long-term growth and clear seasonal patterns.
4. Superhosts achieve both higher ratings and stronger pricing performance.
5. Host responsiveness positively influences guest satisfaction.
6. Acceptance rate has minimal impact on review ratings.
7. Rome, Paris, and New York provide the strongest balance between affordability and customer satisfaction.

---

# Conclusion

The SQL analysis revealed substantial differences in market size, pricing structures, customer demand, host performance, and traveler value across global Airbnb markets.

The findings provide actionable intelligence for:

* Hosts seeking pricing and service optimization
* Travelers evaluating destination value
* Businesses monitoring short-term rental market performance
* Analysts developing hospitality and tourism dashboards

These insights form the foundation of the Power BI dashboard and support data-driven decision-making within the Airbnb ecosystem.

