# 집계함수 AVG , variance 사용 
# ROUND를 통해 몇자리까지 올릴지 결정 -> ROUND말고도 많아서 정리해야함 
# quarter의 열의 값을 기준으로 그룹핑해서 열정리 
SELECT
  quartet,
  Round(AVG(x), 2) AS x_mean,
  Round(variance(x), 2) AS x_var,
  Round(AVG(y), 2) AS y_mean,
  Round(variance(y), 2) AS y_var
FROM
  points
GROUP BY
  quartet
