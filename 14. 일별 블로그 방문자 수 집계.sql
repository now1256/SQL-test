# where에서 Between and를 통해 사이값 구할 수 있음
# 날짜에서 formating 해주면 됌 

SELECT
  event_date_kst as dt,
  count(DISTINCT (user_pseudo_id)) as users
FROM
  ga
where
  event_date_kst BETWEEN '2021-08-02' and '2021-08-09'
GROUP by
  event_date_kst
