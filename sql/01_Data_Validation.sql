/* =====================================================
   AIRBNB MARKET INTELLIGENCE PROJECT
   DATA VALIDATION
   ===================================================== */


/* =====================================================
   VALIDATION 1: CHECK DUPLICATE LISTING IDS
   ===================================================== */

SELECT
    COUNT(*) - COUNT(DISTINCT listing_id) AS duplicate_listing_ids
FROM dim_listing;

/*
Output:
duplicate_listing_ids
0

Business Interpretation:
No duplicate listing IDs were found in the listings dimension table.

This confirms that listing_id uniquely identifies each Airbnb listing and can be safely used as the primary key.
*/


/* =====================================================
   VALIDATION 2: CHECK DUPLICATE HOST IDS
   ===================================================== */

SELECT
    COUNT(*) - COUNT(DISTINCT host_id) AS duplicate_host_ids
FROM dim_host;

/*
Output:
duplicate_host_ids
0

Business Interpretation:
No duplicate host IDs were found in the host dimension table.

This confirms that host_id uniquely identifies each Airbnb host and maintains dimension table integrity.
*/


/* =====================================================
   VALIDATION 3: CHECK DUPLICATE REVIEW IDS
   ===================================================== */

SELECT
    COUNT(*) - COUNT(DISTINCT review_id) AS duplicate_review_ids
FROM fact_reviews;

/*
Output:
duplicate_review_ids
0

Business Interpretation:
No duplicate review IDs were found in the reviews fact table.

This confirms that duplicate review assignments identified during data cleaning were successfully removed and review_id uniqueness was restored.
*/


/* =====================================================
   VALIDATION 4A: CHECK NULL LISTING IDS
   ===================================================== */

SELECT
    SUM(CASE WHEN listing_id IS NULL THEN 1 ELSE 0 END) AS null_listing_ids
FROM dim_listing;

/*
Output:
null_listing_ids
0

Business Interpretation:
No null values were found in listing_id.

All listing records contain valid primary key values, ensuring complete entity identification.
*/


/* =====================================================
   VALIDATION 4B: CHECK NULL HOST IDS
   ===================================================== */

SELECT
    SUM(CASE WHEN host_id IS NULL THEN 1 ELSE 0 END) AS null_host_ids
FROM dim_host;

/*
Output:
null_host_ids
0

Business Interpretation:
No null values were found in host_id.

All host records contain valid primary key values, ensuring complete host identification.
*/


/* =====================================================
   VALIDATION 4C: CHECK NULL REVIEW IDS
   ===================================================== */

SELECT
    SUM(CASE WHEN review_id IS NULL THEN 1 ELSE 0 END) AS null_review_ids
FROM fact_reviews;

/*
Output:
null_review_ids
0

Business Interpretation:
No null values were found in review_id.

Every review record is uniquely identifiable and suitable for analytical modeling.
*/


/* =====================================================
   VALIDATION 5: CHECK LISTING → HOST RELATIONSHIP
   ===================================================== */

SELECT
    COUNT(*) AS orphan_hosts
FROM dim_listing l
LEFT JOIN dim_host h
    ON l.host_id = h.host_id
WHERE h.host_id IS NULL;

/*
Output:
orphan_hosts
0

Business Interpretation:
No orphan listing records were found.

Every listing is linked to a valid host record, confirming referential integrity between dim_listing and dim_host.
*/


/* =====================================================
   VALIDATION CONCLUSION
   =====================================================

   All validation checks passed successfully.

   Key Findings:
   - No duplicate primary keys were detected.
   - No null primary key values were found.
   - Listing-to-host relationships are fully maintained.
   - Review ID uniqueness was successfully restored during data cleaning.

   The PostgreSQL warehouse is validated and ready
   for analytical SQL queries, KPI generation,
   and dashboard reporting.
===================================================== */