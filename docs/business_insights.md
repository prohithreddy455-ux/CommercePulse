CommercePulse — Business Insights Report

1. Executive Summary

CommercePulse is a SQL-based e-commerce analytics project that examines revenue performance, customer activity, and discount-related risks using Microsoft SQL Server.

The objective is to transform transactional data into business insights that support better decision-making.

2. Revenue Performance

The revenue analysis returned the following results:

- Completed orders: 9
- Units sold: 14
- Total revenue after discounts: 10,007.00

Business insight: Tracking completed orders, units sold, and net revenue helps businesses understand sales performance.

Recommended action: Monitor these metrics over time to identify changes in sales volume and revenue.

3. Customer Activity

The customer analysis classifies customers into activity categories based on completed purchases and their last purchase dates.

The analysis identifies:

- Customers with no completed purchases
- Customers who may have dropped off
- Recently active customers

Business insight: Customer activity patterns can help identify customers who may need additional engagement.

Recommended action: Investigate inactive customers and consider appropriate retention campaigns. Validate the activity thresholds against real business requirements before using them operationally.

4. Discount and Revenue Risk Analysis

The revenue leak detection query calculates order-level gross value, discount amount, discount percentage, and a risk flag.

The query classifies discounts as:

- High discount: Review
- Moderate discount: Monitor
- Normal discount

Business insight: Discounts should be monitored to understand their effect on revenue and profitability.

Recommended action: Review higher-discount orders, verify promotional rules, and compare discount levels with profit margins before changing pricing policies.

5. Technical Implementation

The project uses:

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL joins and aggregations
- Common table expressions (CTEs)
- Conditional logic using CASE
- NULL handling and percentage calculations
- Git and GitHub for project version control

6. Limitations

This project uses sample data rather than a live production dataset. Its findings demonstrate analytical methods and do not establish actual financial losses or prove customer churn.

The customer activity threshold is a demonstration rule, not a validated churn model.

7. Future Improvements

- Test queries against edge cases and larger datasets.
- Add monthly revenue trends.
- Analyze product and category performance.
- Compare discounts with profit margins.
- Automate data quality checks.

Conclusion

CommercePulse demonstrates how SQL can turn e-commerce transaction data into structured revenue, customer, and discount-risk analysis. It provides a foundation for further data engineering and business analytics projects.
