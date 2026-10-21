-- CommercePulse: Customer Drop-Off Analysis

WITH customer_activity AS (
    SELECT
        c.customer_id,
        c.customer_name,
        COUNT(
            CASE
                WHEN o.order_status = 'Completed' THEN 1
            END
        ) AS completed_orders,
        MAX(
            CASE
                WHEN o.order_status = 'Completed'
                THEN o.order_date
            END
        ) AS last_purchase_date
    FROM customers c
    LEFT JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_id,
        c.customer_name
)
SELECT
    customer_id,
    customer_name,
    completed_orders,
    last_purchase_date,
    CASE
        WHEN completed_orders = 0
            THEN 'No completed purchases'
        WHEN last_purchase_date < '2026-07-01'
            THEN 'Possible drop-off'
        ELSE 'Recently active'
    END AS customer_status
FROM customer_activity
ORDER BY last_purchase_date;