# Date 함수를 통해 'yy-mm-dd' formating가능 이거토대로 조건절에서 조건 넣을 수 있음 
# ISNULL을 통해 columns안에 데이터 없는거 확인 
SELECT
  Date(order_delivered_carrier_date) as delivered_carrier_date,
  count(DISTINCT (order_id)) AS orders
FROM
  olist_orders_dataset
where
  Date(order_delivered_carrier_date) BETWEEN '2017-01-01' and '2017-01-31'
  and order_delivered_customer_date ISNULL
GROUP By
  Date(order_delivered_carrier_date)
order BY
  delivered_carrier_date;
