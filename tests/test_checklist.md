CommercePulse — SQL Test Checklist

1. Database Structure

- [ ] Verify that the Customers table exists.
- [ ] Verify that the Products table exists.
- [ ] Verify that the Orders table exists.
- [ ] Verify that the Order Items table exists.

2. Sample Data

- [ ] Confirm that sample records were inserted successfully.
- [ ] Check that order items reference valid orders and products.
- [ ] Check for unexpected NULL values in important columns.

3. Revenue Analysis

- [ ] Verify that only completed orders are included where required.
- [ ] Check that revenue calculations account for discounts correctly.
- [ ] Compare query totals against manually calculated sample records.

4. Customer Analysis

- [ ] Verify that customers without completed purchases are handled correctly.
- [ ] Check customer activity classifications against sample dates.
- [ ] Confirm that date-based rules behave as expected.

5. Revenue Risk Detection

- [ ] Verify gross value and discount calculations.
- [ ] Test discount thresholds at their boundary values.
- [ ] Confirm that risk flags identify orders for review, not proven financial losses.

Test Status

These checks are planned validation steps. Mark each item complete only after performing and verifying the corresponding test.
