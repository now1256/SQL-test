# from절에 서브쿼리를 이용해서 먼저 일일 매출액 합계를 불러옴 
# 이때 서브쿼리안에 SELECT해오는 열이 해당 열을 선택하게 됌 
  
SELECT
  ROUND(AVG(sales),2) as avg_sales
from
  (
    SELECT
      SUM(total_bill) as sales
    FROM
      tips
    GROUP BY
      day
  )
