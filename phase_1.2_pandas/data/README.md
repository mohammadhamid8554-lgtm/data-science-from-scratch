# Spine Dataset — Roadmap v2.3

A synthetic, India-context retail dataset created for learning data science. No real people or customer records are used.

## Tables
- `orders.csv` — main table; 500 raw rows
- `customers.csv` — customer dimension table
- `products.csv` — product dimension table

## Relationships
- `orders.customer_id` → `customers.customer_id`
- `orders.product_id` → `products.product_id`

These are intended relationships, not guaranteed clean foreign keys. Inspect and validate them.

## Columns

### orders.csv
- `order_id`: order identifier
- `customer_id`: customer key
- `product_id`: product key
- `order_date`: order date (raw values may need parsing)
- `quantity`: units in the order
- `unit_price`: price per unit at order time
- `discount_pct`: discount percentage
- `payment_method`: payment channel
- `order_status`: order state
- `shipping_city`: delivery city

### customers.csv
- `customer_id`: customer key
- `customer_name`: customer name (synthetic)
- `email`: synthetic email/contact field
- `city`: customer city
- `signup_date`: date the customer joined
- `customer_segment`: customer segment

### products.csv
- `product_id`: product key
- `product_name`: product name
- `category`: product category
- `standard_price`: current catalog price

## Important
This is intentionally a **raw practice dataset**, not a cleaned dataset. It contains realistic data-quality challenges such as missing values, inconsistent text, malformed dates, unusual numeric values, duplicate records/keys, and invalid references. The exact rows are not listed here: finding, documenting, and deciding how to handle them is part of your training.

For Topic 12, do not clean everything at once. Follow the lesson's specific task, inspect only the columns needed, and validate the result. Keep a raw copy unchanged.
