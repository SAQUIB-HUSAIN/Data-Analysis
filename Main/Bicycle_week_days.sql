CREATE TABLE rider_lengths AS

SELECT ride_id,
      ROUND(EXTRACT(EPOCH FROM (ended_at - started_at))) AS rider_length
FROM daily_ryder_2020


-- Weekdays from ended_at
SELECT ride_id,
      EXTRACT(DOW FROM ended_at) AS week_day
FROM daily_ryder_2020
LIMIT 100


-- Weekname from the week_day
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
FROM daily_ryder_2020
LIMIT 100
