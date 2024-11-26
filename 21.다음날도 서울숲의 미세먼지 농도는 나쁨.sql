# 다음 날짜를 추가해서 비교하는 쿼리 DATE(m1.measured_at, '+1 DAY')을 통해 할 수 있음 -> sql lite의 문법 mysql의 경우 DATE_ADD(m1.measured_at, INTERVER 1 DAY)
# 아무 조인을 해도 되지만 left join을 한 이유는 m1을 기준으로 join하기 위헤서 

SELECT
  m1.measured_at AS 'today',
  m2.measured_at AS 'next_day',
  m1.pm10 AS 'pm10',
  m2.pm10 AS 'next_pm10'
FROM
  measurements AS m1
  LEFT JOIN measurements AS m2 ON m2.measured_at = DATE(m1.measured_at, '+1 DAY')
WHERE
  m2.pm10 > m1.pm10
