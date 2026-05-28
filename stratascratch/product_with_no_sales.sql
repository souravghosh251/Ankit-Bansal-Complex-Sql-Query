SELECT dm.prod_sku_id,
       dm.market_name
FROM dim_product dm
LEFT JOIN fct_customer_sales cs
    ON dm.prod_sku_id = cs.prod_sku_id
WHERE cs.prod_sku_id IS NULL;