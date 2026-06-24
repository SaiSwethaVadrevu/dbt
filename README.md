# Overview

---

This project demonstrates how to transform e-commerce transaction data into a star schema using dbt Core and Snowflake. The dataset consists of 10,000 rows of e-commerce transaction data, which includes information about transactions, customers, products, and sales.

---

## Project Structure

The project is organized as follows:

- **`models/`**: Contains dbt models for transforming the raw data into a star schema.
  - **`stg_ecommerce_data.sql`**: Staging model that cleans and prepares the raw data.
  - **`dim_customer.sql`**: Dimension table for customer data.
  - **`dim_product.sql`**: Dimension table for product data.
  - **`dim_date.sql`**: Dimension table for date data.
  - **`fct_sales.sql`**: Fact table for sales data.
  - **`total_sales_by_category.sql`**: Aggregates total sales amount for each product category.
  - **`top_5_selling_products_us.sql`**: Identifies top 5 selling products in the US by quantity.
  - **`quarterly_sales_comparison.sql`**: Compares total sales amount between the first and second quarters.
  - **`sales_by_subcategory.sql`**: Shows sales breakdown by subcategory for the best-selling product category.
  - **`monthly_sales_trend.sql`**: Displays monthly sales trend for the top-selling subcategory.
  - **`top_customers_by_country.sql`**: Identifies top 3 customers in each country and their favorite product category.

---

## Tech Stack

- Snowflake
- dbt Core
- SQL
- Python
- Git & GitHub

---
 
## Setup Instructions

1. **Install dbt Core**:
   ```bash
   pip install dbt-core
2. **Configure Snowflake**:
Update profiles.yml with your Snowflake credentials.
3. **Load Data into Snowflake**:
Create and load the raw_ecommerce_data table with the CSV data.
4. **Run dbt Models**:
   ```bash
   dbt run
5. **Run Data Quality Tests**:
   ```bash
   dbt test
6. **Generate and Serve documentation**:
    ```bash
   dbt docs generate
   dbt docs serve

---

## Github Submission

1. **Commit and push changes**:
   ```bash
   git add .
   git commit -m "Initial Commit"
   git push origin main
2. **Create a Pull Request**:
- Create a branch submission, push changes, and open a pull request.
- Include details on your approach, challenges, and documentation link.


---

## Project Objectives

- Build a scalable ELT pipeline using dbt Core.
- Transform raw transactional data into a Star Schema.
- Implement data quality testing.
- Generate analytical datasets for business reporting.
- Maintain project documentation and version control.

---

# Tasks

## Task 1: Environment Setup & Data Ingestion

### Description
Configured the development environment and established connectivity between dbt Core and Snowflake. Loaded raw e-commerce transaction data into Snowflake for downstream processing.

### Subtasks

- Install and configure dbt Core
- Configure Snowflake connection (`profiles.yml`)
- Create Snowflake Warehouse, Database, and Schema
- Load raw e-commerce dataset
- Validate data ingestion

**Status:** ✅ Completed

---

## Task 2: Data Cleaning & Staging

### Description
Created the staging layer to clean, standardize, and prepare raw data for dimensional modeling.

### Subtasks

- Build `stg_ecommerce_data.sql`
- Standardize column names and data types
- Remove duplicate and invalid records
- Prepare clean staging dataset

**Status:** ✅ Completed

---

## Task 3: Star Schema Data Modeling

### Description
Designed and implemented a dimensional data model consisting of dimension and fact tables to support analytical reporting.

### Subtasks

- Create Customer Dimension (`dim_customer`)
- Create Product Dimension (`dim_product`)
- Create Date Dimension (`dim_date`)
- Create Sales Fact Table (`fct_sales`)
- Implement Star Schema relationships

**Status:** ✅ Completed

---

## Task 4: ELT Pipeline Development

### Description
Developed modular dbt models to automate data transformations and manage model dependencies.

### Subtasks

- Develop reusable SQL transformation models
- Configure dbt model dependencies
- Execute transformation pipeline (`dbt run`)
- Materialize dbt models

**Status:** ✅ Completed

---

## Task 5: Data Quality Validation

### Description
Performed data quality validation to ensure data consistency, integrity, and reliability across all transformed datasets.

### Subtasks

- Execute `dbt test`
- Validate uniqueness
- Verify null constraints
- Check referential integrity
- Review data quality reports

**Status:** 🚧 In Progress

---

## Task 6: Business Analytics Models

### Description
Developed analytical SQL models to provide business insights from the transformed e-commerce dataset.

### Subtasks

- Total Sales by Category
- Top 5 Selling Products (US)
- Quarterly Sales Comparison
- Sales by Subcategory
- Monthly Sales Trend
- Top Customers by Country

**Status:** ✅ Completed

---

## Task 7: Documentation & Version Control

### Description
Maintained project documentation and source code using GitHub while documenting the project workflow and implementation details.

### Subtasks

- Generate dbt documentation
- Update README
- Upload project to GitHub
- Commit code changes
- Create Pull Request
- Review documentation

**Status:** 🚧 In Progress

---

# My Contributions

- Configured Snowflake and dbt Core environment.
- Loaded and validated raw transaction data.
- Built staging models and Star Schema.
- Developed SQL transformations using dbt.
- Created analytical reporting models.
- Performed data validation and testing.
- Maintained Git version control and project documentation.

---

# Project Progress

| Activity | Status |
|----------|--------|
| Environment Setup | ✅ Completed |
| Data Ingestion | ✅ Completed |
| Data Cleaning | ✅ Completed |
| Star Schema Modeling | ✅ Completed |
| ELT Pipeline | ✅ Completed |
| Analytics Models | ✅ Completed |
| Data Quality Testing | 🚧 In Progress |
| Documentation | 🚧 In Progress |
| GitHub Review | 🚧 In Progress |

---

## Future Enhancements

- Expand dbt data quality tests.
- Optimize Snowflake SQL performance.
- Improve project documentation.
- Add incremental models and snapshots.
- Build additional business analytics models.
- Integrate CI/CD for automated deployments.
