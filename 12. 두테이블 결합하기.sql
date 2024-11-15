# 두테이블을 join해서 가져옴 
# join 조건으로는 records의 event id , events의 id
# sport열의 golf라는 키워드가 있으면 가져옴 , 이때 golf이름을 가진 겹친 id가 있어서 distinct로 중복 제외

SELECT
  DISTINCT(athlete_id)
FROM
  records
  JOIN events
ON records.event_id = events.id
WHERE
  events.sport = 'Golf'
