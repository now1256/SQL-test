# 조건문 where을 통해 해당 열에서 홀수 명만 보여주기 
SELECT
  *
FROM
  tips
WHERE
  size % 2 != 0
