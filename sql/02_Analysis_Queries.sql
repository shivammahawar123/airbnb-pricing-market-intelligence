/* =====================================================
   AIRBNB MARKET INTELLIGENCE PROJECT
   BUSINESS ANALYSIS QUERIES
   ===================================================== */

/* =====================================================
   QUERY 1: WHICH CITIES HAVE THE LARGEST AIRBNB MARKETS?
   ===================================================== */

SELECT
    city,
    COUNT(*) AS total_listings
FROM dim_listing
GROUP BY city
ORDER BY total_listings DESC;

/* =====================================================
   Query 2: Cities with the Most Hosts
   ===================================================== */

SELECT
    l.city,
    COUNT(DISTINCT l.host_id) AS total_hosts
FROM dim_listing l
GROUP BY l.city
ORDER BY total_hosts DESC;

/* =====================================================
   Query 3: Premium Neighbourhoods
   ===================================================== */

SELECT
    city,
    neighbourhood,
    ROUND(AVG(price),2) AS avg_price,
    COUNT(*) AS listing_count
FROM dim_listing
GROUP BY city, neighbourhood
HAVING COUNT(*) >= 100
ORDER BY avg_price DESC;

/* =====================================================
   Query 4: Average Price by City
   ===================================================== */

SELECT
    city,
    ROUND(AVG(price),2) AS average_price
FROM dim_listing
GROUP BY city
ORDER BY average_price DESC;

/* =====================================================
   Query 5: Price by Room Type
   ===================================================== */

SELECT
    room_type,
    ROUND(AVG(price),2) AS average_price,
    COUNT(*) AS listing_count
FROM dim_listing
GROUP BY room_type
ORDER BY average_price DESC;

/* =====================================================
   Query 6: Price by Property Type
   ===================================================== */

SELECT
    property_type,
    ROUND(AVG(price),2) AS average_price,
    COUNT(*) AS listing_count
FROM dim_listing
GROUP BY property_type
HAVING COUNT(*) >= 100
ORDER BY average_price DESC;

/* =====================================================
   Query 7: Accommodation Capacity vs Price
   ===================================================== */

SELECT
    accommodates,
    ROUND(AVG(price),2) AS average_price,
    COUNT(*) AS listing_count
FROM dim_listing
WHERE accommodates BETWEEN 1 AND 10
GROUP BY accommodates
ORDER BY accommodates;

/* =====================================================
   Query 8: Bedrooms vs Price
   ===================================================== */

SELECT
    bedrooms,
    ROUND(AVG(price),2) AS average_price,
    COUNT(*) AS listing_count
FROM dim_listing
WHERE bedrooms BETWEEN 1 AND 10
GROUP BY bedrooms
ORDER BY bedrooms;

/* =====================================================
   Query 9: Review Activity by Year
   ===================================================== */

SELECT
    EXTRACT(YEAR FROM review_date) AS review_year,
    COUNT(*) AS review_count
FROM fact_reviews
GROUP BY review_year
ORDER BY review_year;

/* =====================================================
   Query 10: Review Activity by Month
   ===================================================== */

SELECT
    EXTRACT(MONTH FROM review_date) AS review_month,
    COUNT(*) AS review_count
FROM fact_reviews
GROUP BY review_month
ORDER BY review_month;

/* =====================================================
   Query 11: Average Reviews per Listing by City
   ===================================================== */

SELECT
    l.city,
    ROUND(
        COUNT(r.review_id)::NUMERIC /
        COUNT(DISTINCT l.listing_id),
        2
    ) AS avg_reviews_per_listing
FROM dim_listing l
LEFT JOIN fact_reviews r
    ON l.listing_id = r.listing_id
GROUP BY l.city
ORDER BY avg_reviews_per_listing DESC;

/* =====================================================
   Query 12: Superhost vs Non-Superhost Performance
   ===================================================== */

SELECT
    host_is_superhost,
    ROUND(AVG(price),2) AS avg_price,
    ROUND(AVG(review_scores_rating),2) AS avg_rating,
    COUNT(*) AS listing_count
FROM dim_listing l
JOIN dim_host h
    ON l.host_id = h.host_id
GROUP BY host_is_superhost
ORDER BY host_is_superhost DESC;

/* =====================================================
   Query 13: Response Rate vs Rating
   ===================================================== */

SELECT
    CASE
        WHEN host_response_rate < 0.50 THEN '<50%'
        WHEN host_response_rate < 0.80 THEN '50-79%'
        WHEN host_response_rate < 0.95 THEN '80-94%'
        ELSE '95-100%'
    END AS response_rate_group,

    ROUND(AVG(review_scores_rating),2) AS avg_rating,
    COUNT(*) AS listing_count

FROM dim_host h
JOIN dim_listing l
    ON h.host_id = l.host_id

WHERE host_response_rate IS NOT NULL

GROUP BY response_rate_group
ORDER BY response_rate_group;

/* =====================================================
   Query 14: Acceptance Rate vs Rating
   ===================================================== */

SELECT
    CASE
        WHEN host_acceptance_rate < 0.50 THEN '<50%'
        WHEN host_acceptance_rate < 0.80 THEN '50-79%'
        WHEN host_acceptance_rate < 0.95 THEN '80-94%'
        ELSE '95-100%'
    END AS acceptance_rate_group,

    ROUND(AVG(review_scores_rating),2) AS avg_rating,
    COUNT(*) AS listing_count

FROM dim_host h
JOIN dim_listing l
    ON h.host_id = l.host_id

WHERE host_acceptance_rate IS NOT NULL

GROUP BY acceptance_rate_group
ORDER BY acceptance_rate_group;

/* =====================================================
   Query 15: Value Index by City
   ===================================================== */

SELECT
    city,
    ROUND(AVG(review_scores_rating),2) AS avg_rating,
    ROUND(AVG(price),2) AS avg_price,
    ROUND(
        AVG(review_scores_rating) / NULLIF(AVG(price),0),
        4
    ) AS value_index
FROM dim_listing
GROUP BY city
ORDER BY value_index DESC;


/* =====================================================
   ANALYSIS CONCLUSION
   =====================================================

   Market Intelligence
   - Paris contains the largest Airbnb market by listings and hosts.
   - Significant differences exist in market size across cities.
   - Premium neighbourhoods are concentrated in Cape Town, Bangkok,
     Rio de Janeiro, and Mexico City.

   Pricing Intelligence
   - Cape Town and Bangkok have the highest average listing prices.
   - Entire villas are the most expensive property type.
   - Property size, bedrooms, and accommodation capacity are major
     drivers of listing price.

   Demand Intelligence
   - Review activity grew rapidly until 2019.
   - Review volume peaked in 2019.
   - October recorded the highest review activity.
   - Rome achieved the highest reviews per listing.

   Host Intelligence
   - Superhosts earn higher ratings and higher prices.
   - Higher response rates are associated with higher ratings.
   - Acceptance rate shows limited influence on guest satisfaction.

   Value-for-Travel Intelligence
   - Rome achieved the highest value index.
   - Paris and New York ranked second and third.
   - Cape Town and Bangkok showed strong ratings but lower value
     due to substantially higher prices.

   Overall Conclusion
   The analysis identified substantial differences in pricing,
   demand, host performance, and customer value across global
   Airbnb markets. The findings provide actionable insights for
   hosts, travelers, and platform stakeholders.

===================================================== */





