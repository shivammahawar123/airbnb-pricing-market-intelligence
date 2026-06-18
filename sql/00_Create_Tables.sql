CREATE TABLE dim_host (
    host_id BIGINT PRIMARY KEY,
    host_since DATE,
    host_location TEXT,
    host_response_time TEXT,
    host_response_rate NUMERIC,
    host_acceptance_rate NUMERIC,
    host_is_superhost CHAR(1),
    host_total_listings_count NUMERIC,
    host_has_profile_pic CHAR(1),
    host_identity_verified CHAR(1)
);


CREATE TABLE dim_listing (
    listing_id BIGINT PRIMARY KEY,
    host_id BIGINT,
    city TEXT,
    neighbourhood TEXT,
    property_type TEXT,
    room_type TEXT,
    accommodates INTEGER,
    bedrooms NUMERIC,
    price NUMERIC,
    minimum_nights INTEGER,
    maximum_nights INTEGER,
    instant_bookable CHAR(1),
    review_scores_rating NUMERIC,
    review_scores_accuracy NUMERIC,
    review_scores_cleanliness NUMERIC,
    review_scores_checkin NUMERIC,
    review_scores_communication NUMERIC,
    review_scores_location NUMERIC,
    review_scores_value NUMERIC,

    CONSTRAINT fk_listing_host
    FOREIGN KEY (host_id)
    REFERENCES dim_host(host_id)
);

CREATE TABLE fact_reviews (
    review_id BIGINT PRIMARY KEY,
    listing_id BIGINT,
    reviewer_id BIGINT,
    review_date DATE
);