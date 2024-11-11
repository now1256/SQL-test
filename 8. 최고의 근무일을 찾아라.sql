# 제일 높은 팁을 받는 날 하루만 출력 
# 따라서 GROUP BY를 통해 daily tip을 출력하고 
# 오름차순으로 정렬후 LIMIT 1 을 통해 하나만 출력하게 한다
  
SELECT
  day,
  SUM(tip) as tip_daily
FROM
  tips
GROUP BY 
day
ORDER BY tip_daily DESC
LIMIT 1 
