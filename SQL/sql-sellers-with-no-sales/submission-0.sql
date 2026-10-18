SELECT s.seller_name
FROM seller AS s
WHERE NOT EXISTS (
    SELECT 1
    FROM orders as o
    WHERE o.seller_id = s.seller_id
    AND o.sale_date >= '2020-01-01'
    AND o.sale_date < '2021-01-01'
)
ORDER BY s.seller_name ASC;