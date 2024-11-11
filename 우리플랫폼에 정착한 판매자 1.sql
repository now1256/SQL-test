# order id의 경우 unqiue하지 않음 하나의 상품 여러번 구매하면 같은 order id가 사용됌 
# DISTINCT를 통해 order id 의 중복을 제거하고 count함 
# HAVING 을 통해 GROUP BY의 조건을 추가 
# where은 기본적인 조건절로서 우선적으로 모든 필드를 조건에 둘 수 있음
# having은 group by 된 이후 특정한 필드로 그룹화 되어진 새로운 테이블에 조건을 줄 수 있음
# sql 실행순서 FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT
SELECT
  seller_id,
  COUNT(DISTINCT (order_id)) AS orders
FROM
  olist_order_items_dataset
GROUP BY
  seller_id
HAVING
  orders >= 100
