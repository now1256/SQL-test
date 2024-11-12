# where절의 경우 집계함수를 사용할 수 없음 
# where절은 서브쿼리를 이용해서 해야 함 
SELECT
  *
FROM
  tips
WHERE
  total_bill > (
    SELECT
      AVG(total_bill)
    from
      tips
  )
