# DATE 함수를 통해 yy-mm-dd를 인덱싱 
# MIN과 MAX를 통해 첫날과 마지막 날을 SELECT함 
SELECT
  MIN(DATE(order_purchase_timestamp)) AS first_order_date,
  MAX(DATE(order_purchase_timestamp)) AS last_order_date
FROM
  olist_orders_dataset
