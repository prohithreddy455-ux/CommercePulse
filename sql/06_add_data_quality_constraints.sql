-- CommercePulse: Data Quality Constraints
-- Enforces valid order item quantities, prices, and discounts.

USE CommercePulse;
GO

ALTER TABLE dbo.order_items
ADD CONSTRAINT CK_order_items_quantity_positive
CHECK (quantity > 0);
GO

ALTER TABLE dbo.order_items
ADD CONSTRAINT CK_order_items_unit_price_nonnegative
CHECK (unit_price >= 0);
GO

ALTER TABLE dbo.order_items
ADD CONSTRAINT CK_order_items_discount_range
CHECK (discount >= 0 AND discount <= 100);
GO
