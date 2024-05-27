COPY(
      WITH stats AS (
            SELECT AVG(rider_length) AS mean_rider_length,
                  STDDEV(rider_length) AS stddev_rider_length,
                  AVG(trip_duration) AS mean_trip_duration,
                  STDDEV(trip_duration) AS stddev_trip_duration
            FROM daily_rider_2019
      ),
      outliers AS (
            SELECT dr.rider_length,
                  dr.trip_duration,
                  dr.user_type,
                  dr.week_name,
                  CASE
                        WHEN ABS(
                              (dr.rider_length - s.mean_rider_length) / s.stddev_rider_length
                        ) > 3
                        OR ABS(
                              (dr.trip_duration - s.mean_trip_duration) / s.stddev_trip_duration
                        ) > 3 THEN 1
                        ELSE 0
                  END AS is_outlier
            FROM daily_rider_2019 dr
                  CROSS JOIN stats s
      )
      SELECT rider_length,
            trip_duration,
            user_type,
            week_name
      FROM outliers
      WHERE is_outlier = 1
      ORDER BY rider_length,
            trip_duration
) TO '/Users/saquibhazari/Desktop/Ryder/Excel Datasets/rider_length_std.csv' WITH (FORMAT CSV, HEADER)