# Uber Data Analytics Project

![106656783-1597073190121-gettyimages-1137475171-GERMANY_UBER](https://github.com/KanikaGaikwad/Uber-data-engineering-project-ETL-pipeline/assets/138404863/3f982a8b-ad3c-42bd-aff2-ffa6c9ac95c0)
This project analyzes Uber data using SQL on Google BigQuery to gain insights into ride-sharing patterns and optimize operations.

## Project Objectives

- Explore and understand the Uber data schema (star schema with fact and dimension tables)
- Build an ETL pipeline using Mage.ai to load data from Google Cloud Storage to BigQuery
- Utilize SQL queries in BigQuery to generate reports and answer business questions
- Create an analytics table for building interactive dashboards in Looker

## Technical Stack

- Data Source: Uber website: https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
- Data Dictionary: https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf
- Data Modeling: Lucidchart (star schema)
- Data Transformation: Jupyter Notebook
- Data Storage: Google Cloud Storage
- Data Management: Google Compute Engine, Mage.ai
- Data Analysis: BigQuery (SQL)
- Data Visualization: Looker

## Project Setup

- Download the Uber data from https://github.com/KanikaGaikwad/Uber-data-engineering-project-ETL-pipeline/blob/main/uber_data.csv
- Define the star schema for the data using Lucidchart.
- Create Jupyter notebooks to transform the data and create fact and dimension tables.
- Upload the data to Google Cloud Storage.
- Set up a Google Compute Engine virtual machine and connect to Mage.ai
- Build an ETL pipeline in Mage.ai to load the tables into BigQuery.

## Getting Started

- This project requires familiarity with SQL, BigQuery, and potentially Looker.
- The Jupyter notebooks contain the data transformation code.
- The Mage.ai pipeline automates the data loading process to BigQuery.
- SQL queries written for BigQuery are available within the project directory (or specific location).

## Further Exploration

- Explore specific business questions related to Uber's ride-sharing data.
- Utilize advanced SQL functions for deeper data analysis.
- Develop interactive dashboards in Looker to showcase insights

## Star Schema Diagram

![uber_table](https://github.com/KanikaGaikwad/Uber-data-engineering-project-ETL-pipeline/assets/138404863/01dac191-e56c-4fb5-8572-ad34e1b57dc3)


## Looker Dashboard

![Uber Looker Dashboard ](https://github.com/KanikaGaikwad/Uber-data-engineering-project-ETL-pipeline/assets/138404863/a5e9db5c-73c4-438b-b7a6-7a7bb1be13db)

