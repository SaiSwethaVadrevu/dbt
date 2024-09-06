# Overview

This project demonstrates how to transform e-commerce transaction data into a star schema using dbt Core and Snowflake. The dataset consists of 10,000 rows of e-commerce transaction data, which includes information about transactions, customers, products, and sales.

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
 
## Setup Instructions

1. **Install dbt Core**:
   ```bash
   pip install dbt-core
2. **Configure Snowflake**:
Update profiles.yml with your Snowflake credentials.

