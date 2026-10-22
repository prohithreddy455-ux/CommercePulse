# CommercePulse — Business Insights Report

## 1. Executive Summary

CommercePulse is an SQL-based e-commerce analytics project built with Microsoft SQL Server. It examines sales performance, customer activity, discount patterns, and potential revenue risks.

## 2. Revenue Performance

The revenue analysis returned these results on the sample dataset:

- Completed orders: 9
- Units sold: 14
- Total revenue after discounts: 1,007.00

Net revenue is calculated as gross order value minus the discount amount.

**Business value:** These metrics help track sales performance and the impact of discounts.

## 3. Customer Activity

![Customer Analysis Results](https://raw.githubusercontent.com/prohithreddy455-ux/CommercePulse/main/docs/customer_analysis_results.png)

The customer analysis classifies customers based on completed purchases and purchase dates.

It helps identify customers with no completed purchases, potentially inactive customers, and recently active customers.

**Recommended action:** Review inactive-customer patterns and validate activity thresholds before using them for real retention decisions.

## 4. Discount and Revenue Risk Analysis

The revenue-risk query calculates:

- Gross order value
- Discount amount
- Net revenue after discounts
- Discount percentage
- A discount review flag

Orders with discounts of 20% or more are flagged for review. Discounts of 10% or more but below 20% are flagged for monitoring.

**Important:** These flags identify discount patterns for investigation. They do not prove that revenue was lost or establish profitability.

## 5. Technical Implementation

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Joins and aggregations
- Common table expressions (CTEs)
- Conditional logic using CASE
- NULL handling and percentage calculations
- Git and GitHub

## 6. Limitations

The project uses sample data, not live production transactions. Revenue, discount, and customer findings are demonstrations of analytical techniques, not verified business outcomes.

## 7. Future Improvements

- Add automated data-quality checks.
- Analyze monthly revenue trends.
- Compare discounts with profit margins.
- Add product and category performance analysis.
- Test queries with larger datasets and edge cases.

## Conclusion

CommercePulse demonstrates how SQL can transform e-commerce transactions into structured sales, customer, and discount analysis for business decision-making.
