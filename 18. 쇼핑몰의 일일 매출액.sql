# where 조건절 and로 2개 조건 설정 
# join 대신 where절로 join 

SELECT
  DATE(order_purchase_timestamp) AS dt,
  SUM(payment_value) AS revenue_daily
FROM
  olist_orders_dataset as A,
  olist_order_payments_dataset AS B
WHERE
  A.order_id = B.order_id
  and DATE(order_purchase_timestamp) >= "2018-01-01"
GROUP BY
  DATE(order_purchase_timestamp);
