# 서브쿼리 사용하기 , 서브쿼리는 select 하나만 가능 
# in으로 메인 column에 조건 추가 가능 
  
SELECT
  *
FROM
  tips as A
where
  day IN (
    SELECT
      day
    FROM
      tips
    GROUP by
      day
    HAVING
      sum(total_bill) >= 1500
  )
