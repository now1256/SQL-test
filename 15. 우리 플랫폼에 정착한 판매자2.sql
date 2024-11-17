# 집계함수를 활용한 조건을 사용하려면 Having 절을 통해 조건 사용 

SELECT
  seller_id,
  count(DISTINCT(order_id)) as orders
FROM
  olist_order_items_dataset
WHERE
  price >= 50 
GROUP By
  seller_id
HAVING
 count(DISTINCT(order_id)) >=100
order BY orders DESC
