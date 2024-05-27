CREATE TABLE weekly_rides AS
WITH week_days AS (
      SELECT ride_id,
      EXTRACT(DOW FROM ended_at) AS week_day
FROM daily_ryder_2020
)

SELECT ride_id,
      CASE
            WHEN week_day = '0' THEN 'Sunday'
            WHEN week_day = '1' THEN 'Monday'
            WHEN week_day = '2' THEN 'Tuesday'
            WHEN week_day = '3' THEN 'Wednesday'
            WHEN week_day = '4' THEN 'Thursday'
            WHEN week_day = '5' THEN 'Friday'
            ELSE 'Saturday'
      END AS week_name
FROM week_days


SELECT *
FROM weekly_rides
LIMIT 100

SELECT *
FROM rider_legths
LIMIT 100