# upper 함수를 통해 대문자 출력
# SUBSTRING(열, 시작, 끝)을 통해 출력하는 글자의 수 제한 
# ORDER BY를 통해 DESC 내림차순 정렬
SELECT
  year,
  Upper(SUBSTRING(city, 1, 3)) AS city
FROM
  games
WHERE
  year >= 2000
ORDER BY year DESC
