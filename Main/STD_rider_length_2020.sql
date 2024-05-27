-- Finding std for the table 2020
WITH stats AS (
      SELECT AVG(rider_length) AS mean_rider_length,
            STDDEV(rider_length) AS stddev_rider_length
      FROM daily_rider_2020
),
outliers AS (
      SELECT dr.week_name,
            dr.member_casual,
            dr.rider_length,
            CASE
                  WHEN ABS(dr.rider_length - s.mean_rider_length) / s.stddev_rider_length > 3 THEN 1
                  ELSE 0
            END AS is_outlier
      FROM daily_rider_2020 dr
            JOIN stats s ON 1 = 1 -- Add a join condition here
)
SELECT week_name,
      rider_length,
      member_casual
FROM outliers
WHERE is_outlier = 1