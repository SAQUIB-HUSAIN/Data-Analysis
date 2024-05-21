CREATE TABLE daily_activity_sleep(
      id BIGINT NOT NULL,activitydate DATE,total_steps INT,total_distance FLOAT,tracker_distance FLOAT,log_active_distance FLOAT,very_active_distance FLOAT,mod_active_distance FLOAT,light_active_distance FLOAT,sedent_active_distance FLOAT,fairly_active_min INT,sedent_min INT,calories INT,total_sleep_record INT,total_min_sleep INT,total_time_bed INT
)

-- Creating copy path
COPY daily_activity_sleep
FROM '/Users/saquibhazari/Desktop/Fitbase Data/join_data/daily_sleep_activity.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8')