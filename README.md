Bike Sales & Rider Analysis Dashboard
This repository contains the code and resources for a comprehensive analysis of a bike-sharing system's sales and rider data for the years 2021 and 2022. The project involves data cleaning and transformation using SQL, followed by in-depth analysis and visualization using Power BI to uncover key business insights.

Project Overview
The primary goal of this project was to analyze two years of bike sales data to understand rider patterns, identify profitable periods, and assess overall business performance. The final output is an interactive Power BI dashboard that visually represents key metrics such as revenue, profit, rider demographics, and seasonal trends.

📊 View the Interactive Dashboard (You can host your Power BI report online and link it here)
Key Questions Addressed
What is the total revenue and profit?
What is the overall profit margin?
What are the peak hours, days, and seasons for bike rentals?
What is the demographic breakdown of casual vs. registered riders?
How do key performance indicators (KPIs) like rider count and average revenue change over time?
Key Insights
Profitability: The business achieved a strong 45.48% profit margin, with $4.05M in revenue and $2.79M in profit.
Peak Hours: The most profitable hours are consistently between 10:00 AM and 5:00 PM.
Rider Loyalty: Registered members are the core of the business, making up 81.81% of all riders.
Seasonal Demand: The third season of the year shows the highest revenue, indicating a significant seasonal peak in demand.
Tools & Technologies
Database: SQL Server (for data cleaning, transformation, and aggregation)
Business Intelligence: Microsoft Power BI (for creating the interactive dashboard and visualizations)
Data Sources
The analysis is based on three main CSV files:

bike_share_yr_0.csv: Contains bike-sharing data for the year 2021.
bike_share_yr_1.csv: Contains bike-sharing data for the year 2022.
cost_table.csv: A supplementary table containing the cost associated with each bike model or rental type.
Data Schema
The bike-sharing data includes the following columns:

dteday: Date of the rental
season: Season (1:spring, 2:summer, 3:fall, 4:winter)
yr: Year (0: 2021, 1: 2022)
mnth: Month
hr: Hour
holiday: Whether the day is a holiday or not
weekday: Day of the week
workingday: If the day is neither a weekend nor a holiday
weathersit: Weather situation (1: Clear, 2: Mist, 3: Light Snow/Rain, 4: Heavy Rain/Ice Pallets)
temp/atemp: Normalized temperature/feeling temperature
hum: Normalized humidity
windspeed: Normalized wind speed
casual: Count of casual users
registered: Count of registered users
cnt: Total number of rental bikes including both casual and registered
Methodology
The project followed a two-step process:

1. Data Processing with SQL
The initial data was spread across multiple files and required significant cleaning and transformation. A SQL script (SQLQuery3.sql) was used to perform the following tasks:

Combine Datasets: Merged the two yearly data files into a single comprehensive table.
Data Cleaning: Handled missing values and corrected data types.
Feature Engineering: Created new calculated columns for revenue and profit by joining the bike-sharing data with the cost_table.
Aggregation: Grouped data by various dimensions (hour, season, year) to pre-calculate metrics for efficient visualization in Power BI.
2. Visualization with Power BI
The processed data was imported into Power BI to build the final dashboard. The dashboard was designed to be intuitive and insightful, featuring:

KPI Cards: To display top-level metrics like Total Revenue, Profit, Profit Margin, and Sum of Riders.
Time Series Chart: To track KPIs over time, showing trends in rider count and revenue.
Bar Charts: To compare revenue across different seasons.
Donut Chart: To illustrate the proportion of casual vs. registered riders.
Matrix: To provide a detailed breakdown of hourly revenue.
How to Replicate
To replicate this analysis, follow these steps:

Set up the Database:

Create a new database in your SQL Server instance.
Import the three .csv files (bike_share_yr_0.csv, bike_share_yr_1.csv, cost_table.csv) as tables.
Run the SQL Script:

Execute the SQLQuery3.sql script to perform the data cleaning and transformation. This will create a new, analysis-ready table.
Connect to Power BI:

Open Power BI Desktop.
Connect to your SQL Server database and load the final processed table.
Build the Dashboard:

Recreate the visualizations as seen in the screenshot, using the appropriate fields for each chart.
Customize the layout, colors, and filters to finalize the dashboard.
Future Work
Conduct a more granular analysis of weekday vs. weekend trends.
Incorporate weather data more deeply to predict its impact on rider count.
Analyze rider behavior based on geographical location data, if available.
