-- Creating table for daily_rider_2019
CREATE TABLE daily_rider_2019 AS
SELECT dr.trip_id,
      dr.bike_id,
      dr.start_time,
      dr.end_time,
      dr.from_station_id,
      dr.from_station_name,
      dr.to_station_id,
      dr.to_station_name,
      dr.trip_duration,
      dr.gender,
      dr.user_type,
      dr.birth_year,
      rl.rider_length,
      wd.week_name
FROM daily_ryder_2019 dr
      JOIN rider_length rl ON rl.trip_id = dr.trip_id
      JOIN weekly_days wd ON wd.trip_id = rl.trip_id -- Creating table for daily_rider_2020
      CREATE TABLE daily_rider_2020 AS
SELECT dr.ride_id,
      dr.rideable_type,
      dr.start_station_id,
      dr.start_station_name,
      dr.end_station_id,
      dr.end_station_name,
      dr.started_at,
      dr.ended_at,
      dr.start_lat,
      dr.end_lat,
      dr.start_lng,
      dr.end_lng,
      dr.member_casual,
      rl.rider_length,
      wr.week_name
FROM daily_ryder_2020 dr
      JOIN rider_lengths rl ON rl.ride_id = dr.ride_id
      JOIN weekly_rides wr ON rl.ride_id = wr.ride_id