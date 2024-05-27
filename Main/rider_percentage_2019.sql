WITH week_days AS (
      SELECT week_name
      FROM daily_rider_2019
),
rider_counts AS (
      SELECT week_name,
            COUNT(*) rider_count
      FROM weekly_days
      GROUP BY week_name
),
total_rider_counts AS (
      SELECT SUM(rider_count) AS total_rider_count
      FROM rider_counts
)
SELECT rc.week_name,
      rc.rider_count,
      ROUND(
            (rc.rider_count / trc.total_rider_count * 100),
            2
      ) AS rider_percentage
FROM rider_counts rc,
      total_rider_counts trc
ORDER BY rider_percentage ASC