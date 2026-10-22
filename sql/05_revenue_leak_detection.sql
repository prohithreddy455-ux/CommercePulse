-- CommercePulse: Revenue Leak Detection
-- Flags orders for discount review; flags do not prove actual revenue loss.

SELECT
    o.order_id,
    o.order_date,
    o.order_status,

    SUM(oi.quantity * oi.unit_price) AS gross_value,

    SUM(
        oi.quantity * oi.unit_price * oi.discount / 100.0
    ) AS discount_amount,

    SUM(oi.quantity * oi.unit_price)
    - SUM(
        oi.quantity * oi.unit_price * oi.discount / 100.0
    ) AS net_revenue,

    CAST(
        SUM(oi.quantity * oi.unit_price * oi.discount / 100.0)
        / NULLIF(SUM(oi.quantity * oi.unit_price), 0) * 100
        AS DECIMAL(5,2)
    ) AS discount_percentage,

    CASE
        WHEN SUM(oi.quantity * oi.unit_price) = 0
            THEN 'Check: Zero order value'
        WHEN
            SUM(oi.quantity * oi.unit_price * oi.discount / 100.0)
            / NULLIF(SUM(oi.quantity * oi.unit_price), 0) >= 0.20
            THEN 'High discount: Review'
        WHEN
            SUM(oi.quantity * oi.unit_price * oi.discount / 100.0)
            / NULLIF(SUM(oi.quantity * oi.unit_price), 0) >= 0.10
            THEN 'Moderate discount: Monitor'
        ELSE 'Normal discount'
    END AS revenue_risk_flag

FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id

GROUP BY
    o.order_id,
    o.order_date,
    o.order_status

ORDER BY discount_percentage DESC;
