-- Creating week_days column
CREATE TABLE weekly_days AS WITH week_days AS (
      SELECT trip_id,
            EXTRACT(
                  DOW
                  FROM end_time
            ) AS week_day
      FROM daily_ryder_2019
)
SELECT trip_id,
      CASE
            WHEN week_day = 0 THEN 'Sunday'
            WHEN week_day = 1 THEN 'Monday'
            WHEN week_day = 2 THEN 'Tuesday'
            WHEN week_day = 3 THEN 'Wednesday'
            WHEN week_day = 4 THEN 'Thursday'
            WHEN week_day = 5 THEN 'Friday'
            ELSE 'Saturday'
      END AS week_name
FROM week_days