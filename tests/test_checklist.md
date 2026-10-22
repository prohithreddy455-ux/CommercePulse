CommercePulse — SQL Test Checklist

1. Database Structure

- [x] Verified that all four database tables exist.
- [x] Confirmed sample data was inserted successfully.

2. Revenue Analysis

- [x] Verified gross value: 1060.00.
- [x] Verified discount amount: 53.00.
- [x] Verified net revenue: 1007.00.
- [x] Confirmed gross value minus discount equals net revenue.

3. Data Quality Checks

- [x] Checked for duplicate order IDs.
- [x] Checked for invalid order references.
- [x] Checked for invalid product references.
- [x] Checked for invalid quantities and prices.
- [x] Checked for discount percentages outside 0–100.

4. Customer and Revenue-Risk Analysis

- [x] Executed the customer analysis query.
- [x] Executed the revenue-risk detection query.
- [x] Added net revenue to the revenue-risk query.

5. Limitations

- [x] Documented that the project uses sample data.
- [x] Clarified that discount risk flags indicate orders for review, not proven financial losses.

Test Notes

The revenue calculation returned a gross value of 1060.00, a discount amount of 53.00, and net revenue of 1007.00.

The consolidated data-quality query was executed. Confirm the result grid shows zero issues for all five checks before treating those checks as passed.

This project demonstrates SQL-based e-commerce analysis using sample data. Results should not be interpreted as verified production business outcomes.
