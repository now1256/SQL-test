# group by를 day, time 을 통해 day와 time을 기준으로 집계 
# ORDER BY를 통해 정렬 이때 글자순으로 정렬의 경우 오름차순이 기본 
SELECT
  day,
  time,
  Round(AVG(tip), 2) AS avg_tip,
  Round(AVG(size), 2) AS avg_size
FROM
  tips
GROUP BY
  day,
  time
ORDER BY
  day,
  time
