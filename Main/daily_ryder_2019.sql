CREATE TABLE daily_ryder_2019(
      trip_id BIGINT NOT NULL,
      start_time TIMESTAMP WITH TIME ZONE,
      end_time TIMESTAMP WITH TIME ZONE,
      bike_id INT,
      trip_duration FLOAT,
      from_station_id INT,
      from_station_name VARCHAR(255),
      to_station_id INT,
      to_station_name VARCHAR(255),
      user_type VARCHAR(20),
      gender VARCHAR(10),
      birth_year INT
) DROP TABLE daily_ryder_2019 -- Copy the data path from the csv file Divvy_trips_2019.csv
COPY daily_ryder_2019
FROM '/Users/saquibhazari/Desktop/Ryder/Excel Datasets/Divvy_Trips_2019_cleaned.csv' WITH (
            FORMAT csv,
            HEADER true,
            DELIMITER ',',
            ENCODING 'UTF8'
      ) -- Create Table for divvy_trip_2020.csv
      CREATE TABLE daily_ryder_2020(
            ride_id VARCHAR(16) NOT NULL,
            rideable_type VARCHAR(20),
            started_at TIMESTAMP WITH TIME ZONE,
            ended_at TIMESTAMP WITH TIME ZONE,
            start_station_name VARCHAR(255),
            start_station_id INT,
            end_station_name VARCHAR(255),
            end_station_id INT,
            start_lat FLOAT,
            start_lng FLOAT,
            end_lat FLOAT,
            end_lng FLOAT,
            member_casual VARCHAR(20)
      ) -- Copy path from Divvy_trips_2020
      COPY daily_ryder_2020
FROM '/Users/saquibhazari/Desktop/Ryder/Excel Datasets/Divvy_Trips_2020_cleaned.csv' WITH (
            FORMAT csv,
            HEADER true,
            DELIMITER ',',
            ENCODING 'UTF8'
      )