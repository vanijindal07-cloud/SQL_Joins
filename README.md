# SQL_Joins

## Tools Used
- SQLite
- DB Browser for SQLite (No Installer)

## Task Description
Performed INNER JOIN and LEFT JOIN operations on Customers, Invoice, InvoiceLine, Track, and Genre tables to answer business questions. 

**Note:** Some terms in the task file were different instead of the exact dataset names, so we mapped them accordingly.

## Work Done
- Identified customers with no orders (LEFT JOIN)
- Calculated revenue per product (InvoiceLine + Track)
- Generated category-wise revenue (Genre + Track)
- Answered country-based sales questions with WHERE conditions
- Used aliases (i, c, il, t, g) for readability and professional formatting

## Deliverables
- SQL queries file (`joins_queries.sql`)
- Exported CSV output (`joined_output.csv`)
- Business insights (`insights.txt`)
- Chinook database (`Chinook.db`)

## Insights
1. A small number of products contribute a significant share of total revenue, indicating strong revenue concentration.
2. Several customers exist without any purchase history, representing potential targets for marketing and re-engagement campaigns.
3. Certain categories generate higher revenue than others, helping the business prioritize inventory and promotional strategies.

