-- CommercePulse: Revenue Analysis

SELECT
    COUNT(DISTINCT o.order_id) AS completed_orders,
    SUM(oi.quantity) AS units_sold,
    CAST(
        SUM(
            oi.quantity * oi.unit_price
            * (1 - oi.discount / 100.0)
        ) AS DECIMAL(12,2)
    ) AS total_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed';