# Data Setup Instructions

## Overview

Large datasets and the Power BI dashboard file are excluded from the GitHub repository due to GitHub file size limitations.

This project remains fully reproducible using the resources provided in this Google Drive folder and the notebooks included in the repository.

GitHub Repository:

https://github.com/shivammahawar123/airbnb-pricing-market-intelligence

---

# Dataset Source

This project uses the Maven Analytics Airbnb Listings & Reviews Dataset.

The dataset was obtained from Maven Analytics and is based on publicly available Airbnb listings and review data collected from major global cities.

---


## Google Drive Resources

Google Drive Folder:

https://drive.google.com/drive/folders/1uQKPsijVQX_5HEVEIqLdIiB1TMBMYOMJ?usp=drive_link

This folder contains:

## Raw Dataset

Located in:

```text
01_Raw_Dataset
```

Files:

* Listings.csv
* Reviews.csv
* Listings_data_dictionary.csv
* Reviews_data_dictionary.csv

---

## Power BI Dashboard

Located in:

```text
02_PowerBI_Dashboard
```

File:

* Airbnb_Pricing_and_Market_Intelligence_Dashboard.pbix

---

# Step 1: Download Raw Dataset

Download all files from:

```text
01_Raw_Dataset
```

Place them inside:

```text
data/raw/
```

Expected structure:

```text
data/
└── raw/
    ├── Listings.csv
    ├── Reviews.csv
    ├── Listings_data_dictionary.csv
    └── Reviews_data_dictionary.csv
```

---

# Step 2: Install Project Requirements

Install required Python libraries:

```bash
pip install -r requirements.txt
```

---

# Step 3: Run Notebooks Sequentially

Execute the notebooks in the following order:

### 1. Data Audit

```text
01_Data_Audit.ipynb
```

### 2. Data Cleaning

```text
02_Data_Cleaning.ipynb
```

### 3. Data Modeling

```text
03_Data_Modeling.ipynb
```

### 4. Business Understanding

```text
04_Business_Understanding.ipynb
```

### 5. Exploratory Data Analysis

```text
05_Exploratory_Data_Analysis.ipynb
```

### 6. KPI Framework

```text
06_KPI_Framework.ipynb
```

---

# Step 4: Verify Processed Data Generation

After running the notebooks, the following files should exist inside:

```text
data/processed/
```

Generated files:

* listings_clean.csv
* reviews_clean.csv
* dim_listing.csv
* dim_host.csv
* fact_reviews.csv

Expected structure:

```text
data/
└── processed/
    ├── listings_clean.csv
    ├── reviews_clean.csv
    ├── dim_listing.csv
    ├── dim_host.csv
    └── fact_reviews.csv
```

---

# Step 5: Download Power BI Dashboard

Download:

```text
Airbnb_Pricing_and_Market_Intelligence_Dashboard.pbix
```

from:

```text
02_PowerBI_Dashboard
```

Place the file inside:

```text
powerbi/
```

Expected structure:

```text
powerbi/
└── Airbnb_Pricing_and_Market_Intelligence_Dashboard.pbix
```

---

# Step 6: Refresh Dashboard

1. Open the PBIX file.
2. Verify file paths if necessary.
3. Click Refresh.
4. Allow Power BI to reload all datasets.
5. Save the dashboard.

The dashboard should now function exactly as shown in the project screenshots and documentation.

---

# Repository Design Note

Large datasets and the Power BI dashboard file are intentionally excluded from the GitHub repository to:

* Maintain a lightweight repository
* Comply with GitHub file size limitations
* Improve cloning and download performance
* Preserve project reproducibility

All notebooks, SQL analysis, reports, dashboard documentation, screenshots, and business insights are included within the repository.

---

# Support

If any file path issues occur during dashboard refresh, ensure:

* Raw files are located inside `data/raw/`
* Processed files are located inside `data/processed/`
* PBIX file is located inside `powerbi/`

Following the steps above should fully reproduce the project workflow and dashboard.
