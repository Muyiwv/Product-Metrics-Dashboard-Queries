# E-commerce Product Metrics SQL Queries
This repository contains a series of SQL queries designed to extract product metrics for an e-commerce product. These queries retrieve important data related to user roles, user creation dates, and vendor information. The queries are organized based on specific metrics and provide valuable insights into the performance and growth of the e-commerce platform.

# Query Descriptions
## Vendor Count Variance (Today vs. Yesterday)
This query compares the number of distinct vendor IDs created today and yesterday, focusing on users with a role ID of 2 (vendor role). It calculates the variance percentage between the two counts.

## User Role Count (Today)
This query counts the number of user roles created today with a role ID of 2 (vendor role). It provides insights into the daily activity of vendor registrations.

## User Role Count (Current Week)
This query counts the number of user roles created within the current week, specifically focusing on the role ID of 2 (vendor role). It offers an overview of the weekly vendor registration activity.

## User Role Count (Previous Week)
This query counts the number of user roles created during the previous week, with a role ID of 2 (vendor role). It helps track the week-to-week changes in vendor registrations.

## User Role Count (Yesterday)
This query counts the number of user roles created yesterday with a role ID of 2 (vendor role). It provides a snapshot of the previous day's vendor registration activity.

## User Role Count (Role ID 1)
This query counts the number of user roles with a role ID of 1. It helps monitor a different user role's count, possibly representing a different user type or function.

## Distinct User Email Count
This query counts the number of distinct user emails in the user table. It provides insights into the total number of unique users in the e-commerce platform.

## Difference Between Total Users and Total Vendors
This query calculates the difference between the total count of users and the total count of distinct vendor IDs. It helps understand the number of users who are not vendors, possibly representing customers or other non-vendor roles.

## User Role Count (Role ID 2)
This query counts the number of user roles with a role ID of 2 (vendor role). It offers insights into the total count of vendors in the system.

## Vendor Count Variance (This Week vs. Last Week)
This query compares the number of distinct vendor IDs created during the current week and the previous week. It calculates the variance percentage between the two counts, providing insights into the week-to-week growth or decline in vendor registrations.

## Instructions
To run these SQL queries and retrieve the desired product metrics:

Set up a PostgreSQL database environment.
Execute each query separately in your preferred PostgreSQL client or command-line interface.
Analyze the query results to gain insights into the e-commerce product metrics.
Feel free to customize and modify these queries based on your specific requirements and database schema.

Please note that these queries were created for PostgreSQL databases, so ensure compatibility with your database system if using a different one.

Note: Remember to handle sensitive information appropriately and ensure you have the necessary permissions to access the required database tables.
