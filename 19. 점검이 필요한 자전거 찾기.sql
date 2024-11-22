
SELECT
  bike_id
FROM
  rental_history
WHERE
  Date(return_at) BETWEEN "2021-01-01" AND "2021-01-31"
Group BY
  bike_id
HAVING
  sum(distance) > 50000;
